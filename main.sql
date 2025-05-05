DROP TABLE IF EXISTS deserts ;
CREATE TABLE  deserts (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    desert VARCHER(50),
    quantity INTEGER,
    price DECIMAL(10,2),
    sales_date DATE
);

INSERT INTO deserts(sale_id,customer_name,desert,quantity,price,sales_date)
VALUES
(1,'Anna','choclate cupcakes',5,50,'2024-03-01'),
(2,'Aina','choclate cake',2,800,'2024-03-02'),
(3,'Lea','vanilla cake',3,1200,'2024-03-02'),
(4,'Ester','vanilla mousse',2,350,'2024-03-04'),
(5,'Mike','choclate cookies',6,300,'2024-03-05'),
(6,'Charlie','vanilla pudding',1,200,'2024-03-06'),
(7,'Kevin','brownies',6,200,'2024-03-07'),
(8,'Charles','choclate pudding',1,200,'2024-03-07'),
(9,'Lina','muffins',15,400,'2024-03-08'),
(10,'Kelvin','cheese cake',1,200,'2024-03-08');

SELECT * FROM deserts ;

SELECT * FROM deserts ORDER BY sales_date DESC LIMIT 3;

SELECT desert, SUM(price * quantity) AS Totalsales
FROM deserts
GROUP BY desert;