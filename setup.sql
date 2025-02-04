-- create the databases
CREATE DATABASE IF NOT EXISTS test;

USE test;

CREATE TABLE books (
    id int NOT NULL,
    title varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    cover varchar(255),
    price int NOT NULL,
    PRIMARY KEY (ID)
);