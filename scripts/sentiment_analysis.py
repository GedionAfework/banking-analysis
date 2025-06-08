import os
import pandas as pd
from transformers import pipeline
from datetime import datetime
import logging

logging.basicConfig(
    filename="sentiment.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

RAW_DATA_PATH = "data/raw"
PROCESSED_DATA_PATH = "data/processed"
os.makedirs(PROCESSED_DATA_PATH, exist_ok=True)

all_reviews = []
for file in os.listdir(RAW_DATA_PATH):
    if file.endswith(".csv"):
        df = pd.read_csv(os.path.join(RAW_DATA_PATH, file))
        all_reviews.append(df)

data = pd.concat(all_reviews, ignore_index=True)

data.dropna(subset=["review_text", "rating"], inplace=True)
data.drop_duplicates(subset=["review_id"], keep="first", inplace=True)
data = data[data["review_text"].str.len() > 10]
logging.info(f"Loaded and cleaned {len(data)} reviews")

sentiment_model = pipeline(
    "sentiment-analysis",
    model="distilbert-base-uncased-finetuned-sst-2-english",
    framework="pt",
)


def corrected_sentiment(row):
    result = sentiment_model(row["review_text"][:512])[0]
    model_label = result["label"]
    model_score = result["score"]

    if row["rating"] >= 4 and model_label == "NEGATIVE":
        return "POSITIVE", model_score
    elif row["rating"] <= 2 and model_label == "POSITIVE":
        return "NEGATIVE", model_score
    return model_label, model_score


data[["sentiment_label", "sentiment_score"]] = data.apply(
    corrected_sentiment, axis=1, result_type="expand"
)

sentiment_summary = (
    data.groupby(["bank_name", "rating", "sentiment_label"])
    .size()
    .unstack(fill_value=0)
)
logging.info("Sentiment summary:\n" + str(sentiment_summary))

timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_file = os.path.join(PROCESSED_DATA_PATH, f"sentiment_results_{timestamp}.csv")
data.to_csv(output_file, index=False)
summary_file = os.path.join(PROCESSED_DATA_PATH, f"sentiment_summary_{timestamp}.csv")
sentiment_summary.to_csv(summary_file)

logging.info(f"Sentiment analysis complete. Saved to {output_file} and  {summary_file}")
