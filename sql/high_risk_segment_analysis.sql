WITH base AS (
    SELECT
        customerID,
        Contract,
        InternetService,
        TechSupport,
        PaymentMethod,
        Churn,
        CASE
            WHEN tenure <= 12 THEN '0-12 Months'
            WHEN tenure <= 24 THEN '13-24 Months'
            WHEN tenure <= 48 THEN '25-48 Months'
            ELSE '49+ Months'
        END AS tenure_group
    FROM telco_churn
)

SELECT
    Contract,
    tenure_group,
    InternetService,
    TechSupport,
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM base
GROUP BY
    Contract,
    tenure_group,
    InternetService,
    TechSupport,
    PaymentMethod
HAVING COUNT(*) >= 30
ORDER BY churn_rate DESC, total_customers DESC;