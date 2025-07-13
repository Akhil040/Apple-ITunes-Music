#Monthly Revenue Trends
SELECT 
    DATE_FORMAT(i.InvoiceDate, '%Y-%m') AS Invoice_Month,
    SUM(i.Total) AS Monthly_Revenue
FROM invoice i
GROUP BY Invoice_Month
ORDER BY Invoice_Month;
