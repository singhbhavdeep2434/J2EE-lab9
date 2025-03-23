CREATE DATABASE stock_trading;
USE stock_trading;

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stock VARCHAR(50),
    quantity INT,
    status VARCHAR(20)
);