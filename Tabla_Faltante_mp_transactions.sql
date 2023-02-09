CREATE TABLE IF NOT EXISTS `[Db_PREFIX]_mp_transactions` (
  `id_mp_transaction` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_id` INT(10) UNSIGNED NOT NULL,
  `order_id` INT(10) UNSIGNED NULL,
  `customer_id` INT(11) UNSIGNED NOT NULL,
  `total` DECIMAL(15,2) NULL,
  `payment_id` VARCHAR(100) NULL,
  `payment_method` VARCHAR(100) NULL,
  `payment_type` VARCHAR(100) NULL,
  `payment_status` VARCHAR(100) NULL,
  `payment_amount` VARCHAR(100) NULL,
  `merchant_order_id` VARCHAR(100) NULL,
  `notification_url` TEXT NULL,
  `is_payment_test` TINYINT(1) NULL,
  `received_webhook` TINYINT(1) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `mp_module_id` INT NOT NULL,
  PRIMARY KEY (`id_mp_transaction`),
  CONSTRAINT `mp_module_id_fk`
    FOREIGN KEY (`mp_module_id`)
    REFERENCES `[Db_PREFIX]_mp_module` (`id_mp_module`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;