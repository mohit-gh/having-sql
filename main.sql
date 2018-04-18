----Query for where country have atleast 2 customers-------
select count(customerid) as totalcust, country
from customers
group by country
having totalcust=2

----Query for where country have more than 2 customers and in decrease order-------
select country, count(customerid) as totcust
from Customers
group by country
having totcust>1
order by totcust desc

---Query for where customers have more than 1 order----
SELECT count( orders.orderid ) AS totord, Customers.customername
FROM Customers
INNER JOIN orders ON Customers.customerid = orders.customerid
GROUP BY Customers.customername
HAVING totord >1

---Query for where customers have more than 1 order and customer name is 'Berglunds snabbköp'---
SELECT count( orders.orderid ) AS totord, Customers.customername
FROM Customers
INNER JOIN orders ON Customers.customerid = orders.customerid
WHERE Customers.customername = 'Berglunds snabbköp'
GROUP BY Customers.customername
HAVING totord >1
