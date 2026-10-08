# 📊 Excel Business Intelligence Dashboard Construction Guide
**Project Milestone:** Executive Movie Industry Insights Blueprint  
**Dataset Sourced:** Sanitized TMDb 5000 Movies Matrix (`tmdb_5000_movies_clean.xlsx`)

---

## 🛠️ Phase 1: Ingestion & Architecture Optimization
1. Initialize **Microsoft Excel** and open your pristine data workbook (`tmdb_5000_movies_clean.xlsx`).
2. Select the entire active data grid canvas by highlighting cell `A1` and pressing **Ctrl + A**.
3. Convert the flat ledger grid into a structural data layout object: Navigate to **Home ➔ Format as Table** (or press **Ctrl + T**), ensure **"My table has headers"** is checked, and click **OK**.
4. Generate two clean canvas tabs at the base sheet tray to isolate your data models from your view layers:
   * Rename Sheet 2 to: **`Pivot_Tables`** (Your calculation engine sandbox)
   * Rename Sheet 3 to: **`Dashboard`** (Your executive-facing presentation layer)

---

## 📐 Phase 2: Relational Calculation Modeling (Pivot Engine)
Navigate to your newly created **`Pivot_Tables`** sheet tab. Highlight cell `A1`, click **Insert ➔ PivotTable**, select your data table, and apply the following parameters:

### 📊 1. Sector Performance Matrix (Genre Profit Tracking)
* **Row Labels Field:** Drag `clean_genres` into the Rows matrix block.
* **Values Field:** Drag `absolute_net_profit` into the Values quadrant.
* **Field Aggregation Tuning:** Right-click the `SUM of absolute_net_profit` field value inside the grid, navigate to **Value Field Settings**, modify the calculation format from *Sum* to **Average**, click **Number Format**, select **Currency (\$)** with **0** decimal places, and click OK.
* **Tabular Sorting Execution:** Click the contextual filter arrow button on the **Row Labels** cell header header block, navigate to **More Sort Options ➔ Descending**, and select **Average of absolute_net_profit**.

### 📈 2. Historical Market Trends (Macro Revenue Cycles)
* Select cell **`E1`** inside the sheet workspace to clear operational space, then click **Insert ➔ PivotTable**.
* **Row Labels Field:** Drag `release_date` into the Rows quadrant (Excel will automatically establish temporal grouping structures across **Years**).
* **Values Field:** Drag `revenue` into the Values quadrant. Keep the calculation setting configured to **Sum**, click **Number Format**, select **Currency (\$)** with **0** decimal places, and hit OK.

### 🗺️ 3. Budget vs. Success Spectrum (Financial Scaling Canvas)
* Select cell **`I1`** inside the sheet workspace and insert your third structural Pivot Table.
* **Row Labels Field:** Drag `title` into the Rows matrix field block.
* **Values Field:** Drag `budget` and `revenue` sequentially into the Values field block. Keep both fields aggregated as **Sum**, click **Number Format**, and explicitly cast both metrics as **Currency (\$)** with **0** decimal places.

---

## 🎨 Phase 3: Visual Grid Mapping (Pivot Charts)
We will now manifest separate visualization cards for each Pivot Table and move them straight onto your blank presentation screen.

1. **Genre Profit Card:** Click your active selector boundary inside your *Sector Performance* Pivot Table. Navigate to the top architectural tab strip and select **PivotTable Analyze ➔ PivotChart**. Select **Clustered Bar Chart**, and click OK. Cut the visual element instantly (**Ctrl + X**), navigate to your **`Dashboard`** tab, and paste it (**Ctrl + V**).
2. **Temporal Trend Card:** Click your selector boundary inside your *Historical Market Trends* Pivot Table. Select **PivotChart**, choose the standard continuous **Line Chart** layout track, and click OK. Cut the chart canvas (**Ctrl + X**), go to your **`Dashboard`** tab, and paste it (**Ctrl + V**).
3. **Financial Scatter Map:** Click your selector boundary inside your *Budget vs Success* table. Select **PivotChart**, scroll down the graph configurations index, select **XY Scatter Plot**, and click OK. Cut the map canvas (**Ctrl + X**), jump back to your **`Dashboard`** folder canvas, and paste it (**Ctrl + V**).

---

## 🎛️ Phase 4: presentation Clean Up & Global Filter Interactivity
Now we will clean up the visual layout and link everything together into an executive interface.

### 🎨 Visual Alignment & Clean Up
* Arrange your three charts neatly on your **`Dashboard`** tab so they form a balanced layout grid.
* Hide messy system tags by right-clicking any gray button on the charts and selecting **Hide All Field Buttons on Chart**.
* Add clear, professional titles to each chart (e.g., *“Average Profitability by Cinema Sector”*, *“Macro Market Revenue Cycles”*).

### 🎛️ Global Cross-Worksheet Filtration Network
1. Click your active selector boundary mouse highlight onto the **Genre Clustered Bar Graph visual container** resting inside your main dashboard sheet.
2. Navigate to the upper command ribbon and click **PivotChart Analyze ➔ Insert Slicer**. Check the box parameter mapping tracker for **`clean_genres`** and click OK.
3. Click the adjoining parameter option button labeled **Insert Timeline**, check the box configuration tracking layout matrix for **`release_date`**, and click OK.
4. **The Critical Interaction Connection Mapping Link:** Right-click directly onto the top window frame header boundary of your newly spawned **Slicer selection box object card**. Select **Report Connections...** from the contextual choice options listing. In the popup checklist dashboard panel interface screen, check the explicit authorization boxes for **all three local calculation Pivot Tables**, and click OK.
5. Repeat this exact connection loop path tracking configuration loop for your new horizontal **Timeline slider bar module widget block**.

---

## 🚀 Phase 5: Verification & Portfolio Baseline Save
* Interact with your working executive briefing layer by checking or clearing specific parameter checkboxes inside your new interactive slicer deck or dragging your timeline filter brackets across continuous calendar spans.
* Verify that all three chart components calculate simultaneously in synchronization to display completely updated absolute profiles across your macro revenue charts and scatter tracking canvases.
* Click **File ➔ Save** inside the workbook to permanently preserve your clean milestone asset.
