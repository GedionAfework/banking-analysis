Ethiopian Banks Reviews Analysis
Overview
This project analyzes user reviews for mobile banking apps of Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank to improve customer retention and satisfaction. It includes scraping reviews, sentiment analysis, thematic analysis, and visualizations.
Setup

Clone the repository: git clone <repo-url>
Create virtual environment: python -m venv venv
Activate virtual environment: source venv/bin/activate (Windows: venv\Scripts\activate)
Install dependencies: pip install -r requirements.txt
Download spaCy model: python -m spacy download en_core_web_sm
Run scripts in scripts/ for scraping, sentiment analysis, thematic analysis, and visualization.

Methodology

Data Collection: Scrape 400+ reviews per bank using google-play-scraper.
Preprocessing: Clean duplicates, normalize dates, save as CSV.
Sentiment Analysis: Use DistilBERT with rating-based correction.
Thematic Analysis: Extract keywords with spaCy, cluster into themes.
Visualization: Generate bar charts for sentiment and themes.

Directory Structure

data/raw/: Raw review CSVs.
data/processed/: Processed CSVs with sentiment and themes.
scripts/: Python scripts for scraping, analysis, and visualization.
notebooks/: Exploratory Jupyter notebooks.
visualizations/: PNG files for charts.

Usage

Run scrape_reviews.py to collect reviews.
Run sentiment_analysis.py for sentiment labeling.
Run thematic_analysis.py for thematic analysis.
Run visualization.py for charts.
