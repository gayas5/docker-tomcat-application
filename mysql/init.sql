CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO users(name) VALUES ('Docker User'), ('Jakarta EE');
