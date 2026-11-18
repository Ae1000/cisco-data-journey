# 🎬 Cisco Data Analytics Essentials: End-to-End Portfolio
**Author:** Enyinnaya Ahuekwe  
**Pathway:** Data Analytics Essentials — Cisco Networking Academy  
**Dataset:** [TMDb 5000 Movie Dataset (Kaggle)](https://kaggle.com)

---

## 🌐 Live Executive Dashboard
Interact with the published business intelligence dashboard directly on Tableau Public:  
👉 **[Movie Industry Business Insights Dashboard](https://tableau.com)**

---

## 📋 Project Overview
This repository demonstrates a complete, production-grade data analytics pipeline. Raw, nested cinema metadata was extracted, sanitized, modeled in a relational database, and transformed into interactive executive visualizations to uncover key drivers of box-office profitability and return on investment (ROI).

## 🛠️ Technical Stack
* **Data Engineering & Automation:** Python (`csv`, `json`, `pandas`, `openpyxl`), Git Bash
* **Spreadsheet Modeling & BI:** Microsoft Excel (Pivot Tables, Pivot Charts, Slicers, Timelines)
* **Relational Database & Querying:** MariaDB / MySQL (XAMPP, phpMyAdmin, DDL/DML Queries)
* **Data Visualization:** Tableau Public
* **Version Control:** Git & GitHub

---

## 📂 Repository Architecture & Milestones

| Module | Focus Area | Key Deliverables |
| :--- | :--- | :--- |
| **[01-excel-analysis](data-analytics-essentials/01-excel-analysis/)** | Data Cleaning & Spreadsheet BI | Python JSON parser script, deduplicated workbook, Pivot Tables, and interactive Excel Dashboard. |
| **[02-sql-queries](data-analytics-essentials/02-sql-queries/)** | Relational Database & SQL | MariaDB table schema (`01_create_tmdb_table.sql`), profit/ROI aggregation queries (`02_portfolio_insights.sql`), and query output proofs. |
| **[03-tableau-dashboards](data-analytics-essentials/03-tableau-dashboards/)** | Interactive Visualization | Multi-chart Tableau Public dashboard featuring global `Clean Genres` filtering and temporal revenue trends. |
| **[04-capstone-project](data-analytics-essentials/04-capstone-project/)** | Executive Capstone Report | Comprehensive analytical briefing covering methodology, ethical/bias evaluation, and strategic studio recommendations. |

---

## 🚀 Key Analytical Takeaways
1. **Genre Profitability:** Multi-genre family, adventure, and animation releases yield the highest average net profits compared to standalone drama or documentary productions.
2. **Budget Scaling:** Higher production budgets correlate with higher gross revenue ceilings, though extreme budgets exhibit diminishing percentage returns without established franchise backing.

---

*Disclaimer: This non-commercial portfolio project uses the open-source TMDb dataset framework via Kaggle and is not officially endorsed or certified by The Movie Database (TMDb).*
