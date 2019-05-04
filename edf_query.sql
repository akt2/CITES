CREATE DATABASE cites;
USE cites;
CREATE TABLE esl(
	id INT NOT NULL AUTO_INCREMENT,
    scientific_name VARCHAR(50) NOT NULL,
    common_name VARCHAR(50),
    species_code VARCHAR(20),
    population_code VARCHAR(20),
    lead_region VARCHAR(20),
    federal_listing_status VARCHAR(50),
    where_listed VARCHAR(100),
    PRIMARY KEY (id)
    );

USE cites;
SELECT scientific_name,common_name,federal_listing_status FROM esl;
