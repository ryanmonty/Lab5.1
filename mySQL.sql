SELECT * FROM Customers;
SELECT DISTINCT country_region FROM Customers;
SELECT * FROM Customers WHERE id LIKE 'BL%';
SELECT * FROM Customers LIMIT 100;
SELECT * FROM Customers WHERE zip_postal_code = 1010 OR zip_postal_code = 3012 OR zip_postal_code = 12209 OR zip_postal_code = 05023;
SELECT * FROM Customers WHERE ShipRegion <> NULL;
SELECT * FROM Customers ORDER BY country_region, city;
INSERT INTO Customers (id, company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, fax_number, address, city, state_province, zip_postal_code, country_region, web_page, notes, attachments)
VALUES (31, "Ottava Via", "Montelibano", "Ryan", null, "Server", null, null, "(248)495-5844", null, "4314 Commonwealth", "Detroit", "MI", 48208, "USA", null, null, null);
UPDATE Orders SET ShipRegion = "EuroZone" WHERE ShipCountry = "France";
DELETE FROM order_details WHERE quantity = 1;
SELECT MAX(quantity) as BigValue, AVG(quantity) as AvgValue, MIN(quantity) as MinValue FROM order_details;
SELECT MAX(quantity) as BigValue, AVG(quantity) as AvgValue, MIN(quantity) as MinValue FROM order_details GROUP BY orderid;
SELECT CustomerID FROM Orders WHERE "order" = 10290;
SELECT * FROM Customers INNER JOIN Orders ON customers.id = orders.customer_id;
SELECT * FROM Customers LEFT JOIN Orders ON customers.id = orders.customer_id;
SELECT * FROM Customers RIGHT JOIN Orders ON customers.id = orders.customer_id;




