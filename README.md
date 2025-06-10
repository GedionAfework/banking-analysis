# Ethiopian Banks Mobile App Review Analysis

This project analyzes user reviews for the mobile banking apps of Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank, sourced from the Google Play Store. The goal is to identify user satisfaction drivers and pain points to improve customer retention, enhance app features, and streamline complaint management. The project includes data scraping, preprocessing, sentiment analysis, thematic analysis, database storage in Oracle, insights generation, visualizations (bar charts and word clouds), and a comprehensive report.

## Table of Contents

- [Project Overview](#project-overview)
- [Repository Structure](#repository-structure)
- [Setup Instructions](#setup-instructions)
- [Methodology](#methodology)
- [Usage](#usage)
- [Results and Visualizations](#results-and-visualizations)
- [Scenarios Addressed](#scenarios-addressed)
- [Key Performance Indicators (KPIs)](#key-performance-indicators-kpis)
- [Contributing](#contributing)
- [References](#references)
- [License](#license)

## Project Overview

Developed by Gedion Mekbeb Afework for Omega Consultancy, this project analyzes over 1200 user reviews (400+ per bank) to provide actionable insights for CBE, BOA, and Dashen Bank. Key objectives include:

Retaining Users: Address performance issues like slow transfers (CBE: 4.4 stars, BOA: 2.8 stars, Dashen: 4.0 stars).
Enhancing Features: Identify user-requested features like fingerprint login.
Managing Complaints: Mitigate issues such as login errors and app crashes.

The project uses Python with a virtual environment, leveraging libraries like google-play-scraper, pandas, transformers, spacy, scikit-learn, matplotlib, seaborn, wordcloud, and cx_Oracle. Visualizations are generated in Jupyter notebooks, data is stored in an Oracle database, and a two-page LaTeX report summarizes findings.

## Repository Structure

banking-analysis/
├── .gitignore
├── requirements.txt
├── README.md
├── data/
│ ├── raw/  
│ ├── processed/  
├── scripts/
│ ├── scrape_reviews.py  
│ ├── sentiment_analysis.py  
│ ├── thematic_analysis.py  
│ ├── setup_database.py  
│ ├── insert_data.py  
│ ├── export_sql_dump.py  
│ ├── verify_database.py  
│ ├── analyze_insights.py  
├── notebooks/
│ ├── visualization.ipynb  
│ ├── task4_visualizations.ipynb  
├── visualizations/  
├── sql_dumps/  
├── scraper.log  
├── sentiment.log  
├── thematic.log  
├── database_setup.log  
├── data_insertion.log  
├── sql_dump.log  
├── verify_database.log  
├── analysis.log

## Setup Instructions

### Clone the Repository

```bash
git clone https://github.com/GedionAfework/banking-analysis.git
cd banking-analysis
```

### Create and Activate Virtual Environment

```bash
python -m venv venv
source venv/bin/activate  # Windows: .\venv\Scripts\activate
```

### Install Dependencies

```bash
pip install -r requirements.txt
python -m spacy download en_core_web_sm
```

### Install Oracle XE

- Download and install Oracle Database Express Edition (XE) from oracle.com.
- Configure credentials (username, password, host: localhost, port: 1521, service name: XE) in scripts.

### Install LaTeX (for Report Compilation)

- Install TeX Live from tug.org/texlive.
- Verify installation: `latexmk --version`

### Initialize Git (if Contributing)

```bash
git checkout main
git pull origin main
```

## Methodology

### Data Collection

- Scraped 400+ reviews per bank using google-play-scraper for CBE (com.combanketh.mobilebanking), BOA (com.boa.boaMobileBanking), and Dashen (com.dashen.dashensuperapp).
- Saved as CSVs in data/raw/.

### Preprocessing

- Removed duplicates (using review_id), filtered reviews (<10 characters), normalized dates to YYYY-MM-DD, ensured <5% missing data.
- Output: Cleaned CSVs in data/raw/.

### Sentiment Analysis

- Used DistilBERT (distilbert-base-uncased-finetuned-sst-2-english) with rating-based correction (e.g., 4–5 stars labeled positive if misclassified).
- Saved results in data/processed/sentiment*results*_.csv and sentiment*summary*_.csv.

### Thematic Analysis

- Extracted keywords with spaCy and TF-IDF, clustered into themes (e.g., Account Access, Transaction Performance).
- Saved in data/processed/thematic*results*_.csv and theme*summary*_.csv.

### Database Storage

- Setup: Created bank_reviews database with Banks and Reviews tables using Oracle XE (setup_database.py).
- Banks: bank_id (PK), bank_name (unique), app_id (unique).
- Reviews: review_id (PK), bank_id (FK), review_text (CLOB), rating, review_date, sentiment_label, sentiment_score, themes, source.
- Data Insertion: Populated tables with data from thematic*results*\*.csv using insert_data.py.
- SQL Dump: Exported schema and data to sql*dumps/bank_reviews_dump*\*.sql using export_sql_dump.py.
- Verification: Confirmed table existence, data counts, and integrity using verify_database.py.

### Insights and Recommendations

- Analyzed sentiment, themes, and ratings from Oracle database using analyze_insights.py.
- Generated visualizations (bar charts, stacked bar charts) in task4_visualizations.ipynb.
- Provided recommendations for user retention, feature enhancement, and complaint management.

### Report

- Compiled a two-page LaTeX report (reports/report.pdf) summarizing findings and recommendations.

### Fixes for Database Storage

- KeyError: 'rating': Updated thematic_analysis.py to include rating, date, and source columns.
- ORA-00001 (Unique Constraint Violated): Skipped duplicate bank_name, app_id, and review_id in insert_data.py.
- ORA-00942 (Table or View Does Not Exist): Added table existence checks in insert_data.py.
- AttributeError (CLOB Handling): Fixed export_sql_dump.py to use read() for CLOB review_text.

## Usage

### Scrape Reviews

```bash
python scripts/scrape_reviews.py
```

Outputs: CSVs in data/raw/ (e.g., Commercial*Bank_of_Ethiopia_reviews*\*.csv).

### Run Sentiment Analysis

```bash
python scripts/sentiment_analysis.py
```

Outputs: data/processed/sentiment*results*_.csv, sentiment*summary*_.csv.

### Run Thematic Analysis

```bash
python scripts/thematic_analysis.py
```

Outputs: data/processed/thematic*results*_.csv, theme*summary*_.csv.

### Setup Oracle Database

```bash
python scripts/setup_database.py
```

Creates Banks and Reviews tables.

### Insert Data into Oracle

```bash
python scripts/insert_data.py
```

Populates Banks and Reviews tables.

### Export SQL Dump

```bash
python scripts/export_sql_dump.py
```

Outputs: sql*dumps/bank_reviews_dump*\*.sql.

### Verify Database

```bash
python scripts/verify_database.py
```

Outputs: verify_database.log.

### Analyze Insights

```bash
python scripts/analyze_insights.py
```

Outputs: data/processed/sentiment_distribution.csv, theme_distribution.csv, sentiment_vs_rating.csv.

### Generate Task 4 Visualizations

```bash
jupyter notebook notebooks/task4_visualizations.ipynb
```

Outputs: PNGs in visualizations/ (e.g., sentiment_distribution_task4.png).

### Compile Report

```bash
cd reports
latexmk -pdf report.tex
```

Outputs: reports/report.pdf.

### Check Logs

```bash
cat scraper.log
cat sentiment.log
cat thematic.log
cat database_setup.log
cat data_insertion.log
cat sql_dump.log
cat verify_database.log
cat analysis.log
```

## Results and Visualizations

### Sentiment Analysis

- CBE: Highest positive sentiment (4.4 stars).
- BOA: Lowest positive sentiment (2.8 stars).
- Dashen: Moderate positive sentiment (4.0 stars).

### Thematic Analysis

- Themes: Account Access (login issues), Transaction Performance (slow transfers), Reliability (crashes), User Interface, Customer Support, Feature Requests (e.g., fingerprint login).
- BOA: Higher negative themes (crashes, slow transfers).

### Database Storage

- Banks Table: 3 banks (CBE, BOA, Dashen).
- Reviews Table: 1,200+ reviews with sentiment and themes.
- SQL Dump: Exported schema and data.

### Insights and Recommendations

- Insights:
  - BOA’s low rating (2.8 stars) is driven by frequent crashes and slow transfers.
  - CBE excels in positive sentiment, but login issues persist.
  - Feature Requests (e.g., fingerprint login) are common across banks.
- Recommendations:
  - BOA: Optimize APIs for faster transfers, improve app stability.
  - All Banks: Implement biometric authentication, add savings trackers.
  - Complaints: Deploy AI chatbot for login error support.

### Visualizations (in visualizations/)

- sentiment_distribution_task4.png: Bar chart of sentiment by bank.
- theme_distribution_task4.png: Bar chart of themes by bank.
- sentiment_vs_rating_task4.png: Stacked bar chart of sentiment vs. rating.
- wordcloud\_\*.png: Word clouds per bank (from visualization.ipynb).

## Scenarios Addressed

- Retaining Users: Slow transfers critical for BOA. Recommendation: Optimize server-side APIs.
- Enhancing Features: Users request fingerprint login. Recommendation: Implement biometric authentication.
- Managing Complaints: Login errors prevalent. Recommendation: Integrate AI chatbot.

## Key Performance Indicators (KPIs)

- Data Collection: 1200+ reviews, <5% missing data.
- Sentiment Analysis: Scores for 90%+ reviews.
- Thematic Analysis: 3+ themes per bank.
- Database Storage: >1,000 review entries, SQL dump exported.
- Insights: Actionable recommendations for retention, features, complaints.
- Visualizations: Stakeholder-friendly charts in visualizations/.
- Report: Two-page PDF with insights.

## Contributing

- Fork the repository.
- Create a feature branch: `git checkout -b feature-name`
- Commit changes: `git commit -m "Add feature"`
- Push to branch: `git push origin feature-name`
- Open a pull request on GitHub.
- Use GitHub Issues for bugs or improvements: `gh issue create -t "Issue title" -b "Issue description"`

## References

- google-play-scraper
- DistilBERT
- spaCy
- Seaborn
- WordCloud
- TeX Live
- Oracle Database Express Edition
- cx_Oracle

## License

This project is licensed under the MIT License. See the LICENSE file for details.
