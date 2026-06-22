SELECT
    Churn,
    COUNT(*) AS total_customers,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM telco_churn), 2) AS customer_share_pct
FROM telco_churn
GROUP BY Churn;