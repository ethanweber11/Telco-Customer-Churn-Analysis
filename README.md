# Telco-Customer-Churn-Analysis

## Project Description
This project analyzes customer churn data from Telco to identify trends across departments, tenure, contract, etc. 
PostgreSQL was used to create the database, import and transform the data, and answer the initial business questions. R was also used
for more statistically heavy analysis, and three logistic regression models were fit and analyzed. 


## Project Objectives
- Find the total number of customers and the total number of customers churned from the data.
- Find the overall churn rate for this sample of customers.
- Identify the average tenure and churn rate by other categories
- Create logistic regression models in R for deeper statistical analysis


## Business Questions
- How many customers have churned and what is the overall churn rate for this group?
- For certain variables, are there higher churn rates between categories?
- What variables cause the greatest change in churn rate?



## Tools Used:
- PostgreSQL
- pgAdmin 4
- SQL
- R
- GitHub


## Dataset
The dataset used contains individual records for each customer from Telco. Each row represents a customer and the data collected about them.
The dataset includes variables such as:
- Gender
- Senior Citizen
- Partner and Dependents
- Tenure
- Phone Service
- Online Security and Backup


## Dataset Size
- Number of rows: 7,043
- Number of columns: 21


## Data Preparation for Analysis
1. Create customer_data dataframe and include all variables and data types in the dataset
2. Import CSV data into the dataframe
3. Check data types and null counts


## SQL Analysis
The SQL analysis was organized into:
- Key performance indicators
  - Total customer count
  - Total customers churned
  - Total churn rate
  - Average tenure
- Churn rate between groups in categories by:
  - Gender
  - Senior Citizen
  - Partner
  - Dependents
  - Phone Service
  - Contract


## R Analysis
The R analysis was organized into:
- Changing churn values from Yes/No to 1/0
- Fitting a logistic regression model where churn is the dependent variable, and gender is the only predictor
- Fitting a second logistic regression model where churn is the dependent variable and the predictors are:
  - Gender
  - Partner
  - Dependents
  - Tenure
  - Internet Security
  - Online Security
  - Tech Support
  - Contract
  - Paperless Billing
  - Monthly Charges
- Fitting a third logistic model removing:
  - Partner
  - Dependents


## Key Findings
- The total customers churned was 1,869
- The overall churn rate was 26.54%
- The average tenure was 32.37 months
- Customers with month-to-month contracts had a much higher churn rate of 42.71% compared to 11.27% for one-year contracts, and 2.83% for two-year contracts.


## Author

Ethan Weber

LinkedIn: www.linkedin.com/in/ethan-weber-a98770229

GitHub: www.github.com/ethanweber11


























