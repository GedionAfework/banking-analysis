import cx_Oracle
import pandas as pd
import os
import logging
from datetime import datetime

logging.basicConfig(
    filename="data_insertion.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

USERNAME = "system"
PASSWORD = "12345678"
HOST = "localhost"
PORT = "1521"
SERVICE_NAME = "XEPDB1"

PROCESSED_DATA_PATH = "data/processed"

BANK_APPS = {
    "com.combanketh.mobilebanking": "Commercial Bank of Ethiopia",
    "com.boa.boaMobileBanking": "Bank of Abyssinia",
    "com.dashen.dashensuperapp": "Dashen Bank",
}

dsn = f"{HOST}:{PORT}/{SERVICE_NAME}"


def create_connection():
    """Create a connection to Oracle database."""
    try:
        connection = cx_Oracle.connect(user=USERNAME, password=PASSWORD, dsn=dsn)
        logging.info("Connected to Oracle database successfully.")
        return connection
    except cx_Oracle.Error as error:
        logging.error(f"Error connecting to Oracle: {error}")
        raise


def insert_banks(connection):
    """Insert bank data into Banks table, skipping duplicates."""
    cursor = connection.cursor()
    try:
        for app_id, bank_name in BANK_APPS.items():
            cursor.execute(
                """
                SELECT COUNT(*) FROM Banks 
                WHERE bank_name = :1 OR app_id = :2
            """,
                (bank_name, app_id),
            )
            exists = cursor.fetchone()[0]

            if exists == 0:
                cursor.execute(
                    """
                    INSERT INTO Banks (bank_name, app_id)
                    VALUES (:1, :2)
                """,
                    (bank_name, app_id),
                )
                logging.info(f"Inserted bank: {bank_name}")
            else:
                logging.info(f"Skipped bank: {bank_name} (already exists)")

        connection.commit()
        logging.info("Bank insertion process completed.")
    except cx_Oracle.Error as error:
        logging.error(f"Error inserting into Banks: {error}")
        raise
    finally:
        cursor.close()


def get_bank_id(cursor, bank_name):
    """Retrieve bank_id for a given bank_name."""
    cursor.execute("SELECT bank_id FROM Banks WHERE bank_name = :1", (bank_name,))
    result = cursor.fetchone()
    return result[0] if result else None


def insert_reviews(connection, data):
    """Insert review data into Reviews table, skipping duplicates."""
    cursor = connection.cursor()
    try:
        inserted_count = 0
        for _, row in data.iterrows():
            bank_id = get_bank_id(cursor, row["bank_name"])
            if not bank_id:
                logging.warning(
                    f"No bank_id found for {row['bank_name']}. Skipping review."
                )
                continue
            cursor.execute(
                """
                SELECT COUNT(*) FROM Reviews 
                WHERE review_id = :1
            """,
                (row["review_id"],),
            )
            exists = cursor.fetchone()[0]

            if exists == 0:
                cursor.execute(
                    """
                    INSERT INTO Reviews (
                        review_id, bank_id, review_text, rating, review_date,
                        sentiment_label, sentiment_score, themes, source
                    )
                    VALUES (:1, :2, :3, :4, TO_DATE(:5, 'YYYY-MM-DD'), :6, :7, :8, :9)
                """,
                    (
                        row["review_id"],
                        bank_id,
                        row["review_text"],
                        row["rating"],
                        row["date"],
                        row["sentiment_label"],
                        row["sentiment_score"],
                        str(row["themes"]),
                        row["source"],
                    ),
                )
                inserted_count += 1
            else:
                logging.info(f"Skipped review_id: {row['review_id']} (already exists)")

        connection.commit()
        logging.info(f"Inserted {inserted_count} new reviews into Reviews table.")
    except cx_Oracle.Error as error:
        logging.error(f"Error inserting into Reviews: {error}")
        raise
    finally:
        cursor.close()


def main():
    thematic_files = [
        f for f in os.listdir(PROCESSED_DATA_PATH) if f.startswith("thematic_results_")
    ]
    if not thematic_files:
        logging.error("No thematic results file found.")
        raise FileNotFoundError("No thematic results file found.")

    latest_file = max(
        thematic_files,
        key=lambda x: os.path.getctime(os.path.join(PROCESSED_DATA_PATH, x)),
    )
    data = pd.read_csv(os.path.join(PROCESSED_DATA_PATH, latest_file))
    logging.info(f"Loaded {len(data)} reviews from {latest_file}")

    connection = create_connection()

    try:
        insert_banks(connection)
        insert_reviews(connection, data)

    finally:
        connection.close()
        logging.info("Database connection closed.")


if __name__ == "__main__":
    main()
