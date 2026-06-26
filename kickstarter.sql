CREATE DATABASE kickstarter;

USE kickstarter;

CREATE TABLE ks_projects (
ID INT,
name VARCHAR(100),
category VARCHAR(100),
main_category VARCHAR(100),
currency CHAR(3),
deadline DATETIME,
goal INT,
launched DATETIME,
pledged INT,
state VARCHAR(100),
backers INT,
country CHAR(2),
usd_pledged INT,
Unnamed_13 FLOAT,
Unnamed_14 FLOAT,
Unnamed_15 FLOAT,
Unnamed_16 FLOAT
);

DESCRIBE ks_projects;

ALTER TABLE ks_projects
DROP COLUMN Unnamed_13,
DROP COLUMN Unnamed_14,
DROP COLUMN Unnamed_15,
DROP COLUMN Unnamed_16;

ALTER TABLE ks_projects
MODIFY COLUMN usd_pledged TEXT;

ALTER TABLE ks_projects
MODIFY COLUMN country VARCHAR(200);

ALTER TABLE ks_projects
MODIFY COLUMN currency CHAR(5);

SELECT COUNT(*) FROM ks_projects;

SELECT DATABASE();

SHOW TABLES;

SELECT * FROM ks_projects;
