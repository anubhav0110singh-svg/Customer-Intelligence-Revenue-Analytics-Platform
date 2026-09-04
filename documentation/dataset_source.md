# Dataset Source

## Dataset Name

Telco Customer Churn Dataset

## Source

The dataset used in this project is the IBM Telco Customer Churn dataset.

## Description

The dataset contains customer information from a telecommunications company, including demographic information, account details, subscribed services, monthly charges, total charges, and customer churn status.

Each row represents one customer.

## Key Business Use

The dataset is used to analyze:

- Customer churn patterns
- Customer segments
- Contract types
- Service usage
- Monthly and total charges
- Revenue exposure
- High-risk customers

## Dataset File

`WA_Fn-UseC_-Telco-Customer-Churn.csv`

## Usage in This Project

The dataset is used as the raw source for the Microsoft Fabric Lakehouse pipeline.

```text
Raw CSV
   ↓
Lakehouse Files
   ↓
Bronze Layer
   ↓
Silver Layer
   ↓
Gold Layer
   ↓
Power BI Dashboard
