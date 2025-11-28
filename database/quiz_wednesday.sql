-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2025 at 03:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_wednesday`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) DEFAULT 0,
  `option_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `is_correct`, `option_order`) VALUES
(1, 1, 'Nevermore Academy', 1, 1),
(2, 1, 'Hogwarts School', 0, 2),
(3, 1, 'Xavier Institute', 0, 3),
(4, 1, 'Nevermore High School', 0, 4),
(5, 2, 'Jenna Ortega', 1, 1),
(6, 2, 'Christina Ricci', 0, 2),
(7, 2, 'Anya Taylor-Joy', 0, 3),
(8, 2, 'Milly Alcock', 0, 4),
(9, 3, 'Vision (melihat masa lalu/masa depan)', 1, 1),
(10, 3, 'Telepati', 0, 2),
(11, 3, 'Teleportasi', 0, 3),
(12, 3, 'Mengendalikan api', 0, 4),
(13, 4, 'Laurel Gates', 1, 1),
(14, 4, 'Tyler Galpin', 0, 2),
(15, 4, 'Xavier Thorpe', 0, 3),
(16, 4, 'Marilyn Thornhill', 0, 4),
(17, 5, 'Tyler Galpin', 1, 1),
(18, 5, 'Lucas Walker', 0, 2),
(19, 5, 'Ajax Petropolus', 0, 3),
(20, 5, 'Eugene Ottinger', 0, 4),
(21, 6, 'True', 1, 1),
(22, 6, 'False', 0, 2),
(23, 7, 'Enid Sinclair', 1, 1),
(24, 7, 'Bianca Barclay', 0, 2),
(25, 7, 'Yoko Tanaka', 0, 3),
(26, 7, 'Divina', 0, 4),
(27, 8, 'The Sirens', 1, 1),
(28, 8, 'The Nightshades', 0, 2),
(29, 8, 'The Ravens', 0, 3),
(30, 8, 'The Hydes', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` enum('multiple_choice','true_false','short_answer') DEFAULT 'multiple_choice',
  `points` int(11) DEFAULT 10,
  `image_url` varchar(255) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_text`, `question_type`, `points`, `image_url`, `explanation`, `created_at`) VALUES
(1, 1, 'Apa nama sekolah yang Wednesday Addams masuki di serial Netflix?', 'multiple_choice', 10, NULL, 'Nevermore Academy adalah sekolah untuk remaja dengan kemampuan khusus', '2025-11-28 14:50:07'),
(2, 1, 'Siapa aktris yang memerankan Wednesday Addams?', 'multiple_choice', 10, NULL, 'Jenna Ortega memerankan Wednesday Addams di serial Netflix', '2025-11-28 14:50:07'),
(3, 1, 'Apa kemampuan psikik yang dimiliki Wednesday?', 'multiple_choice', 15, NULL, 'Wednesday memiliki vision yaitu kemampuan melihat masa lalu dan masa depan melalui sentuhan', '2025-11-28 14:50:07'),
(4, 2, 'Siapa yang sebenarnya menjadi monster di serial Wednesday?', 'multiple_choice', 15, NULL, 'Laurel Gates adalah antagonis utama yang menyamar sebagai guru botani', '2025-11-28 14:50:31'),
(5, 2, 'Apa nama Hyde yang membantu Laurel Gates?', 'multiple_choice', 10, NULL, 'Tyler Galpin adalah Hyde yang dikendalikan oleh Laurel Gates', '2025-11-28 14:50:31'),
(6, 2, 'Wednesday akhirnya memilih untuk tinggal di Nevermore Academy di akhir musim pertama', 'true_false', 10, NULL, 'Wednesday memutuskan untuk tetap di Nevermore Academy untuk mengasah kemampuannya', '2025-11-28 14:50:31'),
(7, 3, 'Siapa roommate Wednesday di Nevermore Academy?', 'multiple_choice', 10, NULL, 'Enid Sinclair adalah werewolf yang menjadi roommate Wednesday', '2025-11-28 14:50:44'),
(8, 3, 'Apa nama kelompok vokal yang dipimpin Bianca Barclay?', 'multiple_choice', 10, NULL, 'The Sirens adalah kelompok vokal a cappella di Nevermore', '2025-11-28 14:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') DEFAULT 'medium',
  `total_questions` int(11) DEFAULT 0,
  `time_limit` int(11) DEFAULT 0,
  `max_score` int(11) DEFAULT 100,
  `created_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`, `difficulty`, `total_questions`, `time_limit`, `max_score`, `created_by`, `is_active`, `created_at`) VALUES
(1, 'Wednesday Characters', 'Test your knowledge about Wednesday Addams and friends', 'medium', 10, 15, 100, NULL, 1, '2025-11-28 14:50:07'),
(2, 'Wednesday Plot', 'How well do you remember the storyline?', 'hard', 8, 10, 80, NULL, 1, '2025-11-28 14:50:31'),
(3, 'Wednesday Relationships', 'Test your knowledge about character relationships', 'easy', 6, 8, 60, NULL, 1, '2025-11-28 14:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `total_score` int(11) DEFAULT 0,
  `max_score` int(11) DEFAULT 0,
  `correct_answers` int(11) DEFAULT 0,
  `total_questions` int(11) DEFAULT 0,
  `time_taken` int(11) DEFAULT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rank_position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `total_score` int(11) DEFAULT 0,
  `quiz_completed` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_played` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `selected_option_id` int(11) DEFAULT NULL,
  `answer_text` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT 0,
  `points_earned` int(11) DEFAULT 0,
  `answered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `selected_option_id` (`selected_option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quiz_results_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `user_answers_ibfk_4` FOREIGN KEY (`selected_option_id`) REFERENCES `options` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
