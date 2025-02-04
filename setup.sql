-- ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'my-secret-pw';

-- FLUSH PRIVILEGES;

-- Ensure the user exists before altering
SELECT COUNT(*) INTO @user_exists FROM mysql.user WHERE user = 'root' AND host = '%';
SET @alter_stmt = IF(@user_exists > 0, 'ALTER USER ''root''@''%'' IDENTIFIED WITH mysql_native_password BY ''my-secret-pw'';', 'SELECT 1;');
PREPARE stmt FROM @alter_stmt;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

FLUSH PRIVILEGES;

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