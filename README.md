# Customer Behaviour & Sales Intelligence using RFM Analysis
Customer segmentation and sales intelligence using Python, SQL, and Power BI

## Academic Motivation
As part of my preparation for postgraduate studies in Data Science and Analytics,
I designed and implemented this project to gain hands-on experience with
large-scale transactional data and customer analytics techniques commonly used
in academic research and industry applications.

## Problem Statement
Understanding customer purchasing behavior is critical for revenue growth,
customer retention, and marketing strategy optimization.
This project applies RFM (Recency, Frequency, Monetary) analysis to segment
customers based on their transactional patterns and derive actionable insights.

## Dataset Description
The dataset consists of over 1 million retail transaction records containing:
- Invoice-level purchase data
- Product information
- Purchase timestamps
- Customer identifiers
- Country-level information

## Methodology
1. **Data Exploration & Feature Engineering (Python)**
   - Processed raw transactional data using pandas
   - Computed Recency, Frequency, and Monetary metrics per customer
   - Generated RFM scores and customer segments

2. **Data Modeling & Query Optimization (MySQL)**
   - Imported and cleaned large datasets using SQL
   - Created aggregated customer-level tables
   - Wrote analytical queries to extract business insights

3. **Visualization & Interpretation (Power BI)**
   - Built an interactive dashboard for customer segmentation analysis
   - Visualized revenue contribution, customer distribution, and engagement metrics
   - Enabled segment-level filtering for exploratory analysis

## Key Insights
- A small percentage of customers contributes a disproportionately large share of revenue
- High-frequency customers show strong long-term value despite moderate recency
- At-risk customer segments present significant reactivation opportunities
- RFM-based segmentation improves interpretability over raw transaction analysis

## Learning Outcomes
Through this project, I strengthened my understanding of:
- Customer analytics and segmentation techniques
- End-to-end data pipelines involving Python, SQL, and BI tools
- Translating analytical findings into interpretable visual insights
- Structuring data projects in a reproducible and research-oriented manner

## Relevance to MSc Studies
This project reflects my interest in data-driven decision-making,
statistical analysis of real-world datasets, and scalable data processing,
which directly aligns with the curriculum and research orientation of
Master’s programs in Data Science and Business Analytics.

## Tools & Technologies
- Python (pandas, numpy)
- MySQL
- Power BI
- ##  Project Structure

Customer-Behavior-RFM-Analysis/
├── raw_CSV_file/           → Raw transactional data
├── Customer_RFM_Analysis.sql/ → SQL scripts for database & RFM logic
├── python/                 → Python-based RFM validation
├── BI dashboard/           → Power BI dashboard file
├── images/                 → Screenshots for documentation
└── README.md               → Project overview and explanation
