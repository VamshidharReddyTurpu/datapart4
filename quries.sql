INSERT INTO customer(customer_id,customer_name,product_name,delivery_date)
VALUES('c4','johnes','home cleaner','2022-2-1')



 USE projecthome;
 UPDATE product
SET product_name='savlon',quantity='6 pices' ,price=280
WHERE product_id='product3';


 DELETE FROM customer WHERE customer_id='c4';

USE projecthome;
                  SELECT supplier_name,product_id
                   FROM supplier
                   ORDER BY supplier_name, customer_name desc


USE projecthome;
SELECT customer_name
FROM product_order
WHERE customer_name='Linnea';


USE projecthome;
SELECT customer.customer_id, product_order.customer_name
FROM customer
INNER JOIN product_order ON customer.customer_id=product_order.product_name;

 USE projecthome;
SELECT MAX(price)
 FROM product

USE projecthome;
SELECT MIN(total_cost)
FROM payment


USE projecthome;
SELECT AVG(total_pay_amount)
FROM payment


USE projecthome;
SELECT COUNT(customer_name)
FROM supplier


USE projecthome;
SELECT price AS product_price
FROM product;
