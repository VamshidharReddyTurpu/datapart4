CREATE TABLE payment (
    payment_id VARCHAR(56),
    total_cost INT(18),
    total_pay_amount INT(18),
   method_of_pay VARCHAR(56)
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\comp\\OneDrive\\Desktop\\payment.csv' REPLACE INTO TABLE `projecthome`.`payment` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`payment_id`, `total_cost`, `total_pay_amount`, `method_of_pay`);



CREATE TABLE customer (
    customer_id VARCHAR(56),
    customer_name VARCHAR(56),
    product_name VARCHAR(56),
   delivery_date date
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\comp\\OneDrive\\Desktop\\customer.csv' REPLACE INTO TABLE `projecthome`.`customer` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`customer_id`, `customer_name`, `product_name`, `delivery_date`);




CREATE TABLE product (
    product_id VARCHAR(56),
    product_name VARCHAR(56),
    quantity VARCHAR(56),
    price int
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\comp\\OneDrive\\Desktop\\product.csv' REPLACE INTO TABLE `projecthome`.`product` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`product_id`, `product_name`, `quantity`, `price`);

CREATE TABLE product_order (
    order_id VARCHAR(56),
    customer_name VARCHAR(56),
    product_name VARCHAR(56),
    delivery_date date
);

LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\comp\\OneDrive\\Desktop\\product_order.csv' REPLACE INTO TABLE `projecthome`.`product_order` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`order_id`, `customer_name`, `product_name`, `delivery_date`);

CREATE TABLE supplier (
    supplier_id VARCHAR(56),
    supplier_name VARCHAR(56),
    product_id VARCHAR(56),
    customer_name VARCHAR(56)
);
LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\comp\\OneDrive\\Desktop\\supplier.csv' REPLACE INTO TABLE `projecthome`.`supplier` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`supplier_id`, `supplier_name`, `product_id`, `customer_name`);

