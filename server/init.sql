CREATE DATABASE hackday_db;
USE hackday_db;
CREATE TABLE hacker(
			 id      INT PRIMARY KEY AUTO_INCREMENT,
		     name    VARCHAR(32),
			 email   VARCHAR(64),
			 phone   VARCHAR(32),
			 team    VARCHAR(32),
			 subject VARCHAR(128),
			 message VARCHAR(4096),
			 time_stemp DATETIME);

CREATE TABLE team(
			 id      INT PRIMARY KEY AUTO_INCREMENT,
			 name    VARCHAR(32),
			 leader  INT,
			 member_1 INT,
			 member_2 INT);