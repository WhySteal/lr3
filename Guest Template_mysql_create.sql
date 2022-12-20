CREATE TABLE `Product` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`grade` FLOAT,
	`created_at` DATETIME,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Order` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`number` INT NOT NULL,
	`created_at` DATETIME NOT NULL,
	`client_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`amount` FLOAT NOT NULL,
	`measure_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Client` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`adres` VARCHAR(255) NOT NULL,
	`type_id` INT NOT NULL,
	`phone` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Type` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Measure` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`client_id`) REFERENCES `Client`(`id`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk1` FOREIGN KEY (`product_id`) REFERENCES `Product`(`id`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk2` FOREIGN KEY (`measure_id`) REFERENCES `Measure`(`id`);

ALTER TABLE `Client` ADD CONSTRAINT `Client_fk0` FOREIGN KEY (`type_id`) REFERENCES `Type`(`id`);






lr2