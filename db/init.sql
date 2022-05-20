use takeme;

-- PARENT TABLES
CREATE TABLE `Languages`(
    `id` varchar(50) NOT NULL,
    `name` TINYTEXT NOT NULL,
    `locale` TINYTEXT NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`name`, `locale`)
) ENGINE = innodb DEFAULT CHARSET = utf8;
-- TABLES
CREATE TABLE `take_me_details`(
    `id` varchar(50) NOT NULL,
    `name` TINYTEXT NOT NULL,
    `locale` TINYTEXT NOT NULL,
    `logo_path` TEXT NOT NULL,
    `cover_path` TEXT NOT NULL,
    `copy_right_year` INT(11) DEFAULT 2022,
    `facebook_link` TEXT NOT NULL,
    `instagram_link` TEXT NOT NULL,
    `tiktok_link` TEXT NOT NULL,
    `whatsapp_link` TEXT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Categories`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` TINYTEXT NOT NULL,
    `description` TEXT NOT NULL,
    `image_path` TEXT,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY(`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8;

-- create table `Categories_Products` (
--   `id` bigint(20) NOT NULL AUTO_INCREMENT,
--   `category_name` tinytext not null,
--   `product_type` text not null,
--   `estimate_amount` int(11) not null,//TODO What is estimate_amount?
--   `comments` text,
--   `created_date` date default CURRENT_DATE,
--   `updated_date` date default CURRENT_DATE,
--   primary key (`id`),
--   unique key (`category_name`,`product_type`)
-- ) engine = innodb default charset = utf8;

CREATE TABLE `Products`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `product_type` TINYTEXT NOT NULL,
    `product_name` TINYTEXT NOT NULL,
    `provider_id` BIGINT(20) NOT NULL,
    `category_id` BIGINT(20) NOT NULL,
    `order_type` TINYTEXT NOT NULL,
    `description` TEXT NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `rent_price_per_hour` INT(11) NOT NULL,
    `rent_price_per_day` INT(11) NOT NULL,
    `min_time_for_rent` INT(11) NOT NULL,
    `sale_price` INT(11) NOT NULL,
    `product_status_for_sale` TINYTEXT NOT NULL,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`product_name`, `provider_id`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Product_Images`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `product_id` BIGINT(20) NOT NULL,
    `image_path` TEXT NOT NULL,
    `language_id` BIGINT(20) NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(
        `product_id`,
        `image_path`,
        `language_id`
    )
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Providers`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` TINYTEXT NOT NULL,
    `phone` TINYTEXT NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `work_days_and_hours` TEXT NOT NULL,
    `order_min_duration` TEXT,
    `country` TINYTEXT NOT NULL,
    `city` TINYTEXT NOT NULL,
    `email` TINYTEXT,
    `signed_contract_link` TEXT,
    `active_status` TINYTEXT NOT NULL,
    `status_details` TEXT,
    `status_updated_date` DATE DEFAULT CURRENT_DATE,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`name`, `phone`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Customers`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `name` TINYTEXT NOT NULL,
    `phone` TINYTEXT NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `country` TINYTEXT NOT NULL,
    `city` TINYTEXT NOT NULL,
    `email` TINYTEXT,
    `signed_contract_link` TEXT,
    `active_status` TINYTEXT NOT NULL,
    `status_details` TEXT,
    `status_updated_date` DATE DEFAULT CURRENT_DATE,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`name`, `phone`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Orders`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` TEXT NOT NULL UNIQUE,
    `customer_id` BIGINT(20) NOT NULL,
    `provider_id` BIGINT(20) NOT NULL,
    `product_id` BIGINT(20) NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `status` TINYTEXT NOT NULL,
    `status_details` TEXT,
    `price` INT(11) NOT NULL,
    `invoice_link` TEXT,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`order_id`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Ratings`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` TEXT NOT NULL UNIQUE,
    `customer_id` BIGINT(20) NOT NULL,
    `provider_id` BIGINT(20) NOT NULL,
    `created_date` DATE DEFAULT CURRENT_DATE,
    `updated_date` DATE DEFAULT CURRENT_DATE,
    `customer_rating_score` INT(11) NOT NULL,
    `customer_rating` TEXT NOT NULL,
    `provider_rating_score` INT(11) NOT NULL,
    `provider_rating` TEXT NOT NULL,
    `takeme_rating_score` INT(11) NOT NULL,
    `takeme_rating` TEXT NOT NULL,
    `comments` TEXT,
    PRIMARY KEY(`id`),
    UNIQUE KEY(`order_id`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

CREATE TABLE `Preferences`(
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_id` TINYTEXT NOT NULL,
    `lang_id` varchar(50) NOT NULL,
    CONSTRAINT `Fk_PreferenceLanguage` FOREIGN KEY(`lang_id`) REFERENCES `Languages`(`id`),
    PRIMARY KEY(`id`),
    UNIQUE KEY(`user_id`, `lang_id`)
) ENGINE = innodb DEFAULT CHARSET = utf8; 

INSERT INTO `take_me_details` 
(`id`, `name`, `locale`, `logo_path`,  `cover_path`, `copy_right_year`, `facebook_link`, `instagram_link`,  `tiktok_link`, `whatsapp_link`) VALUES
  ('TAKE_ME_AR', 'TakeMe', 'AR', 'n/a', 'n/a', 2022, 'n/a', 'n/a', 'n/a', 'n/a'),
  ('TAKE_ME_HE', 'TakeMe', 'HE', 'n/a', 'n/a', 2022, 'n/a', 'n/a', 'n/a', 'n/a');
  
INSERT INTO `categories`(`name`, `description`, `image_path`) VALUES ('cate1','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','url_string'),
('cate2','Sed maximus libero et nibh lobortis vehicula. Praesent.','url_string'),
('cate3','Maecenas enim odio, vestibulum interdum lobortis sit amet. ','url_string');

INSERT INTO `products`(
    `type`,
    `name`,
    `provider_id`,
    `category_id`,
    `order_type`,
    `description`,
    `rent_price_per_hour`,
    `rent_price_per_day`,
    `min_time_for_rent`,
    `sale_price`,
    `product_status_for_sale`,
    `comments`
)
VALUES(
    'type1',
    'name1',
    1,
    1,
    'Type1',
    'Sed ut euismod nulla. Nullam tempus luctus luctus. Donec ut volutpat dui. Integer mollis elit ullamcorper, porta sapien quis, interdum felis. P',
    '10',
    '40',
    3,
    1,
    'DONE',
    'Urna lorem.'
);

INSERT INTO `products`(
    `type`,
    `name`,
    `provider_id`,
    `category_id`,
    `order_type`,
    `description`,
    `rent_price_per_hour`,
    `rent_price_per_day`,
    `min_time_for_rent`,
    `sale_price`,
    `product_status_for_sale`,
    `comments`
)
VALUES(
    'type2',
    'name2',
    2,
    2,
    'Type2',
    'Sed ut euismod nulla. Nullam tempus luctus luctus. Donec ut volutpat dui. Integer mollis elit ullamcorper, porta sapien quis, interdum felis. P',
    '10',
    '40',
    3,
    1,
    'PENDING',
    'Urna lorem.'
);

INSERT INTO `products`(
    `type`,
    `name`,
    `provider_id`,
    `category_id`,
    `order_type`,
    `description`,
    `rent_price_per_hour`,
    `rent_price_per_day`,
    `min_time_for_rent`,
    `sale_price`,
    `product_status_for_sale`,
    `comments`
)
VALUES(
    'type3',
    'name3',
    2,
    1,
    'Type2',
    'Nullam tempus luctus luctus. Donec ut volutpat dui. Integer mollis elit ullamcorper, porta sapien quis, interdum felis. P',
    '10',
    '40',
    3,
    1,
    'OK',
    'Gur Urna lorem.'
);