import cx_Oracle
import os
import logging
from datetime import datetime

logging.basicConfig(
    filename="sql_dump.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

USERNAME = "system"
PASSWORD = "12345678"
HOST = "localhost"
PORT = "1521"
SERVICE_NAME = "XEPDB1"

DUMP_PATH = "sql_dumps"
os.makedirs(DUMP_PATH, exist_ok=True)

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


def export_sql_dump():
    """Export database schema and data as SQL dump."""
    connection = create_connection()
    cursor = connection.cursor()

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    dump_file = os.path.join(DUMP_PATH, f"bank_reviews_dump_{timestamp}.sql")

    try:
        with open(dump_file, "w", encoding="utf-8") as f:
            f.write("-- Banks Table Schema\n")
            f.write("CREATE TABLE Banks (\n")
            f.write("    bank_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,\n")
            f.write("    bank_name VARCHAR2(100) UNIQUE NOT NULL,\n")
            f.write("    app_id VARCHAR2(100) UNIQUE NOT NULL\n")
            f.write(");\n\n")

            f.write("-- Reviews Table Schema\n")
            f.write("CREATE TABLE Reviews (\n")
            f.write("    review_id VARCHAR2(100) PRIMARY KEY,\n")
            f.write("    bank_id NUMBER,\n")
            f.write("    review_text CLOB,\n")
            f.write("    rating NUMBER(1) CHECK (rating BETWEEN 1 AND 5),\n")
            f.write("    review_date DATE,\n")
            f.write("    sentiment_label VARCHAR2(20),\n")
            f.write("    sentiment_score NUMBER(5,4),\n")
            f.write("    themes VARCHAR2(500),\n")
            f.write("    source VARCHAR2(50),\n")
            f.write(
                "    CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES Banks(bank_id)\n"
            )
            f.write(");\n\n")
            f.write("-- Banks Data\n")
            cursor.execute("SELECT bank_id, bank_name, app_id FROM Banks")
            for row in cursor:
                f.write(
                    f"INSERT INTO Banks (bank_id, bank_name, app_id) VALUES ({row[0]}, '{row[1]}', '{row[2]}');\n"
                )
            f.write("COMMIT;\n\n")
            f.write("-- Reviews Data\n")
            cursor.execute(
                """
                SELECT review_id, bank_id, review_text, rating, TO_CHAR(review_date, 'YYYY-MM-DD'),
                       sentiment_label, sentiment_score, themes, source
                FROM Reviews
            """
            )
            for row in cursor:
                review_text = row[2].read() if row[2] else "NULL"
                if review_text != "NULL":
                    review_text = review_text.replace("'", "''")
                    review_text = f"'{review_text}'"
                f.write(
                    f"""INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '{row[0]}', {row[1]}, {review_text}, {row[3]},
                    TO_DATE('{row[4]}', 'YYYY-MM-DD'), '{row[5]}', {row[6]},
                    '{row[7]}', '{row[8]}'
                );\n"""
                )
            f.write("COMMIT;\n")

        logging.info(f"SQL dump exported to {dump_file}")
    except cx_Oracle.Error as error:
        logging.error(f"Error exporting SQL dump: {error}")
        raise
    finally:
        cursor.close()
        connection.close()
        logging.info("Database connection closed.")


if __name__ == "__main__":
    export_sql_dump()
