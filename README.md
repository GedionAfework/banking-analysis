Ethiopian Banks Mobile App Review Analysis
This project analyzes user reviews for the mobile banking apps of Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank, sourced from the Google Play Store. The goal is to identify user satisfaction drivers and pain points to improve customer retention, enhance app features, and streamline complaint management. The project includes data scraping, preprocessing, sentiment analysis, thematic analysis, visualizations (bar charts and word clouds), and a comprehensive report.
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

The project uses Python with a virtual environment for dependency management, leveraging libraries like google-play-scraper, pandas, transformers, spacy, scikit-learn, matplotlib, seaborn, and wordcloud. Visualizations are generated in a Jupyter notebook, and a two-page LaTeX report summarizes findings.
Repository Structure
banking-analysis/
├── .gitignore
├── requirements.txt
├── README.md
├── data/
│ ├── raw/ # Raw review CSVs (e.g., Commercial*Bank_of_Ethiopia_reviews*_.csv)
│ ├── processed/ # Processed CSVs (sentiment*results*_.csv, thematic*results*_.csv)
├── scripts/
│ ├── scrape*reviews.py # Scrapes reviews from Google Play Store
│ ├── sentiment_analysis.py # Performs sentiment analysis with DistilBERT
│ ├── thematic_analysis.py # Extracts keywords and clusters themes
├── notebooks/
│ ├── visualization.ipynb # Generates bar charts and word clouds
├── visualizations/ # PNG outputs (sentiment_distribution*_.png, wordcloud\_\*.png)
├── reports/
│ ├── report.tex # LaTeX source for two-page report
│ ├── report.pdf # Compiled report PDF
├── scraper.log # Log for scraping
├── sentiment.log # Log for sentiment analysis
├── thematic.log # Log for thematic analysis

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

Install LaTeX (for report compilation):

Install TeX Live from tug.org/texlive.
Verify installation:latexmk --version

Initialize Git (if contributing):
git checkout main
git pull origin main

Methodology

Data Collection: Scraped 400+ reviews per bank using google-play-scraper for CBE (com.combanketh.mobilebanking), BOA (com.boa.boaMobileBanking), and Dashen (com.dashen.dashensuperapp). Saved as CSVs in data/raw/.
Preprocessing: Removed duplicates (using review*id), filtered reviews (<10 characters), normalized dates, and ensured <5% missing data.
Sentiment Analysis: Used DistilBERT (distilbert-base-uncased-finetuned-sst-2-english) with rating-based correction (e.g., 4–5 stars labeled positive if misclassified). Saved results in data/processed/sentiment_results*_.csv.
Thematic Analysis: Extracted keywords with spaCy and TF-IDF, clustered into themes (e.g., Account Access, Transaction Performance). Saved in data/processed/thematic*results*_.csv.
Visualizations: Generated in notebooks/visualization.ipynb:
Sentiment distribution by bank (bar chart).
Theme distribution by bank (bar chart).
Sentiment vs. rating (stacked bar chart).
Word clouds per bank.

Report: Compiled a two-page LaTeX report (reports/report.pdf) summarizing scraping and early analysis.

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

Results and Visualizations

Sentiment Analysis:
CBE: Highest positive sentiment (4.4 stars).
BOA: Lowest positive sentiment (2.8 stars).
Dashen: Moderate positive sentiment (4.0 stars).

Thematic Analysis:
Themes: Account Access (login issues), Transaction Performance (slow transfers), Reliability (crashes), User Interface, Customer Support, Feature Requests (e.g., fingerprint login).
BOA shows higher negative themes (crashes, slow transfers).

Visualizations (in visualizations/):
sentiment*distribution*_.png: Bar chart of sentiment by bank.
theme*distribution*_.png: Bar chart of themes by bank.
sentiment*vs_rating*_.png: Stacked bar chart of sentiment vs. rating.
wordcloud\__\_\*.png: Word clouds highlighting frequent terms per bank.

Scenarios Addressed

Retaining Users: Slow transfers (Transaction Performance) are critical, especially for BOA. Recommendation: Optimize server-side APIs.
Enhancing Features: Users request fingerprint login and faster transfers (Feature Requests). Recommendation: Implement biometric authentication and savings trackers.
Managing Complaints: Login errors (Account Access) and crashes (Reliability). Recommendation: Integrate AI chatbot for support.

Key Performance Indicators (KPIs)

Data Collection: 1200+ reviews (400+ per bank), <5% missing data.
Sentiment Analysis: Scores for 90%+ reviews.
Thematic Analysis: 3+ themes per bank (e.g., Transaction Performance, Reliability).
Visualizations: Stakeholder-friendly charts and word clouds in visualizations/.
Report: Two-page PDF (reports/report.pdf) with actionable insights.

Contributing

Fork the repository.
Create a feature branch: git checkout -b feature-name.
Commit changes: git commit -m "Add feature".
Push to branch: git push origin feature-name.
Open a pull request on GitHub.
Use GitHub Issues to report bugs or suggest improvements:gh issue create -t "Issue title" -b "Issue description"

References

google-play-scraper
DistilBERT
spaCy
Seaborn
WordCloud
TeX Live

License
This project is licensed under the MIT License. See the LICENSE file for details.
