# Web Scraping & ETL Project

## Project Overview
This project was developed as part of the **Comprehensive Data Analytics Bootcamp (Phase 0)** to demonstrate an **end-to-end ETL (Extract, Transform, Load) pipeline**. The project focuses on extracting product data from an e-commerce website, transforming the raw data into a clean and structured format using Python, and loading the processed data into a **PostgreSQL** database.

This project highlights practical skills in **web scraping, data transformation, database design, and SQL**. 

## Objectives
- Extract product data from an e-commerce website using web scraping techniques
- Clean and transform raw data into a structured and analysis-ready format
- Design and populate a relational database using PostgreSQL
- Demonstrate a complete ETL workflow that can be reused or extended

## Data Source
- **Source Type**: E-commerce website 
- **URL**: https://thenblank.com/collections
- **Data Extracted**:
  - Product name
  - Color / variant
  - Price
  - Discount
  - Rating

> The data is collected through HTTP requests and HTML parsing during the scraping process.

## Project Workflow
The project follows a standard ETL architecture:

### 1. Extract
- Send HTTP requests to the target e-commerce website
- Parse HTML content using **BeautifulSoup**
- Extract relevant product attributes
- Store extracted data in a raw structured format

### 2. Transform
- Clean raw data using **Pandas**
- Handle missing values and inconsistent formats
- Standardize numerical fields such as price, discount, and rating
- Validate and normalize columns to ensure data consistency

### 3. Load
- Design relational tables in **PostgreSQL**
- Create tables using SQL DDL statements
- Load transformed data into PostgreSQL
- Apply constraints to maintain data integrity

## Database Design
The PostgreSQL database is designed to store cleaned product data with a normalized structure:
- Ensures data consistency and accuracy
- Supports analytical queries and reporting
- Ready for downstream BI or analytics use cases

## Tools & Technologies
- **Programming Language**: Python
- **Libraries**:
  - BeautifulSoup – web scraping
  - Requests – HTTP requests
  - Pandas – data cleaning and transformation
- **Database**: PostgreSQL
- **Query Language**: SQL
- **Development Environment**: Jupyter Notebook

## Project Files
- `Extract & Transform Data.ipynb` – Web scraping, data cleaning, and transformation process
- `Load data.sql` – SQL script for table creation and data loading
- `README.md` – Project documentation

## Key Learnings
- Implemented a complete ETL pipeline from unstructured web data
- Gained hands-on experience with HTML parsing and data extraction
- Applied data cleaning and transformation techniques for real-world data
- Designed and populated a relational database for analytical use

## How to Run the Project
1. Clone this repository
2. Install required Python libraries (`requests`, `beautifulsoup4`, `pandas`)
3. Open `Extract & Transform Data.ipynb` in Jupyter Notebook
4. Run the notebook cells sequentially to extract and transform data
5. Set up a PostgreSQL database
6. Execute `Load data.sql` to create tables and load the transformed data

## Author
**Putrima Azizi Al Fauztina**  
Bachelor of Information Systems  
Focus: Data Analytics & Data Engineering

---
This project is intended for **portfolio and learning purposes**, demonstrating practical ETL, web scraping, and database skills.