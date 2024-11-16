# RFM Analysis Report

## Overview

This project demonstrates the implementation of **RFM Analysis** using **Power BI** and **SQL** to segment customers based on their purchasing behavior. RFM Analysis (Recency, Frequency, Monetary) is a proven data-driven method used in customer segmentation, retention strategies, and marketing campaigns.

---

## Key Features

- **Data Extraction and Transformation**:
  - SQL queries are used to extract and preprocess data from a database.
  - RFM metrics are calculated in SQL for efficient processing.
  
- **Data Visualization**:
  - Power BI is used to create interactive and visually appealing dashboards to present RFM segments.
  - Visuals include customer segmentation, trends, and actionable insights.

- **Customer Segmentation**:
  - Customers are segmented into groups based on Recency, Frequency, and Monetary scores.
  - Segments help identify loyal customers, potential churn, and high-value customers.

---

## Tools Used

1. **SQL**:
   - Data extraction from relational databases.
   - Aggregation of Recency, Frequency, and Monetary values.
   
2. **Power BI**:
   - Data visualization and interactive dashboard creation.
   - Easy filtering and exploration of RFM segments.

---

## Installation and Setup

1. **SQL Queries**:
   - Import the provided SQL script (`RFM_script.sql`) into your database management tool (e.g., MySQL, SQL Server).
   - Run the script to calculate RFM metrics and generate a table with RFM scores.

2. **Power BI**:
   - Open the provided Power BI file (`RFM.pbix`).
   - Ensure the Power BI report is connected to your SQL database.
   - Refresh the data to load the latest RFM analysis.

---

## RFM Calculation

1. **Recency**:
   - Days since the customer's last transaction.

2. **Frequency**:
   - Number of transactions over a specified period.

3. **Monetary**:
   - Total value of the customer's purchases over a specified period.

4. **Scoring**:
   - Each RFM metric is ranked into quintiles (e.g., 1-5) to create a composite RFM score.

---

## How to Use the Report

- Open the Power BI dashboard.
- Explore visualizations, such as:
  - Customer distribution across RFM segments.
  - Insights on high-value customers.
  - Trends in customer activity and retention strategies.

---

## Applications

- **Marketing Campaigns**:
  - Target high-value customers with special offers.
  - Engage with at-risk customers to reduce churn.

- **Business Strategy**:
  - Allocate resources to the most profitable customer segments.
  - Understand customer behaviors to improve products and services.

---

## File Structure

- `RFM_script.sql`: SQL script to calculate RFM metrics.
- `RFM.pbix`: Power BI dashboard file.
- `README.md`: Documentation.

---

## License

This project is open-source and free to use. Contributions are welcome!

---

## Contact

For questions or feedback, feel free to reach out. Happy analyzing!
