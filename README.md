Ethiopian Banks Mobile App Review Analysis
This project analyzes user reviews for the mobile banking apps of Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank, sourced from the Google Play Store. The goal is to identify user satisfaction drivers and pain points to improve customer retention, enhance app features, and streamline complaint management. The project includes data scraping, preprocessing, sentiment analysis, thematic analysis, database storage in Oracle, visualizations (bar charts and word clouds), and a comprehensive report.
Table of Contents

Project Overview
Repository Structure
Setup Instructions
Methodology
Usage
Results and Visualizations
Scenarios Addressed
Key Performance Indicators (KPIs)
Contributing
References
License

Project Overview
Developed by Gedion Mekbeb Afework for Omega Consultancy, this project analyzes over 1200 user reviews (400+ per bank) to provide actionable insights for CBE, BOA, and Dashen Bank. Key objectives include:

Retaining Users: Address performance issues like slow transfers (CBE: 4.4 stars, BOA: 2.8 stars, Dashen: 4.0 stars).
Enhancing Features: Identify user-requested features like fingerprint login.
Managing Complaints: Mitigate issues such as login errors and app crashes.

The project uses Python with a virtual environment for dependency management, leveraging libraries like google-play-scraper, pandas, transformers, spacy, scikit-learn, matplotlib, seaborn, wordcloud, and cx*Oracle. Visualizations are generated in a Jupyter notebook, data is stored in an Oracle database, and a two-page LaTeX report summarizes findings.
Repository Structure
banking-analysis/
├── .gitignore
├── requirements.txt
├── README.md
├── data/
│ ├── raw/ # Raw review CSVs (e.g., Commercial_Bank_of_Ethiopia_reviews*_.csv)
│ ├── processed/ # Processed CSVs (sentiment*results*_.csv, thematic*results*_.csv)
├── scripts/
│ ├── scrape*reviews.py # Scrapes reviews from Google Play Store
│ ├── sentiment_analysis.py # Performs sentiment analysis with DistilBERT
│ ├── thematic_analysis.py # Extracts keywords and clusters themes
│ ├── setup_database.py # Creates Oracle database schema (Banks, Reviews tables)
│ ├── insert_data.py # Inserts data into Oracle tables
│ ├── export_sql_dump.py # Exports Oracle database as SQL dump
│ ├── verify_database.py # Verifies Oracle database setup and data
├── notebooks/
│ ├── visualization.ipynb # Generates bar charts and word clouds
├── visualizations/ # PNG outputs (sentiment_distribution*_.png, wordcloud*\*.png)
├── sql_dumps/ # SQL dumps (bank_reviews_dump*\*.sql)
├── reports/
│ ├── report.tex # LaTeX source for two-page report
│ ├── report.pdf # Compiled report PDF
├── scraper.log # Log for scraping
├── sentiment.log # Log for sentiment analysis
├── thematic.log # Log for thematic analysis
├── database_setup.log # Log for database setup
├── data_insertion.log # Log for data insertion
├── sql_dump.log # Log for SQL dump export
├── verify_database.log # Log for database verification

Setup Instructions

Clone the Repository:
git clone https://github.com/GedionAfework/banking-analysis.git
cd banking-analysis

Create and Activate Virtual Environment:
python -m venv venv
source venv/bin/activate # Windows: .\venv\Scripts\activate

Install Dependencies:
pip install -r requirements.txt
python -m spacy download en_core_web_sm

Install Oracle XE:

Download and install Oracle Database Express Edition (XE) from oracle.com.
Configure credentials (username, password, host: localhost, port: 1521, service name: XE) in setup_database.py, insert_data.py, export_sql_dump.py, and verify_database.py.

Install LaTeX (for report compilation):

Install TeX Live from tug.org/texlive.
Verify installation:latexmk --version

Initialize Git (if contributing):
git checkout main
git pull origin main

Methodology

Data Collection:

Scraped 400+ reviews per bank using google-play-scraper for CBE (com.combanketh.mobilebanking), BOA (com.boa.boaMobileBanking), and Dashen (com.dashen.dashensuperapp).
Saved as CSVs in data/raw/.

Preprocessing:

Removed duplicates (using review_id), filtered reviews (<10 characters), normalized dates to YYYY-MM-DD, and ensured <5% missing data.
Output: Cleaned CSVs in data/raw/.

Sentiment Analysis:

Used DistilBERT (distilbert-base-uncased-finetuned-sst-2-english) with rating-based correction (e.g., 4–5 stars labeled positive if misclassified).
Saved results in data/processed/sentiment*results*_.csv and sentiment*summary*_.csv.

Thematic Analysis:

Extracted keywords with spaCy and TF-IDF, clustered into themes (e.g., Account Access, Transaction Performance).
Saved in data/processed/thematic*results*_.csv and theme*summary*_.csv.

Database Storage:

Setup: Created bank_reviews database with Banks and Reviews tables using Oracle XE (setup_database.py).
Banks: bank_id (PK), bank_name (unique), app_id (unique).
Reviews: review_id (PK), bank_id (FK), review_text (CLOB), rating, review_date, sentiment_label, sentiment_score, themes, source.

Data Insertion: Populated tables with data from thematic*results*_.csv using insert*data.py.
SQL Dump: Exported schema and data to sql_dumps/bank_reviews_dump*_.sql using export_sql_dump.py.
Verification: Confirmed table existence, data counts, and integrity using verify_database.py.

Visualizations:

Generated in notebooks/visualization.ipynb:
Sentiment distribution by bank (bar chart).
Theme distribution by bank (bar chart).
Sentiment vs. rating (stacked bar chart).
Word clouds per bank.

Report:

Compiled a two-page LaTeX report (reports/report.pdf) summarizing findings and recommendations.

Fixes for Database Storage

KeyError: 'rating': Updated thematic*analysis.py to include rating, date, and source columns in thematic_results*\*.csv.
ORA-00001 (Unique Constraint Violated): Modified insert_data.py to skip duplicate bank_name, app_id, and review_id insertions.
ORA-00942 (Table or View Does Not Exist): Added table existence checks in insert_data.py and ensured setup_database.py was run first.
AttributeError (CLOB Handling): Fixed export_sql_dump.py to use read() for CLOB review_text and handle NULL values.

Usage

Scrape Reviews:
python scripts/scrape_reviews.py

Outputs: CSVs in data/raw/ (e.g., Commercial*Bank_of_Ethiopia_reviews*\*.csv).

Run Sentiment Analysis:
python scripts/sentiment_analysis.py

Outputs: data/processed/sentiment*results*_.csv, sentiment*summary*_.csv.

Run Thematic Analysis:
python scripts/thematic_analysis.py

Outputs: data/processed/thematic*results*_.csv, theme*summary*_.csv.

Setup Oracle Database:
python scripts/setup_database.py

Creates Banks and Reviews tables in the bank_reviews database.

Insert Data into Oracle:
python scripts/insert_data.py

Populates Banks and Reviews tables.

Export SQL Dump:
python scripts/export_sql_dump.py

Outputs: sql*dumps/bank_reviews_dump*\*.sql.

Verify Database:
python scripts/verify_database.py

Outputs: verify_database.log with table and data checks.

Generate Visualizations:
jupyter notebook notebooks/visualization.ipynb

Run all cells to produce PNGs in visualizations/.

Compile Report:
cd reports
latexmk -pdf report.tex

Outputs: reports/report.pdf.

Check Logs:
cat scraper.log
cat sentiment.log
cat thematic.log
cat database_setup.log
cat data_insertion.log
cat sql_dump.log
cat verify_database.log

Results and Visualizations
Sentiment Analysis

CBE: Highest positive sentiment (4.4 stars).
BOA: Lowest positive sentiment (2.8 stars).
Dashen: Moderate positive sentiment (4.0 stars).

Thematic Analysis

Themes: Account Access (login issues), Transaction Performance (slow transfers), Reliability (crashes), User Interface, Customer Support, Feature Requests (e.g., fingerprint login).
BOA: Higher negative themes (crashes, slow transfers).

Database Storage

Banks Table: 3 banks (CBE, BOA, Dashen).
Reviews Table: 1,200+ reviews with sentiment and themes.
SQL Dump: Exported schema and data for reproducibility.

Visualizations (in visualizations/)

sentiment*distribution*_.png: Bar chart of sentiment by bank.
theme*distribution*_.png: Bar chart of themes by bank.
sentiment*vs_rating*_.png: Stacked bar chart of sentiment vs. rating.
wordcloud\__.png: Word clouds highlighting frequent terms per bank.

Scenarios Addressed

Retaining Users: Slow transfers (Transaction Performance) are critical, especially for BOA. Recommendation: Optimize server-side APIs.
Enhancing Features: Users request fingerprint login and faster transfers (Feature Requests). Recommendation: Implement biometric authentication and savings trackers.
Managing Complaints: Login errors (Account Access) and crashes (Reliability). Recommendation: Integrate AI chatbot for support.

Key Performance Indicators (KPIs)

Data Collection: 1200+ reviews (400+ per bank), <5% missing data.
Sentiment Analysis: Scores for 90%+ reviews.
Thematic Analysis: 3+ themes per bank (e.g., Transaction Performance, Reliability).
Database Storage: Populated Oracle database with >1,000 review entries, exported SQL dump.
Visualizations: Stakeholder-friendly charts and word clouds in visualizations/.
Report: Two-page PDF (reports/report.pdf) with actionable insights.

Contributing

Fork the repository.
Create a feature branch:git checkout -b feature-name

Commit changes:git commit -m "Add feature"

Push to branch:git push origin feature-name

Open a pull request on GitHub.
Use GitHub Issues to report bugs or suggest improvements:gh issue create -t "Issue title" -b "Issue description"

References

google-play-scraper
DistilBERT
spaCy
Seaborn
WordCloud
TeX Live
Oracle Database Express Edition
cx_Oracle

License
This project is licensed under the MIT License. See the LICENSE file for details.
