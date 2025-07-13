#Total purchases and spending per customer
SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    COUNT(i.InvoiceId) AS Total_Purchases,
    SUM(i.Total) AS Total_Spent
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY Total_Spent DESC;
