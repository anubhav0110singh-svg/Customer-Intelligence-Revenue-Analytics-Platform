-- Monthly revenue associated with churned customers

SELECT
    SUM(
        CASE
            WHEN Churn = 'Yes' THEN MonthlyCharges
            ELSE 0
        END
    ) AS monthly_revenue_at_risk
FROM silver_customer;
