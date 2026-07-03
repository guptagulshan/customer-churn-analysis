# customer-churn-analysis
End-to-End Customer Churn Analysis and Retention Strategy using Python, SQL &amp; Power BI

# Customer Churn Prediction and Retention Analytics

## Project Overview
This project performs **end-to-end data analysis** on the Telco Customer Churn dataset to understand customer behavior, identify the key drivers of churn, and provide actionable business recommendations for improving customer retention.

Churn is one of the most critical metrics for subscription-based businesses. Reducing churn by even a small percentage can significantly increase revenue and profitability.

## Business Problem
- High customer churn rate impacts revenue and growth.
- Need to understand **why** customers are leaving.
- Requirement for data-driven retention strategies.

## Objectives
- Perform comprehensive data cleaning and exploratory data analysis (EDA)
- Identify significant factors contributing to customer churn
- Calculate key business metrics (Churn Rate, Revenue at Risk, etc.)
- Segment customers based on risk level
- Provide clear, actionable recommendations for retention

## Dataset
- **Source**: Telco Customer Churn Dataset (Kaggle)
- **Rows**: ~7,043 customers
- **Columns**: 21 features including demographics, services, account information, and churn label

## Tools & Technologies Used
- **Python** – Google Colab (Pandas, NumPy, Matplotlib, Seaborn)
- **SQL** – MySQL Workbench (for analytical queries)
- **Data Visualization** – Seaborn & Matplotlib (Python) + Power BI (Dashboard - in progress)
- **Version Control** – GitHub

## Key Insights
- Overall Churn Rate: 26.54%
- Customers with **Month-to-Month contracts** have significantly higher churn rate (~43%) compared to one-year (~11%) and two-year contracts (~8%)
- Fiber optic internet users and customers without **Tech Support** or **Online Security** show higher churn
- **Senior citizens**, customers with higher monthly charges, and those using electronic checks are more likely to churn
- New customers (tenure < 12 months) are at higher risk

## Business Recommendations
1. Introduce attractive discounts and benefits for customers signing longer contracts (1 or 2 years).
2. Offer free or discounted **Tech Support** and **Online Security** bundles to high-risk segments.
3. Implement proactive retention campaigns for customers with tenure less than 12 months.
4. Review pricing strategy for high monthly charge customers.
5. Improve payment options to reduce dependency on electronic checks.

## Repository Structure
- `Customer Churn Prediction and Retention Analytics.ipynb` → Main Python notebook with data loading, cleaning, EDA, and visualizations
- `cleaned_telco_churn.csv` → Cleaned and processed dataset
- `churn_analysis_queries.sql` → All SQL queries used for detailed analysis (run in MySQL Workbench)
- `README.md` → Project documentation

## How to Run the Project
1. Clone or download the repository
2. Open `Customer Churn Prediction and Retention Analytics.ipynb` in Google Colab
3. Run all cells
4. Import `churn_analysis_queries.sql` into MySQL Workbench and execute the queries
5. Explore the cleaned dataset

## Results & Impact
This project demonstrates the ability to:
- Clean and prepare real-world messy data
- Perform deep exploratory analysis
- Translate technical findings into clear business recommendations
- Use multiple tools (Python + SQL) effectively

## Future Enhancements
- Build an interactive **Power BI Dashboard** with multiple pages
- Develop a Machine Learning model to predict churn probability
- Customer Lifetime Value (CLV) calculation
- Cohort analysis for retention trends

Project developed as part of Data Analyst Portfolio**  
Date: July 2026  
**Author**: Gulshan Gupta

