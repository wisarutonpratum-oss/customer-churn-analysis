WITH tenure_grouping AS (
    SELECT
        customerID,
        tenure,
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
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM tenure_grouping
GROUP BY tenure_group
ORDER BY
    CASE
        WHEN tenure_group = '0-12 Months' THEN 1
        WHEN tenure_group = '13-24 Months' THEN 2
        WHEN tenure_group = '25-48 Months' THEN 3
        ELSE 4
    END;