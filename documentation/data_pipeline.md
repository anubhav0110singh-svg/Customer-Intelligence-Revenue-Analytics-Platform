# Data Pipeline Documentation

## Overview

This project uses Microsoft Fabric and a Medallion Architecture to process customer churn data through Bronze, Silver, and Gold layers.

## Pipeline Architecture

Raw CSV
    ↓
Lakehouse Files
    ↓
Dataflow Gen2
    ↓
Bronze Layer
    ↓
Dataflow Gen2
    ↓
Silver Layer
    ↓
Gold Layer
    ↓
Power BI Dashboard

---

# Bronze Layer

## Table

`bronze_customer`

## Source

WA_Fn-UseC_-Telco-Customer-Churn.csv

## Storage

Microsoft Fabric Lakehouse:

`customer_intelligence_lakehouse`

## Ingestion Tool

Microsoft Fabric Dataflow Gen2

## Bronze Layer Approach

The Bronze layer preserves the ingested source data with minimal transformation.

The first row of the CSV was promoted as column headers before loading the data into the Lakehouse.

---

# Silver Layer

## Table

`silver_customer`

## Source

`bronze_customer`

## Transformation Tool

Microsoft Fabric Dataflow Gen2

## Data Quality Transformations

### TotalCharges Missing Values

Approximately 1% of the `TotalCharges` values were empty.

The corresponding customer records had a `tenure` value of `0`, indicating that these customers had not yet accumulated historical charges.

The missing `TotalCharges` values were replaced with `0`.

### Customer ID Validation

The `customerID` column was validated and found to be:

- 100% distinct
- 100% unique

Therefore, no duplicate customer records were found.

### Data Types

All column data types were reviewed and validated.

### Null and Error Validation

After cleaning, the dataset contained:

- No remaining null values
- No data errors

### Categorical Values

Values such as:

- `No phone service`
- `No internet service`

were preserved because they represent different business situations from a simple `No`.

---

# Current Pipeline

```text
Raw CSV
   ↓
bronze_customer
   ↓
Data Cleaning and Validation
   ↓
silver_customer
