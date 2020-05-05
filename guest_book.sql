-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 05 2020 г., 21:54
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `guest_book`
--

CREATE TABLE `guest_book` (
  `id` int(11) UNSIGNED NOT NULL,
  `dtime` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `guest_book`
--

INSERT INTO `guest_book` (`id`, `dtime`, `name`, `body`) VALUES
(1, '2020-05-05 00:00:00', 'Степан', 'poiuyhtgfd'),
(2, '2020-05-05 00:00:00', 'Степан', 'poiuyhtgfd'),
(3, '2020-05-07 00:00:00', 'Екатерина Мазулова', 'ghfgds'),
(4, '2020-05-07 00:00:00', 'Екатерина Мазулова', 'ghfgds'),
(5, '2020-05-07 00:00:00', 'Дарья', 'аратпт'),
(6, '2020-05-07 00:00:00', 'Дарья', 'аратпт'),
(7, '2020-05-11 00:00:00', 'Степан', 'fdfdv'),
(8, '2020-05-11 00:00:00', 'Екатерина Мазулова', '435454вмвм'),
(9, '2020-05-13 00:00:00', 'Екатерина', 'l,kjnhbgvfds'),
(10, '2020-05-13 00:00:00', 'Екатерина', 'l,kjnhbgvfds'),
(11, '2020-05-14 00:00:00', 'Степан', 'gnfvc cvxcvxkdfkdkfdk dkdkvkdkk'),
(12, '2020-05-14 00:00:00', 'djjdjd', 'kjhgfdsa'),
(13, '2020-05-15 00:00:00', 'hgbvfcd', 'ngbfvdcsxa'),
(14, '2020-05-25 00:00:00', 'bvfda', 'juhygfdsa'),
(15, '2020-05-25 00:00:00', 'Екатерина', 'fbvdvxv'),
(16, '2020-05-18 00:00:00', 'Екатерина', 'ddkmhjgfdscx');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `guest_book`
--
ALTER TABLE `guest_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dtime` (`dtime`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `guest_book`
--
ALTER TABLE `guest_book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
