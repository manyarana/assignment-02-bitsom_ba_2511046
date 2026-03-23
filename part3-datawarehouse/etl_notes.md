## ETL Decisions

### Decision 1 — Date Standardization & Dim_Date Mapping
**Problem:** The `retail_transactions.csv` contained three different date formats: `DD/MM/YYYY` (e.g., 29/08/2023), `DD-MM-YYYY` (e.g., 12-12-2023), and `YYYY-MM-DD` (e.g., 2023-02-05).
**Resolution:** During the transformation phase, all date strings were parsed into a standard ISO-8601 format (`YYYY-MM-DD`). This allowed for the population of `dim_date`, where the `month` and `year` were extracted as integer attributes to support efficient time-series filtering in the analytical queries.

### Decision 2 — Handling Categorical Inconsistencies
**Problem:** The `category` column had "Dirty Data" in two forms:
1. **Casing:** `electronics` vs. `Electronics`.
2. **Naming:** `Grocery` vs. `Groceries`.
**Resolution:** A transformation rule was applied to convert all categories to `INITCAP` (Proper Case) and a mapping dictionary was used to consolidate `Groceries` into the `Grocery` category. This ensures that `GROUP BY` operations in `dw_queries.sql` do not return split results for the same business segment.

### Decision 3 — Missing Data Imputation (Store City)
**Problem:** The `store_city` column contained 19 NULL values. 
**Resolution:** Since the `store_name` (e.g., "Chennai Anna") was always present, I used a lookup logic to fill missing cities. For instance, any row with "Chennai Anna" as the store name but a NULL city was updated to "Chennai" before being loaded into `dim_store`.

### Decision 4 — Fact Table Calculations
**Problem:** The raw data provides `units_sold` and `unit_price`, but business queries require `revenue`.
**Resolution:** To optimize query performance, `revenue` was pre-calculated as `(units_sold * unit_price)` during the Load process and stored as a metric in the `fact_sales` table.