-- Tech Support
SELECT
    'TechSupport' AS service_type,
    TechSupport AS service_status,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn
GROUP BY TechSupport

UNION ALL

-- Online Security
SELECT
    'OnlineSecurity' AS service_type,
    OnlineSecurity AS service_status,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn
GROUP BY OnlineSecurity

UNION ALL

-- Online Backup
SELECT
    'OnlineBackup' AS service_type,
    OnlineBackup AS service_status,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn
GROUP BY OnlineBackup

UNION ALL

-- Device Protection
SELECT
    'DeviceProtection' AS service_type,
    DeviceProtection AS service_status,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn
GROUP BY DeviceProtection;