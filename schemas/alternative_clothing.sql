USE alternative_clothing;

CREATE TABLE IF NOT EXISTS `User` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `email` VARCHAR(300) NOT NULL,
    `password` VARCHAR(700) NOT NULL,
    `name` VARCHAR(300) NOT NULL,
    `surname` VARCHAR(300) NOT NULL,
    `birthdate` DATE NOT NULL,
    `time_of_creation` DATETIME NOT NULL,
    `active` BOOLEAN NOT NULL -- THIS EQUALS TINYINT FOR MYSQL
);

-- ALTER TABLE `User` ADD COLUMN `password` VARCHAR(700) NOT NULL AFTER `email`;

CREATE TABLE IF NOT EXISTS `District` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(300),
    `latitude` DECIMAL(16,6),
    `longitude` DECIMAL(16,6),
    `postalCode` VARCHAR(100),
    `zipCode` VARCHAR(100),
    `ubigeo` VARCHAR(100),
    `department_id` INT,
    FOREIGN KEY `Fk_District_Department`(`department_id`) REFERENCES `Department`(`id`)
);

CREATE TABLE IF NOT EXISTS `Department` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(300),
    `latitude` DECIMAL(16,6),
    `longitude` DECIMAL(16,6),
    `ubigeo` VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS `Address` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `address_text` VARCHAR(300) NOT NULL,
    `latitude` DECIMAL(16,6),
    `longitude` DECIMAL(16,6),
    `user_id` INT NOT NULL,
    `district_id` INT NOT NULL,
    `department_id` INT NOT NULL,
    FOREIGN KEY `Fk_Address_User`(`user_id`) REFERENCES `User`(`id`),
    FOREIGN KEY `Fk_Address_District`(`district_id`) REFERENCES `District`(`id`),
    FOREIGN KEY `Fk_Address_Department`(`department_id`) REFERENCES `Department`(`id`)
);

CREATE TABLE IF NOT EXISTS `Promo` {
    `id` INT PRIMARY KEY AUTO_INCREMENT,
}

CREATE TABLE IF NOT EXISTS `Category` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    ``
);

CREATE TABLE IF NOT EXISTS `SubCategory` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    
);

CREATE TABLE IF NOT EXISTS `Product` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS `Cart` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS `CartProduct` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS `Invoice` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS `InvoiceLine`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
);