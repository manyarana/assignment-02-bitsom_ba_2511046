# Multi-Paradigm Data Engineering Capstone
**Unified Hospital & Retail Data Management System**

## 📌 Project Overview
This project demonstrates the design and implementation of a modern data ecosystem for two distinct sectors: Retail Analytics and Healthcare Management. It covers the entire data lifecycle, from relational modeling and NoSQL document design to advanced semantic search and high-scale Lakehouse architectures.

## 📂 Repository Structure
The project is organized into six specialized modules:

| Module | Focus Area | Key Technologies |
| :--- | :--- | :--- |
| **[Part 1](./part1-sql)** | Relational Database Design | MySQL, 3NF Normalization |
| **[Part 2](./part2-nosql)** | NoSQL & Document Modeling | MongoDB, JSON, CAP Theorem |
| **[Part 3](./part3-dw)** | Data Warehousing & ETL | Star Schema, OLAP, SQL |
| **[Part 4](./part4-bigdata)** | Advanced Databases | Vector DBs, Embeddings, Python |
| **[Part 5](./part5-modern-stack)** | Modern Data Stack | DuckDB, Parquet, Data Lakehouse |
| **[Part 6](./part6-capstone)** | System Architecture | End-to-End Design, Justification |

---

## 🛠 Technical Highlights

### 1. Relational Integrity (Part 1 & 3)
* **Normalization:** Transformed flat retail data into 3NF to eliminate insertion, update, and deletion anomalies.
* **Dimensional Modeling:** Developed a Star Schema with a central `fact_sales` table and dimensions for `date`, `store`, and `product` to enable fast analytical querying.

### 2. Flexible Schema & NoSQL (Part 2)
* Modeled diverse product categories using MongoDB.
* Justified the use of NoSQL for high-velocity, semi-structured data like hospital sensor data.

### 3. Semantic Search (Part 4)
* Implemented a Vector Search prototype using Python and `sentence-transformers`.
* Demonstrated how embeddings allow for "meaning-based" search in medical documents, surpassing the limitations of traditional keyword matching.

### 4. The Modern Lakehouse (Part 5 & 6)
* Leveraged DuckDB for in-process OLAP, joining CSV, JSON, and Parquet files directly.
* Designed a Medallion Architecture (Bronze/Silver/Gold) for a hospital network to handle real-time vitals and long-term medical history.

---

## 🚀 How to Run
1.  **SQL:** Execute `schema_design.sql` in any MySQL-compatible environment.
2.  **NoSQL:** Import `sample_documents.json` into a MongoDB collection.
3.  **Analytics:** Open `embeddings_demo.ipynb` in Jupyter to see the semantic search in action.
4.  **Modern Stack:** Use the DuckDB CLI or Python library to execute `duckdb_queries.sql`.