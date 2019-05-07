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

CREATE TABLE cites(
    `year` INT NOT NULL,
    appendix VARCHAR(5) NOT NULL,
    taxon VARCHAR(50) NOT NULL,
    class VARCHAR(20) NOT NULL,
	`order` VARCHAR(50) NOT NULL,
    family VARCHAR(50) NOT NULL,
    genus VARCHAR(50) NOT NULL,
    importer VARCHAR(20),
    exporter VARCHAR(20),
    origin VARCHAR(20),
    import_reported_quantity VARCHAR(20),
    export_reported_quantity VARCHAR(20),
    term VARCHAR(100),
    unit VARCHAR(100),
    purpose VARCHAR(20),
    source VARCHAR(20),
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id));

USE cites;
ALTER TABLE cites CHANGE id tag INT NOT NULL AUTO_INCREMENT;
CREATE TABLE citesesl SELECT * FROM cites INNER JOIN esl ON esl.scientific_name = cites.taxon;
ALTER TABLE citesesl DROP COLUMN tag, DROP COLUMN id, DROP COLUMN scientific_name;
ALTER TABLE citesesl MODIFY COLUMN common_name VARCHAR(50) AFTER taxon;