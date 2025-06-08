from google_play_scraper import Sort, reviews
import csv
from datetime import datetime
import logging
import os

logging.basicConfig(
    filename="scraper.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

BANK_APPS = {
    "com.combanketh.mobilebanking": "Commercial Bank of Ethiopia",
    "com.boa.boaMobileBanking": "Bank of Abyssinia",
    "com.dashen.dashensuperapp": "Dashen Bank",
}

RAW_DATA_PATH = "data/raw"
os.makedirs(RAW_DATA_PATH, exist_ok=True)


def scrape_play_store_reviews():
    for app_id, bank_name in BANK_APPS.items():
        results, _ = reviews(
            app_id,
            lang="en",
            country="us",
            sort=Sort.NEWEST,
            count=500,
            filter_score_with=None,
        )

        if len(results) < 400:
            logging.warning(
                f"Only {len(results)} reviews collected for {bank_name}. Target is 400+."
            )

        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = os.path.join(
            RAW_DATA_PATH, f'{bank_name.replace(" ", "_")}_reviews_{timestamp}.csv'
        )

        with open(filename, mode="w", newline="", encoding="utf-8") as file:
            writer = csv.DictWriter(
                file,
                fieldnames=[
                    "review_id",
                    "review_text",
                    "rating",
                    "date",
                    "bank_name",
                    "source",
                ],
            )
            writer.writeheader()

            for entry in results:
                writer.writerow(
                    {
                        "review_id": entry["reviewId"],
                        "review_text": entry["content"],
                        "rating": entry["score"],
                        "date": entry["at"].strftime("%Y-%m-%d"),
                        "bank_name": bank_name,
                        "source": "Google Play",
                    }
                )

        logging.info(f"Saved {len(results)} reviews for {bank_name} to {filename}")


if __name__ == "__main__":
    scrape_play_store_reviews()
