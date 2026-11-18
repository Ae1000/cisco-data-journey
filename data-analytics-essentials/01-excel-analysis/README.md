# 📊 Module 01: Excel Data Cleaning & Financial Modeling
**Dataset:** TMDb 5000 Movies Dataset (`tmdb_5000_movies_clean.xlsx`)

## 🛠️ Data Wrangling & Financial Modeling
1. **Deduplication & Filtering:** Removed duplicate records by `movie_id` and excluded incomplete entries with zero `budget` or `revenue` values.
2. **JSON Parsing:** Unnested raw JSON arrays into clean, comma-separated lists (`clean_genres`, `clean_keywords`, `clean_companies`).
3. **Engineered Metrics:**
   * **Absolute Net Profit:** `Revenue - Budget`
   * **ROI Percentage:** `(Revenue - Budget) / Budget`

![Cleaned Dataset Preview](images/excel_cleaned_data.png)

## 📐 Pivot Table Aggregation Engine
Constructed three dynamic Pivot Tables to summarize average profitability by genre combination, macro revenue trends by release year, and budget-to-revenue scaling.

![Pivot Tables Calculation Layer](images/excel_pivot_tables.png)

## 🎛️ Interactive Executive Dashboard
Consolidated the Pivot Charts into a unified presentation canvas connected via a global **Genre Slicer** and **Release Date Timeline**.

![Excel Executive Dashboard](images/excel_interactive_dashboard.png)
