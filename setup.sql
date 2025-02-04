-- ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'my-secret-pw';

-- FLUSH PRIVILEGES;

-- create the databases
CREATE DATABASE IF NOT EXISTS test;

USE test;

CREATE TABLE IF NOT EXISTS books (
    id int NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    cover varchar(255),
    price int NOT NULL,
    PRIMARY KEY (id)
);