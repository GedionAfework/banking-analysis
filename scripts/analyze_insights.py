import cx_Oracle
import pandas as pd
import os
import logging
from collections import Counter
import json

logging.basicConfig(
    filename="analysis.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

USERNAME = "system"
PASSWORD = "12345678"
HOST = "localhost"
PORT = "1521"
SERVICE_NAME = "XEPDB1"

OUTPUT_PATH = "data/processed"
os.makedirs(OUTPUT_PATH, exist_ok=True)

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


def get_sentiment_distribution(cursor):
    """Calculate sentiment distribution by bank."""
    cursor.execute(
        """
        SELECT b.bank_name, r.sentiment_label, COUNT(*) as count
        FROM Reviews r
        JOIN Banks b ON r.bank_id = b.bank_id
        GROUP BY b.bank_name, r.sentiment_label
    """
    )
    rows = cursor.fetchall()
    df = pd.DataFrame(rows, columns=["bank_name", "sentiment_label", "count"])
    return df.pivot_table(
        index="bank_name", columns="sentiment_label", values="count", fill_value=0
    )


def get_theme_distribution(cursor):
    """Calculate theme distribution by bank."""
    cursor.execute(
        """
        SELECT b.bank_name, r.themes
        FROM Reviews r
        JOIN Banks b ON r.bank_id = b.bank_id
        WHERE r.themes IS NOT NULL
    """
    )
    rows = cursor.fetchall()
    theme_counts = {}
    for bank_name, themes in rows:
        if themes:
            theme_list = (
                json.loads(themes.replace("'", '"'))
                if themes.startswith("[")
                else [themes]
            )
            if bank_name not in theme_counts:
                theme_counts[bank_name] = Counter()
            theme_counts[bank_name].update(theme_list)
    data = []
    for bank_name, counts in theme_counts.items():
        for theme, count in counts.items():
            data.append([bank_name, theme, count])
    return pd.DataFrame(data, columns=["bank_name", "theme", "count"]).pivot_table(
        index="bank_name", columns="theme", values="count", fill_value=0
    )


def get_sentiment_vs_rating(cursor):
    """Analyze sentiment vs. rating distribution."""
    cursor.execute(
        """
        SELECT b.bank_name, r.sentiment_label, r.rating, COUNT(*) as count
        FROM Reviews r
        JOIN Banks b ON r.bank_id = b.bank_id
        GROUP BY b.bank_name, r.sentiment_label, r.rating
    """
    )
    return pd.DataFrame(
        cursor.fetchall(), columns=["bank_name", "sentiment_label", "rating", "count"]
    )


def main():
    connection = create_connection()
    cursor = connection.cursor()

    try:
        sentiment_df = get_sentiment_distribution(cursor)
        sentiment_df.to_csv(os.path.join(OUTPUT_PATH, "sentiment_distribution.csv"))
        logging.info("Saved sentiment distribution to sentiment_distribution.csv")
        theme_df = get_theme_distribution(cursor)
        theme_df.to_csv(os.path.join(OUTPUT_PATH, "theme_distribution.csv"))
        logging.info("Saved theme distribution to theme_distribution.csv")
        rating_df = get_sentiment_vs_rating(cursor)
        rating_df.to_csv(os.path.join(OUTPUT_PATH, "sentiment_vs_rating.csv"))
        logging.info("Saved sentiment vs. rating to sentiment_vs_rating.csv")

    except cx_Oracle.Error as error:
        logging.error(f"Error during analysis: {error}")
        raise
    finally:
        cursor.close()
        connection.close()
        logging.info("Database connection closed.")


if __name__ == "__main__":
    main()
