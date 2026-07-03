-- =============================================
-- CUSTOMER CHURN ANALYSIS QUERIES
-- Telco Customer Churn Dataset
-- =============================================

-- 1. Basic Overview
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Overall_Churn_Rate_Pct
FROM customers;

-- 2. Churn Rate by Contract Type (Very Important)
SELECT 
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Pct
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate_Pct DESC;

-- 3. Churn by Internet Service and Tech Support
SELECT 
    InternetService,
    TechSupport,
    COUNT(*) AS Total,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Pct
FROM customers
GROUP BY InternetService, TechSupport
ORDER BY Churn_Rate_Pct DESC;

-- 4. Churn by Payment Method
SELECT 
    PaymentMethod,
    COUNT(*) AS Total,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Pct
FROM customers
GROUP BY PaymentMethod
ORDER BY Churn_Rate_Pct DESC;

-- 5. Churn by Demographics
SELECT 
    SeniorCitizen,
    Partner,
    Dependents,
    COUNT(*) AS Total,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Pct
FROM customers
GROUP BY SeniorCitizen, Partner, Dependents
ORDER BY Churn_Rate_Pct DESC;

-- 6. High-Risk Customers (For Retention Targeting)
SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    TotalCharges,
    Contract,
    InternetService,
    TechSupport
FROM customers
WHERE Churn = 'Yes'
  AND tenure <= 12
ORDER BY MonthlyCharges DESC;

-- 7. Average Charges by Tenure Group and Churn
SELECT 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-1 Year'
        WHEN tenure BETWEEN 13 AND 24 THEN '1-2 Years'
        WHEN tenure BETWEEN 25 AND 48 THEN '2-4 Years'
        WHEN tenure BETWEEN 49 AND 72 THEN '4-6 Years'
        ELSE '6+ Years' 
    END AS Tenure_Group,
    Churn,
    COUNT(*) AS Customer_Count,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charge
FROM customers
GROUP BY 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-1 Year'
        WHEN tenure BETWEEN 13 AND 24 THEN '1-2 Years'
        WHEN tenure BETWEEN 25 AND 48 THEN '2-4 Years'
        WHEN tenure BETWEEN 49 AND 72 THEN '4-6 Years'
        ELSE '6+ Years' 
    END, Churn
ORDER BY Tenure_Group, Churn;

-- 8. Revenue at Risk
SELECT 
    ROUND(SUM(MonthlyCharges), 2) AS Monthly_Revenue_At_Risk,
    COUNT(*) AS Number_of_Churned_Customers
FROM customers
WHERE Churn = 'Yes';