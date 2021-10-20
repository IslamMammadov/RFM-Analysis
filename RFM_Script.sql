WITH RFM 
AS
(SELECT Customer_ID, SUM(Sales) AS Total_Sales
	,COUNT(Order_Date) AS Total_Orders
	,DATEDIFF(dd, MAX(Order_Date),GETDATE()) AS RecencyDays
	,MAX(Order_Date) AS Most_Recent_Date,
--Scoring Monetary values
CASE
	WHEN SUM(Sales) >= 5000 THEN 5
	WHEN SUM(Sales) > 3000   THEN 4
    WHEN SUM(Sales) > 1000   THEN 3
    WHEN SUM(Sales) > 500   THEN 2
    ELSE 1
END AS Cash,
--Scoring Recency
CASE
	WHEN DATEDIFF(dd, MAX(Order_Date),GETDATE()) <=30 THEN 5
	WHEN DATEDIFF(dd, MAX(Order_Date),GETDATE()) <=60 THEN 4
	WHEN DATEDIFF(dd, MAX(Order_Date),GETDATE()) <=180 THEN 3
	WHEN DATEDIFF(dd, MAX(Order_Date),GETDATE()) <=360 THEN 2
	ELSE 1
END AS Recency,
--Scoring Frequency
CASE
	WHEN COUNT(Order_Date) >=35 THEN 5
	WHEN COUNT(Order_Date) > 23 THEN 4
	WHEN COUNT(Order_Date) > 16 THEN 3
	WHEN COUNT(Order_Date) > 7 THEN 2
	ELSE 1
END AS Frequency
FROM SalesNew
GROUP BY Customer_ID)
SELECT *, CAST(Recency AS varchar(1))+CAST(Frequency AS varchar(1))+CAST( Cash AS varchar(1)) AS RFM_Score FROM RFM