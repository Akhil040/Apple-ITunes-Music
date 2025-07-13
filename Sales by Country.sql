#Sales by Country
SELECT 
    c.Country,
    SUM(i.Total) AS Revenue
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY Revenue DESC;
