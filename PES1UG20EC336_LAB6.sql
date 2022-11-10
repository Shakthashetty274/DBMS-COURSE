SELECT AVG(Price) FROM Parts;
SELECT i.salespersonid FROM Invoice AS i WHERE i.total_bill > (SELECT AVG(i.total_bill) FROM Invoice AS i);
SELECT MAX(Total_Bill), MIN(Total_Bill), SUM(Total_Bill), AVG(Total_Bill), COUNT(Total_Bill) FROM Invoice;
SELECT * FROM parts WHERE price = (SELECT MAX(price) FROM parts);
SELECT * FROM Parts WHERE Parts.price > (SELECT AVG(price) FROM Parts);
SELECT COUNT(*), city FROM dealer GROUP BY city;
SELECT i.cust_id, AVG(total_bill) FROM Invoice i, Customer c WHERE i.cust_id=c.cust_id GROUP BY (c.cust_id) HAVING COUNT(*)>1;
SELECT b.vin, model FROM service_ticket s, bike b WHERE s.vin=b.vin GROUP BY vin HAVING COUNT(*)>1;

