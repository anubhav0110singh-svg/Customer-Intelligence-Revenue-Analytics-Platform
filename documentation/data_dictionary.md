# Data Dictionary

## Dataset Overview

This dataset contains customer information from a telecommunications company. Each row represents one customer.

| Column | Description |
|---|---|
| customerID | Unique identifier for each customer |
| gender | Gender of the customer |
| SeniorCitizen | Indicates whether the customer is a senior citizen |
| Partner | Indicates whether the customer has a partner |
| Dependents | Indicates whether the customer has dependents |
| tenure | Number of months the customer has been with the company |
| PhoneService | Indicates whether the customer has phone service |
| MultipleLines | Indicates whether the customer has multiple phone lines |
| InternetService | Type of internet service used by the customer |
| OnlineSecurity | Indicates whether the customer has online security |
| OnlineBackup | Indicates whether the customer has online backup |
| DeviceProtection | Indicates whether the customer has device protection |
| TechSupport | Indicates whether the customer has technical support |
| StreamingTV | Indicates whether the customer has TV streaming service |
| StreamingMovies | Indicates whether the customer has movie streaming service |
| Contract | Customer contract type |
| PaperlessBilling | Indicates whether the customer uses paperless billing |
| PaymentMethod | Customer payment method |
| MonthlyCharges | Amount charged to the customer per month |
| TotalCharges | Total amount charged to the customer |
| Churn | Indicates whether the customer left the company |

## Key Analytical Fields

The following fields will be particularly important for this project:

- Churn
- tenure
- Contract
- InternetService
- PaymentMethod
- MonthlyCharges
- TotalCharges

## Data Quality Considerations

The dataset will be validated for:

- Missing values
- Duplicate customer records
- Incorrect data types
- Invalid categorical values
- Numeric conversion issues
