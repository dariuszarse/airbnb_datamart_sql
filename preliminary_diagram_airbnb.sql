CREATE TABLE `locations`(
    `address_id` INT NOT NULL AUTO_INCREMENT,
    `country` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `street` VARCHAR(255) NOT NULL,
    `house_number` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `locations` ADD PRIMARY KEY(`address_id`);
CREATE TABLE `bookings`(
    `booking_id` INT NOT NULL AUTO_INCREMENT,
    `host_id` INT NOT NULL,
    `guest_id` INT NOT NULL,
    `booking_start` DATETIME NOT NULL,
    `booking_end` DATETIME NOT NULL
);
ALTER TABLE
    `bookings` ADD PRIMARY KEY(`booking_id`);
CREATE TABLE `reviews`(
    `review_id` INT NOT NULL AUTO_INCREMENT,
    `receiver_id` INT NOT NULL,
    `reviewer_id` INT NOT NULL,
    `rating` DOUBLE(8, 2) NOT NULL,
    `comment` TEXT NOT NULL
);
ALTER TABLE
    `reviews` ADD PRIMARY KEY(`review_id`);
CREATE TABLE `users`(
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `user_profile` INT NOT NULL,
    `user_property` INT NOT NULL,
    `user_rating` DOUBLE(8, 2) NOT NULL
);
ALTER TABLE
    `users` ADD PRIMARY KEY(`user_id`);
ALTER TABLE
    `users` ADD UNIQUE `users_user_profile_unique`(`user_profile`);
ALTER TABLE
    `users` ADD UNIQUE `users_user_property_unique`(`user_property`);
CREATE TABLE `properties`(
    `property_id` INT NOT NULL AUTO_INCREMENT,
    `property_owner` INT NOT NULL,
    `property_address` INT NOT NULL,
    `amenities` INT NOT NULL
);
ALTER TABLE
    `properties` ADD PRIMARY KEY(`property_id`);
CREATE TABLE `amenities`(
    `amenities_id` INT NOT NULL AUTO_INCREMENT,
    `property_id` INT NOT NULL,
    `bedrooms` INT NOT NULL,
    `bathrooms` INT NOT NULL,
    `size` DOUBLE(8, 2) NOT NULL,
    `wifi` TINYINT NOT NULL AUTO_INCREMENT
);
ALTER TABLE
    `amenities` ADD PRIMARY KEY(`amenities_id`);
CREATE TABLE `profiles`(
    `profile_id` INT NOT NULL AUTO_INCREMENT,
    `profile_owner` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `bio` TEXT NULL
);
ALTER TABLE
    `profiles` ADD PRIMARY KEY(`profile_id`);
ALTER TABLE
    `profiles` ADD UNIQUE `profiles_profile_owner_unique`(`profile_owner`);
ALTER TABLE
    `profiles` ADD CONSTRAINT `profiles_profile_owner_foreign` FOREIGN KEY(`profile_owner`) REFERENCES `users`(`user_id`);
ALTER TABLE
    `amenities` ADD CONSTRAINT `amenities_property_id_foreign` FOREIGN KEY(`property_id`) REFERENCES `properties`(`property_id`);
ALTER TABLE
    `properties` ADD CONSTRAINT `properties_property_owner_foreign` FOREIGN KEY(`property_owner`) REFERENCES `users`(`user_id`);
ALTER TABLE
    `bookings` ADD CONSTRAINT `bookings_host_id_foreign` FOREIGN KEY(`host_id`) REFERENCES `users`(`user_id`);
ALTER TABLE
    `bookings` ADD CONSTRAINT `bookings_guest_id_foreign` FOREIGN KEY(`guest_id`) REFERENCES `users`(`user_id`);
ALTER TABLE
    `reviews` ADD CONSTRAINT `reviews_receiver_id_foreign` FOREIGN KEY(`receiver_id`) REFERENCES `bookings`(`host_id`);
ALTER TABLE
    `properties` ADD CONSTRAINT `properties_property_address_foreign` FOREIGN KEY(`property_address`) REFERENCES `locations`(`address_id`);
ALTER TABLE
    `reviews` ADD CONSTRAINT `reviews_reviewer_id_foreign` FOREIGN KEY(`reviewer_id`) REFERENCES `bookings`(`guest_id`);