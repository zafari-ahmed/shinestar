CREATE TABLE IF NOT EXISTS `booking_call_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `call_details` text NOT NULL,
  `remarks` text NOT NULL,
  `booking_status` int NOT NULL COMMENT 'hold,cancel,transfer',
  `call_status` int NOT NULL COMMENT 'user busy, call not recieved',
  `next_reminder` date NOT NULL,
  `call_audio_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bch_booking_id` (`booking_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
