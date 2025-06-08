import os
import pandas as pd
import spacy
from sklearn.feature_extraction.text import TfidfVectorizer
from collections import defaultdict
import logging
from datetime import datetime

logging.basicConfig(
    filename="thematic.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

PROCESSED_DATA_PATH = "data/processed"
os.makedirs(PROCESSED_DATA_PATH, exist_ok=True)

nlp = spacy.load("en_core_web_sm")

thematic_files = [
    f for f in os.listdir(PROCESSED_DATA_PATH) if f.startswith("sentiment_results_")
]
latest_file = max(
    thematic_files, key=lambda x: os.path.getctime(os.path.join(PROCESSED_DATA_PATH, x))
)
data = pd.read_csv(os.path.join(PROCESSED_DATA_PATH, latest_file))
logging.info(f"Loaded {len(data)} reviews from {latest_file}")


def preprocess_text(text):
    doc = nlp(text.lower())
    tokens = [
        token.lemma_
        for token in doc
        if not token.is_stop and not token.is_punct and len(token) > 2
    ]
    return " ".join(tokens)


data["cleaned_text"] = data["review_text"].apply(preprocess_text)


def extract_keywords(texts, top_n=10):
    vectorizer = TfidfVectorizer(ngram_range=(1, 2), max_features=100)
    tfidf_matrix = vectorizer.fit_transform(texts)
    feature_names = vectorizer.get_feature_names_out()
    scores = tfidf_matrix.sum(axis=0).A1
    keyword_scores = sorted(
        zip(feature_names, scores), key=lambda x: x[1], reverse=True
    )[:top_n]
    return [kw[0] for kw in keyword_scores]


keywords_by_bank = {}
for bank in data["bank_name"].unique():
    bank_reviews = data[data["bank_name"] == bank]["cleaned_text"]
    keywords = extract_keywords(bank_reviews, top_n=20)
    keywords_by_bank[bank] = keywords
    logging.info(f"Keywords for {bank}: {keywords}")

THEMES = {
    "Account Access": ["login", "sign in", "authentication", "fingerprint", "password"],
    "Transaction Performance": [
        "transfer",
        "slow",
        "loading",
        "payment",
        "transaction",
    ],
    "User Interface": ["ui", "interface", "design", "navigation", "easy"],
    "Reliability": ["crash", "bug", "error", "freeze", "stuck"],
    "Customer Support": ["support", "help", "response", "service", "contact"],
    "Feature Requests": ["feature", "add", "option", "request", "need"],
}


def assign_themes(text):
    themes = []
    doc = nlp(text.lower())
    tokens = [token.text for token in doc]
    for theme, keywords in THEMES.items():
        if any(keyword in tokens for keyword in keywords):
            themes.append(theme)
    return themes if themes else ["Other"]


data["themes"] = data["cleaned_text"].apply(assign_themes)

timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_file = os.path.join(PROCESSED_DATA_PATH, f"thematic_results_{timestamp}.csv")
data[
    [
        "review_id",
        "review_text",
        "sentiment_label",
        "sentiment_score",
        "themes",
        "bank_name",
    ]
].to_csv(output_file, index=False)
logging.info(f"Thematic analysis complete. Saved to {output_file}")

theme_summary = defaultdict(lambda: defaultdict(int))
for _, row in data.iterrows():
    for theme in row["themes"]:
        theme_summary[row["bank_name"]][theme] += 1

theme_df = pd.DataFrame(theme_summary).fillna(0).astype(int)
theme_file = os.path.join(PROCESSED_DATA_PATH, f"theme_summary_{timestamp}.csv")
theme_df.to_csv(theme_file)
logging.info(f"Theme summary:\n{theme_df}")
