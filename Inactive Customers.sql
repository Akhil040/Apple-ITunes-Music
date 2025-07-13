#Inactive Customers (No Purchases)
SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName
FROM customer c
LEFT JOIN invoice i ON c.CustomerId = i.CustomerId
WHERE i.CustomerId IS NULL;
