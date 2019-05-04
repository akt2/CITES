CREATE DATABASE ETL_db;

USE ETL_db;

CREATE TABLE mammals (
id INT AUTO_INCREMENT NOT NULL,
scientific_name VARCHAR(50),
common_name VARCHAR(50),
iucn_status VARCHAR(50),
PRIMARY KEY (id)
);

 