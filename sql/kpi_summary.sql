SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS active_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS retention_rate,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charge,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_churn;