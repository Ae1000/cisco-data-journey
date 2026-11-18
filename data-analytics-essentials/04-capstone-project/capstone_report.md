* **Source Governance:** Generated dynamically utilizing The Movie Database (TMDb) Developer API ecosystem. 
* **Disclaimer:** This non-commercial portfolio project uses the open-source TMDb API data framework but is not officially endorsed, authenticated, or certified by The Movie Database (TMDb) organization.

# 🎬 Capstone Project: Movie Industry Business Insights Dashboard
**Data Analytics Essentials Pathway — Cisco Networking Academy**

---

## 📊 Executive Summary
This project presents an end-to-end data analytics workflow designed to transform a raw, messy dataset of historical cinema records into actionable strategic business insights. Using **Excel, SQL, and Tableau**, the project uncovers driving factors behind box office profitability, genre popularity, and return on investment (ROI) to guide studio production decisions.

---

## ⚙️ Step 1: Data Gathering & Sanitization (Excel)
The raw dataset contained inconsistent entries, missing values, and unformatted data types.

### 📋 Cleaning & Parsing Pipeline Execution
* **Deduplication:** Applied Excel's `Data -> Remove Duplicates` tool against the core `movie_id` identifier to eradicate duplicate data row injections.
* **Structural Parsing:** Extracted the primary genre from nested string formats using text boundaries to create a standardized `clean_genre` column.
* **Financial Data Masking:** Isolated missing numeric variables (`0` or blank variables in critical categories like financial `budget` or `revenue`). Created a validation schema to flag records fit for economic scoring:
  ```excel
  =IF(AND(A2>0, M2>0), "Valid Portfolio", "Exclude From Calculations")
  ```
* **Exploratory Metrics:** Built comprehensive **Pivot Tables** leveraging relational sorting to locate data outliers, such as hyper-budget films yielding critical revenue gaps.

---

## 🔍 Step 2: Relational Database Ingestion & Querying (SQL)
To prepare the dataset for scalable analytical querying, the clean data was moved into a relational database management system (RDBMS).

### 💾 Relational Infrastructure Construction Schema
```sql
CREATE DATABASE tmdb_portfolio_db;
USE tmdb_portfolio_db;

CREATE TABLE tmdb_movies (
    movie_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    release_date DATE,
    budget DECIMAL(15, 2),
    revenue DECIMAL(15, 2),
    runtime INT,
    vote_average DECIMAL(3, 1),
    PRIMARY KEY (movie_id)
);
```

### 🔍 Specialized Analytical Portfolio Queries
```sql
-- Query 1: Extract individual high-performance records (Top 10 by Profit Margin)
SELECT 
    title,
    genre,
    budget,
    revenue,
    (revenue - budget) AS absolute_net_profit,
    ROUND(((revenue - budget) / budget) * 100, 2) AS roi_percentage
FROM tmdb_movies
WHERE budget > 1000000 AND revenue > 0
ORDER BY absolute_net_profit DESC
LIMIT 10;

-- Query 2: Segment performance metrics across structural genre portfolios
SELECT 
    genre,
    COUNT(*) AS absolute_volume_produced,
    ROUND(AVG(budget), 2) AS average_allocated_budget,
    ROUND(AVG(revenue), 2) AS average_generated_revenue,
    ROUND(AVG(revenue - budget), 2) AS average_calculated_profit
FROM tmdb_movies
WHERE budget > 0 AND revenue > 0
GROUP BY genre
HAVING absolute_volume_produced >= 5
ORDER BY average_calculated_profit DESC;
```

---

## 🎨 Step 3: Business Intelligence & Visualization (Tableau)
The queried results were linked directly into Tableau to build an interactive, executive-facing presentation layer.

### 📊 Applied Visual Architecture Maps
* **Genre Profit Comparison (Bar View):** Mapped `Genre` categories to the Rows shelf against aggregated `Average Calculated Profit` in Columns to rank industry segment value generation.
* **Budget-to-Revenue Distribution (Scatter Framework):** Configured `Budget` variables on the horizontal axis and `Revenue` metrics on the vertical canvas. Set `Title` labels to the Detail level to evaluate performance trend paths.
* **Executive Revenue Trend (Line Tracking):** Placed `Release Date` (truncated to Year values) onto Columns and `Revenue` sums onto Rows to display long-term sector cycles.

### 🎛️ Dashboard Interaction Canvas
Consolidated separate chart cards into a unified, clean executive dashboard interface. Configured `Genre` data parameters to act as a **Global Filter Object**, switching the worksheet profile settings to `Apply to Worksheets -> All Using This Data Source`. This enables viewers to instantly run ad-hoc data investigations across specific market paths.

---

## 💡 Step 4: Ethical Considerations & Bias Analysis
In alignment with Module 9 of the curriculum, the analytical pipeline evaluated systemic data constraints:
* **Algorithmic & Selection Bias:** Documented limitations regarding missing historical records from independent and international cinema sectors, preventing over-generalization. 
The underlying source data scales heavily toward large, English-language theatrical releases.
* **Information Security:** Ensured strict compliance with data integrity principles during the engineering process, protecting the raw source pipeline from accidental file corruption. 
Rows containing zero financial flags were separated into an isolated processing pipeline rather than injected with arbitrary average values.

---

## 🚀 Key Findings & Conclusions
1. **High-Yield Genres:** Action and Animation sectors yielded the highest net profit averages, whereas documentary fields showed minimal overhead risks but low scaling opportunities.
2. **Budget Thresholds:** Data trends indicate diminishing returns on investment for films exceeding specific budget limits without pre-established intellectual property backing.
