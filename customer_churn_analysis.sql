SELECT * FROM customer_data;
DROP TABLE customer_data;
CREATE TABLE customer_data (customerID text,
							gender text,
							SeniorCitizen int,
							Partner text,
							Dependents text,
							tenure int,
							PhoneService text,
							MultipleLines text,
							InternetService text,
							OnlineSecurity text,
							OnlineBackup text,
							DeviceProtection text,
							TechSupport text,
							StreamingTV text,
							StreamingMovies text,
							Contract text,
							PaperlessBilling text,
							PaymentMethod text,
							MonthlyCharges float,
							TotalCharges text,
							Churn text);
							
					

--Total Customers
SELECT count(*) AS total_customers
	FROM customer_data;


--Total Customers Churned
SELECT count(*) AS customers_churned
	FROM customer_data
	WHERE Churn = 'Yes';


--Total Churn Rate
SELECT 
	round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS churn_rate
	FROM customer_data;


--Average Tenure
SELECT round(avg(tenure), 2) AS average_tenure_months
	FROM customer_data;







--Total Churn by gender
SELECT gender, count(*) AS customers_churned
	FROM customer_data
	WHERE Churn = 'Yes'
	GROUP BY gender;


--Total senior citizen churn
SELECT count(*) AS total_seniors, 
	   count(*) FILTER (WHERE Churn = 'Yes') AS seniors_churned,
	   round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS senior_churn_rate
	FROM customer_data
	WHERE seniorcitizen = 1;


--Partner churn rate
SELECT
    Partner,
    count(*) AS total_customers,
    count(*) FILTER (WHERE Churn = 'Yes') AS customers_churned,
    round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS churn_rate
FROM customer_data
GROUP BY Partner;


--Dependents churn rate
SELECT
    Dependents,
    count(*) AS total_customers,
    count(*) FILTER (WHERE Churn = 'Yes') AS customers_churned,
    round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS churn_rate
FROM customer_data
GROUP BY Dependents;


--Phone service churn rate
SELECT
    PhoneService,
    count(*) AS total_customers,
    count(*) FILTER (WHERE Churn = 'Yes') AS customers_churned,
    round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS churn_rate
FROM customer_data
GROUP BY PhoneService;


--Contract churn rate
SELECT
    Contract,
    count(*) AS total_customers,
    count(*) FILTER (WHERE Churn = 'Yes') AS customers_churned,
    round(100.0 * count(*) FILTER (WHERE Churn = 'Yes') / count(*), 2) AS churn_rate
FROM customer_data
GROUP BY Contract;


































