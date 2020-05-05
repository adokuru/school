-- -------------------------------------------------------------
-- TablePlus 2.11.2(278)
--
-- https://tableplus.com/
--
-- Database: ekattor_demo
-- Generation Time: 2019-12-24 18:43:05.1080
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `book_issues`;
CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `class_rooms`;
CREATE TABLE `class_rooms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `daily_attendances`;
CREATE TABLE `daily_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `enrols`;
CREATE TABLE `enrols` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `event_calendars`;
CREATE TABLE `event_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `starting_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(10) DEFAULT NULL,
  `session` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE `expense_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `frontend_events`;
CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-inactive, 1-active',
  `school_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`frontend_events_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `frontend_gallery`;
CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `show_on_website` int(11) NOT NULL DEFAULT '0' COMMENT '0-no 1-yes',
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`frontend_gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `frontend_gallery_image`;
CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`frontend_gallery_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE `frontend_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_us` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `terms_conditions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `privacy_policy` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `social_links` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `copyright_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `about_us_image` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `slider_images` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `theme` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `homepage_note_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `homepage_note_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `website_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_upto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `paid_amount` int(11) DEFAULT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL COMMENT 'This column is all about payment taking date',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT '0',
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `displayed_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `superadmin_access` int(11) NOT NULL DEFAULT '0',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `teacher_access` int(11) NOT NULL DEFAULT '0',
  `parent_access` int(11) NOT NULL DEFAULT '0',
  `student_access` int(11) NOT NULL DEFAULT '0',
  `accountant_access` int(11) NOT NULL DEFAULT '0',
  `librarian_access` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL DEFAULT '0' COMMENT 'If the value is 1 that means its an addon.',
  `unique_identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'It is mandatory for addons',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `notice` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `show_on_website` int(11) DEFAULT '0',
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `school_id` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `routines`;
CREATE TABLE `routines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_hour` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_hour` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_minute` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_minute` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `system_title` varchar(255) DEFAULT NULL,
  `system_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext,
  `purchase_code` varchar(255) DEFAULT NULL,
  `system_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `running_session` varchar(255) DEFAULT '',
  `language` varchar(255) DEFAULT NULL,
  `paypal_active` varchar(255) DEFAULT NULL,
  `paypal_mode` varchar(255) DEFAULT NULL,
  `paypal_client_id_sandbox` varchar(255) DEFAULT NULL,
  `paypal_client_id_production` varchar(255) DEFAULT NULL,
  `paypal_currency` varchar(255) DEFAULT NULL,
  `stripe_active` varchar(255) DEFAULT NULL,
  `stripe_mode` varchar(255) DEFAULT NULL,
  `stripe_test_secret_key` varchar(255) DEFAULT NULL,
  `stripe_test_public_key` varchar(255) DEFAULT NULL,
  `stripe_live_secret_key` varchar(255) DEFAULT NULL,
  `stripe_live_public_key` varchar(255) DEFAULT NULL,
  `stripe_currency` varchar(255) DEFAULT NULL,
  `student_email_verification` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `footer_link` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `smtp_settings`;
CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_sender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_protocol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_secure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_set_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_debug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_show_error` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `syllabuses`;
CREATE TABLE `syllabuses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `teacher_permissions`;
CREATE TABLE `teacher_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT '0',
  `assignment` int(11) DEFAULT '0',
  `attendance` int(11) DEFAULT '0',
  `online_exam` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `about` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `show_on_website` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `authentication_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('1', 'Leke', 'ALL', 'Lek', '0', '1'),
('2', 'Dollars', 'USD', '$', '1', '1'),
('3', 'Afghanis', 'AFN', '؋', '0', '1'),
('4', 'Pesos', 'ARS', '$', '0', '1'),
('5', 'Guilders', 'AWG', 'ƒ', '0', '1'),
('6', 'Dollars', 'AUD', '$', '1', '1'),
('7', 'New Manats', 'AZN', 'ман', '0', '1'),
('8', 'Dollars', 'BSD', '$', '0', '1'),
('9', 'Dollars', 'BBD', '$', '0', '1'),
('10', 'Rubles', 'BYR', 'p.', '0', '0'),
('11', 'Euro', 'EUR', '€', '1', '1'),
('12', 'Dollars', 'BZD', 'BZ$', '0', '1'),
('13', 'Dollars', 'BMD', '$', '0', '1'),
('14', 'Bolivianos', 'BOB', '$b', '0', '1'),
('15', 'Convertible Marka', 'BAM', 'KM', '0', '1'),
('16', 'Pula', 'BWP', 'P', '0', '1'),
('17', 'Leva', 'BGN', 'лв', '0', '1'),
('18', 'Reais', 'BRL', 'R$', '1', '1'),
('19', 'Pounds', 'GBP', '£', '1', '1'),
('20', 'Dollars', 'BND', '$', '0', '1'),
('21', 'Riels', 'KHR', '៛', '0', '1'),
('22', 'Dollars', 'CAD', '$', '1', '1'),
('23', 'Dollars', 'KYD', '$', '0', '1'),
('24', 'Pesos', 'CLP', '$', '0', '1'),
('25', 'Yuan Renminbi', 'CNY', '¥', '0', '1'),
('26', 'Pesos', 'COP', '$', '0', '1'),
('27', 'Colón', 'CRC', '₡', '0', '1'),
('28', 'Kuna', 'HRK', 'kn', '0', '1'),
('29', 'Pesos', 'CUP', '₱', '0', '0'),
('30', 'Koruny', 'CZK', 'Kč', '1', '1'),
('31', 'Kroner', 'DKK', 'kr', '1', '1'),
('32', 'Pesos', 'DOP ', 'RD$', '0', '1'),
('33', 'Dollars', 'XCD', '$', '0', '1'),
('34', 'Pounds', 'EGP', '£', '0', '1'),
('35', 'Colones', 'SVC', '$', '0', '0'),
('36', 'Pounds', 'FKP', '£', '0', '1'),
('37', 'Dollars', 'FJD', '$', '0', '1'),
('38', 'Cedis', 'GHC', '¢', '0', '0'),
('39', 'Pounds', 'GIP', '£', '0', '1'),
('40', 'Quetzales', 'GTQ', 'Q', '0', '1'),
('41', 'Pounds', 'GGP', '£', '0', '0'),
('42', 'Dollars', 'GYD', '$', '0', '1'),
('43', 'Lempiras', 'HNL', 'L', '0', '1'),
('44', 'Dollars', 'HKD', '$', '1', '1'),
('45', 'Forint', 'HUF', 'Ft', '1', '1'),
('46', 'Kronur', 'ISK', 'kr', '0', '1'),
('47', 'Rupees', 'INR', 'Rp', '1', '1'),
('48', 'Rupiahs', 'IDR', 'Rp', '0', '1'),
('49', 'Rials', 'IRR', '﷼', '0', '0'),
('50', 'Pounds', 'IMP', '£', '0', '0'),
('51', 'New Shekels', 'ILS', '₪', '1', '1'),
('52', 'Dollars', 'JMD', 'J$', '0', '1'),
('53', 'Yen', 'JPY', '¥', '1', '1'),
('54', 'Pounds', 'JEP', '£', '0', '0'),
('55', 'Tenge', 'KZT', 'лв', '0', '1'),
('56', 'Won', 'KPW', '₩', '0', '0'),
('57', 'Won', 'KRW', '₩', '0', '1'),
('58', 'Soms', 'KGS', 'лв', '0', '1'),
('59', 'Kips', 'LAK', '₭', '0', '1'),
('60', 'Lati', 'LVL', 'Ls', '0', '0'),
('61', 'Pounds', 'LBP', '£', '0', '1'),
('62', 'Dollars', 'LRD', '$', '0', '1'),
('63', 'Switzerland Francs', 'CHF', 'CHF', '1', '1'),
('64', 'Litai', 'LTL', 'Lt', '0', '0'),
('65', 'Denars', 'MKD', 'ден', '0', '1'),
('66', 'Ringgits', 'MYR', 'RM', '1', '1'),
('67', 'Rupees', 'MUR', '₨', '0', '1'),
('68', 'Pesos', 'MXN', '$', '1', '1'),
('69', 'Tugriks', 'MNT', '₮', '0', '1'),
('70', 'Meticais', 'MZN', 'MT', '0', '1'),
('71', 'Dollars', 'NAD', '$', '0', '1'),
('72', 'Rupees', 'NPR', '₨', '0', '1'),
('73', 'Guilders', 'ANG', 'ƒ', '0', '1'),
('74', 'Dollars', 'NZD', '$', '1', '1'),
('75', 'Cordobas', 'NIO', 'C$', '0', '1'),
('76', 'Nairas', 'NGN', '₦', '0', '1'),
('77', 'Krone', 'NOK', 'kr', '1', '1'),
('78', 'Rials', 'OMR', '﷼', '0', '0'),
('79', 'Rupees', 'PKR', '₨', '0', '1'),
('80', 'Balboa', 'PAB', 'B/.', '0', '1'),
('81', 'Guarani', 'PYG', 'Gs', '0', '1'),
('82', 'Nuevos Soles', 'PEN', 'S/.', '0', '1'),
('83', 'Pesos', 'PHP', 'Php', '1', '1'),
('84', 'Zlotych', 'PLN', 'zł', '1', '1'),
('85', 'Rials', 'QAR', '﷼', '0', '1'),
('86', 'New Lei', 'RON', 'lei', '0', '1'),
('87', 'Rubles', 'RUB', 'руб', '1', '1'),
('88', 'Pounds', 'SHP', '£', '0', '1'),
('89', 'Riyals', 'SAR', '﷼', '0', '1'),
('90', 'Dinars', 'RSD', 'Дин.', '0', '1'),
('91', 'Rupees', 'SCR', '₨', '0', '1'),
('92', 'Dollars', 'SGD', '$', '1', '1'),
('93', 'Dollars', 'SBD', '$', '0', '1'),
('94', 'Shillings', 'SOS', 'S', '0', '1'),
('95', 'Rand', 'ZAR', 'R', '0', '1'),
('96', 'Rupees', 'LKR', '₨', '0', '1'),
('97', 'Kronor', 'SEK', 'kr', '1', '1'),
('98', 'Dollars', 'SRD', '$', '0', '1'),
('99', 'Pounds', 'SYP', '£', '0', '0'),
('100', 'New Dollars', 'TWD', 'NT$', '1', '1'),
('101', 'Baht', 'THB', '฿', '1', '1'),
('102', 'Dollars', 'TTD', 'TT$', '0', '1'),
('103', 'Lira', 'TRY', 'TL', '0', '1'),
('104', 'Liras', 'TRL', '£', '0', '0'),
('105', 'Dollars', 'TVD', '$', '0', '0'),
('106', 'Hryvnia', 'UAH', '₴', '0', '1'),
('107', 'Pesos', 'UYU', '$U', '0', '1'),
('108', 'Sums', 'UZS', 'лв', '0', '1'),
('109', 'Bolivares Fuertes', 'VEF', 'Bs', '0', '0'),
('110', 'Dong', 'VND', '₫', '0', '1'),
('111', 'Rials', 'YER', '﷼', '0', '1'),
('112', 'Zimbabwe Dollars', 'ZWD', 'Z$', '0', '0');

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES ('1', '&lt;h1&gt;About Our Schools&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school historys&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our schools&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Terms of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Privacy policy of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '[{\"facebook\":\"http:\\/\\/www.facebook.com\\/ekattor\",\"twitter\":\"http:\\/\\/www.twitter.com\\/ekattor\",\"linkedin\":\"http:\\/\\/www.linkedin.com\\/ekattor\",\"google\":\"http:\\/\\/www.google.com\\/ekattor\",\"youtube\":\"http:\\/\\/www.youtube.com\\/ekattor\",\"instagram\":\"http:\\/\\/www.instagram.com\\/ekattor\"}]', 'All the rights reserved to Creativeitem', NULL, '[{\"title\":\"Education is the most powerful weapon\",\"description\":\"&quot;You can use education to change the world&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"slider1.jpg\"},{\"title\":\"Knowledge is power\",\"description\":\"&quot;Education is the premise of progress, in every society, in every family&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2.jpg\"},{\"title\":\"Have an aim in life, continuously acquire knowledge\",\"description\":\"&quot;Never stop fighting until you arrive at your destined place&quot; - &lt;i&gt;A.P.J. Abdul Kalam&lt;\\/i&gt;\",\"image\":\"1.jpg\"}]', 'ultimate', 'Welcome to Ekattor High School', 'Ekattor High School (NHS) is a public secondary school in Bellevue, Washington. It serves students in grades 9–12 in the southern part of the Bellevue School District, including the neighborhoods of Eastgate, Factoria, Newport Hills, Newport Shores, Somerset, The Summit, and Sunset. As of the 2014-2015 school year, the principal is Dion Yahoudy. The mascot is the Knight, and the school colors are scarlet and gold.', 'ekattor');

INSERT INTO `menus` (`id`, `displayed_name`, `route_name`, `parent`, `icon`, `status`, `superadmin_access`, `admin_access`, `teacher_access`, `parent_access`, `student_access`, `accountant_access`, `librarian_access`, `sort_order`, `is_addon`, `unique_identifier`) VALUES ('1', 'users', NULL, '0', 'dripicons-user', '1', '1', '1', '1', '1', '1', '0', '0', '10', '0', 'users'),
('2', 'admin', 'admin', '1', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '9', '0', 'admin'),
('3', 'student', 'student', '1', NULL, '1', '1', '1', '1', '0', '0', '0', '0', '10', '0', 'student'),
('4', 'teacher', 'teacher', '1', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '30', '0', 'teacher'),
('5', 'parent', 'parent', '1', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '50', '0', 'parent'),
('6', 'librarian', 'librarian', '1', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '70', '0', 'librarian'),
('7', 'accountant', 'accountant', '1', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '60', '0', 'accountant'),
('8', 'driver', NULL, '1', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '80', '0', 'driver'),
('9', 'academic', NULL, '0', 'dripicons-store', '1', '1', '1', '1', '1', '1', '0', '0', '20', '0', 'academic'),
('10', 'class', 'class', '9', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '40', '0', 'class'),
('11', 'section', NULL, '9', NULL, '0', '1', '1', '0', '0', '0', '0', '0', '50', '0', 'section'),
('12', 'class_room', 'class_room', '9', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '60', '0', 'class-room'),
('13', 'syllabus', 'syllabus', '9', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '30', '0', 'syllabus'),
('14', 'subject', 'subject', '9', NULL, '1', '1', '1', '1', '0', '1', '0', '0', '29', '0', 'subject'),
('15', 'class_routine', 'routine', '9', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '20', '0', 'class-routine'),
('16', 'daily_attendance', 'attendance', '9', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '10', '0', 'daily-attendance'),
('17', 'noticeboard', NULL, '9', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '110', '0', 'noticeboard'),
('18', 'promotion', 'promotion', '19', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '50', '0', 'promotion'),
('19', 'exam', NULL, '0', 'dripicons-to-do', '1', '1', '1', '1', '1', '1', '0', '0', '30', '0', 'exam'),
('20', 'exam', 'exam', '19', NULL, '1', '1', '1', '1', '0', '0', '0', '0', '20', '0', 'exam'),
('21', 'grades', 'grade', '19', NULL, '1', '1', '1', '0', '1', '1', '0', '0', '30', '0', 'grades'),
('22', 'marks', 'mark', '19', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '10', '0', 'marks'),
('23', 'tabulation_sheet', NULL, '19', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '40', '0', 'tabulation-sheet'),
('24', 'accounting', NULL, '0', 'dripicons-suitcase', '1', '1', '1', '0', '1', '1', '1', '0', '40', '0', 'accounting'),
('25', 'student_fee_manager', 'invoice', '24', NULL, '1', '1', '1', '0', '1', '1', '1', '0', '10', '0', 'student-fee-manager'),
('26', 'student_fee_report', NULL, '24', NULL, '0', '1', '0', '0', '0', '0', '1', '0', '20', '0', 'student-fee-report'),
('27', 'expense_manager', 'expense', '24', NULL, '1', '1', '1', '0', '0', '0', '1', '0', '40', '0', 'expense-manager'),
('28', 'back_office', NULL, '0', 'dripicons-archive', '1', '1', '1', '1', '1', '1', '0', '1', '50', '0', 'back-office'),
('29', 'library', NULL, '28', NULL, '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', 'library'),
('30', 'transport', NULL, '28', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'transport'),
('31', 'hostel', NULL, '28', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'hostel'),
('32', 'school_website', NULL, '28', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'school-website'),
('33', 'settings', NULL, '0', 'dripicons-cutlery', '1', '1', '1', '0', '0', '0', '0', '0', '60', '0', 'settings'),
('34', 'system_settings', 'system_settings', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '10', '0', 'system-settings'),
('36', 'payment_settings', 'payment_settings', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '20', '0', 'payment-settings'),
('37', 'language_settings', 'language', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '30', '0', 'language-settings'),
('38', 'session_manager', 'session_manager', '28', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'session-manager'),
('39', 'department', 'department', '9', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '70', '0', 'department'),
('40', 'admission', 'student/create', '1', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '20', '0', 'admission'),
('41', 'addon_manager', 'addon_manager', '28', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'addon-manager'),
('42', 'assignment', NULL, '9', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '90', '0', 'assignment'),
('43', 'event_calender', 'event_calendar', '9', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '100', '0', 'event-calender'),
('44', 'online_exam', NULL, '20', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '50', '0', 'online-exam'),
('45', 'certificate', NULL, '20', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '60', '0', 'certificate'),
('46', 'teacher_permission', 'permission', '1', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '40', '0', 'teacher-permission'),
('47', 'messaging', NULL, '1', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '110', '0', 'messaging'),
('48', 'role_permission', 'role.index', '1', NULL, '0', '1', '0', '0', '0', '0', '0', '0', '100', '0', 'role-permission'),
('49', 'form_builder', NULL, '32', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'form-builder'),
('50', 'book_list_manager', 'book', '29', NULL, '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', 'book-list-manager'),
('51', 'book_issue_report', 'book_issue', '29', NULL, '1', '1', '1', '0', '0', '1', '0', '1', '0', '0', 'book-issue-report'),
('52', 'room_manager', NULL, '31', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'room-manager'),
('53', 'student_report', NULL, '31', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'student-report'),
('55', 'expense_category', 'expense_category', '24', NULL, '1', '1', '1', '0', '0', '0', '1', '0', '30', '0', 'expense-category'),
('56', 'SMTP_settings', 'smtp_settings', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '50', '0', 'smtp-settings'),
('57', 'school_settings', 'school_settings', '33', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '12', '0', 'school-settings'),
('58', 'about', 'about', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '51', '0', 'about'),
('115', 'website_settings', 'website_settings', '33', NULL, '1', '1', '0', '0', '0', '0', '0', '0', '11', '0', 'website-settings'),
('116', 'noticeboard', 'noticeboard', '28', NULL, '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', 'noticeboard');

INSERT INTO `settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `paypal_active`, `paypal_mode`, `paypal_client_id_sandbox`, `paypal_client_id_production`, `paypal_currency`, `stripe_active`, `stripe_mode`, `stripe_test_secret_key`, `stripe_test_public_key`, `stripe_live_secret_key`, `stripe_live_public_key`, `stripe_currency`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`) VALUES ('1', '1', 'Ekattor Multi School Management System', 'Ekattor School', 'ekattor@example.com', '+8801234567890', '4333 Factoria Blvd SE, Bellevue, WA 98006', '1234', 'USD', 'left', '1', 'english', 'no', 'sandbox', 'AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R', '123', 'USD', 'yes', 'on', 'sk_test_iatnshcHhQVRXdygXw3L2Pp2', 'pk_test_CAC3cB1mhgkJqXtypYBTGb4f', '12345', '123456', 'USD', NULL, 'By Creativeitem', 'http://creativeitem.com/', '7.0', '1234567890', '1577017315', 'Asia/Dhaka');




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
