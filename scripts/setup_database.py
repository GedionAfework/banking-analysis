import cx_Oracle
import pandas as pd
import os
import logging
from datetime import datetime

logging.basicConfig(
    filename="database_setup.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

USERNAME = "system"
PASSWORD = "12345678"
HOST = "localhost"
PORT = "1521"
SERVICE_NAME = "XEPDB1"

PROCESSED_DATA_PATH = "data/processed"

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


def create_tables():
    """Create Banks and Reviews tables in the bank_reviews database."""
    connection = create_connection()
    cursor = connection.cursor()

    try:
        cursor.execute(
            """
            CREATE TABLE Banks (
                bank_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                bank_name VARCHAR2(100) UNIQUE NOT NULL,
                app_id VARCHAR2(100) UNIQUE NOT NULL
            )
        """
        )
        logging.info("Banks table created successfully.")
        cursor.execute(
            """
            CREATE TABLE Reviews (
                review_id VARCHAR2(100) PRIMARY KEY,
                bank_id NUMBER,
                review_text CLOB,
                rating NUMBER(1) CHECK (rating BETWEEN 1 AND 5),
                review_date DATE,
                sentiment_label VARCHAR2(20),
                sentiment_score NUMBER(5,4),
                themes VARCHAR2(500),
                source VARCHAR2(50),
                CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES Banks(bank_id)
            )
        """
        )
        logging.info("Reviews table created successfully.")

        connection.commit()
    except cx_Oracle.Error as error:
        logging.error(f"Error creating tables: {error}")
        raise
    finally:
        cursor.close()
        connection.close()
        logging.info("Database connection closed.")


if __name__ == "__main__":
    create_tables()
