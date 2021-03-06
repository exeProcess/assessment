-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 10:30 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_attendace`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` int(11) NOT NULL,
  `assessment_id` varchar(32) NOT NULL,
  `school_id` varchar(32) NOT NULL,
  `assessment_session` varchar(255) NOT NULL,
  `term` varchar(30) NOT NULL,
  `class` varchar(36) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `assessment_id`, `school_id`, `assessment_session`, `term`, `class`, `subject`) VALUES
(1, '1ebde30b-8d77-6e9a-aeb9-247703ae', '4567687', '2020/2021', 'first term', 'primary 6', 'maths'),
(2, '1ebde4be-fd2c-6ad8-b34a-247703ae', '4567687', '2020/2021', 'first term', 'primary 6', 'maths'),
(3, '1ebde4ca-76c3-640e-ad3e-247703ae', '1ebd1259-97fb-6d22-85ed-247703ae', '2021/2022', 'first term', 'primary 6', 'maths'),
(4, '1ebde4de-6e57-6a7c-8860-247703ae', '1ebd125a-eb75-69f2-9d5b-247703ae', '2021/2022', 'first term', 'primary 6', 'maths');

-- --------------------------------------------------------

--
-- Table structure for table `assingment`
--

CREATE TABLE `assingment` (
  `id` int(11) NOT NULL,
  `assignment_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `deadline` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `teacher_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assingment`
--

INSERT INTO `assingment` (`id`, `assignment_id`, `title`, `subject`, `deadline`, `school_id`, `teacher_id`, `status`, `class`, `created_at`) VALUES
(1, '1ebd1a4e-0558-6ea0-a900-247703ae1c78', 'third todo', 'verbal reasoning', '24 / 06 / 2021', '1ebd1259-97fb-6d22-85ed-247703ae1c78', '1ebd127d-1ecf-6326-8888-247703ae1c78', 'draft', 'primary 3', '2021-06-20 14:51:27'),
(2, '1ebd1b35-5649-669c-b926-247703ae1c78', 'fifth todo', 'Integerated science', '17 / 06 / 2021', '1ebd1259-97fb-6d22-85ed-247703ae1c78', '1ebd127d-1ecf-6326-8888-247703ae1c78', 'draft', 'primary 1', '2021-06-20 14:51:27'),
(3, '1ebd1c0b-5412-64a6-bf63-247703ae1c78', 'tittle', 'english', '24 / 06 / 2021', '1ebd1259-97fb-6d22-85ed-247703ae1c78', '1ebd1278-a99a-60aa-a8e0-247703ae1c78', 'draft', 'primary 6', '2021-06-20 14:51:27'),
(4, '1ebd1d68-2619-67e4-88ec-247703ae1c78', 'third todo', 'maths', '30 / 06 / 2021', '1ebd1259-97fb-6d22-85ed-247703ae1c78', '1ebd1278-a99a-60aa-a8e0-247703ae1c78', 'draft', 'primary 3', '2021-06-20 14:51:27'),
(5, '1ebd1d71-b6ac-6a96-9be4-247703ae1c78', 'REST API', 'maths', '27 / 06 / 2021', '1ebd1259-97fb-6d22-85ed-247703ae1c78', '1ebd1278-a99a-60aa-a8e0-247703ae1c78', 'draft', 'primary 6', '2021-06-20 14:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `assingment_questions`
--

CREATE TABLE `assingment_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `mark` varchar(255) NOT NULL,
  `assingment_id` varchar(255) NOT NULL,
  `answer_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `remark` text DEFAULT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(36) NOT NULL,
  `assessment_id` varchar(36) NOT NULL,
  `duration` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `exam_id`, `assessment_id`, `duration`) VALUES
(1, '1ebde313-59af-64ac-937f-247703ae1c78', '3546588', '1 hour'),
(2, '1ebde4cf-715f-65ee-95fc-247703ae1c78', '1ebde4ca-76c3-640e-ad3e-247703ae', '1:30 hour'),
(3, '1ebde4ed-8790-62f0-a377-247703ae1c78', '1ebde4ca-76c3-640e-ad3e-247703ae', '1:30 hour');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `question_id` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(36) NOT NULL,
  `question` text NOT NULL,
  `options` text NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_questions`
--

INSERT INTO `exam_questions` (`id`, `exam_id`, `question`, `options`, `answer`) VALUES
(1, '1ebde313-59af-64ac-937f-247703ae1c78', 'what is dcghkfjndlkdf hfjfd', 'hello,who,see', '0'),
(2, '1ebde313-59af-64ac-937f-247703ae1c78', 'what is dcghkfjndlkdf hfjfdfghjklkdwcdwbcjwd', 'hello,who,see,look', '0'),
(3, '1ebde4cf-715f-65ee-95fc-247703ae1c78', 'In four hundred words narrate your experience learning javascript', 'hello,world,loop,serve', '0'),
(4, '1ebde4cf-715f-65ee-95fc-247703ae1c78', 'What is punctuated equilibria', 'hello,world,loop', '0'),
(5, '1ebde4ed-8790-62f0-a377-247703ae1c78', 'What is punctuated equilibria', 'hello,world,loop', '0'),
(6, '1ebde4ed-8790-62f0-a377-247703ae1c78', 'question....', 'hello,world,loop,free', '0');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `school_id`, `school_name`) VALUES
(1, '1ebd1258-d256-6e50-be7d-247703ae1c78', 'De Excel'),
(2, '1ebd1259-97fb-6d22-85ed-247703ae1c78', 'Grait'),
(3, '1ebd125a-eb75-69f2-9d5b-247703ae1c78', 'O.T.A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `attendance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `name`, `class`, `attendance`) VALUES
(1, '1ebce8cf-bacf-696a-8551-6cc21774b98e', 'Malik', 'primary 1', '{\"monday\":[1,1],\"tuesday\":[0,1],\"wednesday\":[1,1],\"thursday\":[1],\"friday\":[1]}'),
(2, '1ebcec12-abd9-6c62-a8c0-6cc21774b98e', 'Gabriel', 'primary 1', '{\"monday\":[],\"tuesday\":[],\"wednesday\":[],\"thursday\":[],\"friday\":[]}'),
(3, '1ebcec13-43ce-6f22-8901-6cc21774b98e', 'Gabriel john', 'primary 1', '{\"monday\":[],\"tuesday\":[],\"wednesday\":[],\"thursday\":[],\"friday\":[]}'),
(4, '1ebcec48-a76d-64cc-b480-6cc21774b98e', 'Gabriel john', 'primary 2', '{\"monday\":[],\"tuesday\":[],\"wednesday\":[],\"thursday\":[],\"friday\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teachers_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `assinged_class` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `class_to_teach` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teachers_id`, `name`, `email`, `assinged_class`, `password`, `subjects`, `class_to_teach`, `school_id`) VALUES
(4, '1ebd1278-a99a-60aa-a8e0-247703ae1c78', 'Mr Boye', 'boye@teacher.com', 'primary 6', 'teacherboye', 'english,maths', 'primary 3,primary 6', '1ebd1259-97fb-6d22-85ed-247703ae1c78'),
(5, '1ebd127d-1ecf-6326-8888-247703ae1c78', 'Mr Gbenga', 'gbenga@teacher.com', 'primary 6', 'teacherboye', 'verbal reasoning,Integerated science', 'primary 1,primary 3,primary 4', '1ebd1259-97fb-6d22-85ed-247703ae1c78');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assingment`
--
ALTER TABLE `assingment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assingment_questions`
--
ALTER TABLE `assingment_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assingment`
--
ALTER TABLE `assingment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assingment_questions`
--
ALTER TABLE `assingment_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
