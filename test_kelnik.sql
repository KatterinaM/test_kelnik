-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 05 2020 г., 22:35
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
-- База данных: `test_kelnik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basic_properties`
--

CREATE TABLE `basic_properties` (
  `id_basic_property` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `basic_properties`
--

INSERT INTO `basic_properties` (`id_basic_property`, `name`, `discription`) VALUES
(1, 'Основное свойство 1', 'что-то написано о нем'),
(2, 'Основное свойство 2', 'что-то написано о нем'),
(3, 'Основное свойство 3', 'что-то написано о нем');

-- --------------------------------------------------------

--
-- Структура таблицы `complemented_properties`
--

CREATE TABLE `complemented_properties` (
  `id_complemented_property` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `complemented_properties`
--

INSERT INTO `complemented_properties` (`id_complemented_property`, `name`, `description`) VALUES
(1, 'Доп. свойство 1', 'что-то написано о нем'),
(2, 'Доп. свойство 2', 'что-то написано о нем'),
(3, 'Доп. свойство 3', 'что-то написано о нем');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id_group` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id_group`, `name`, `discription`) VALUES
(1, 'ТестоваяГруппа1', 'что-то написано о ней'),
(2, 'ТестоваяГруппа2', 'что-то написано о ней');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_group` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_product`, `name`, `id_group`, `price`) VALUES
(1, 'Тестовый продукт1', 1, 1234),
(2, 'Тестовый продукт2', 2, 5432),
(3, 'Тестовый продукт3', 1, 8986);

-- --------------------------------------------------------

--
-- Структура таблицы `product_basic_property`
--

CREATE TABLE `product_basic_property` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_basic_property` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_basic_property`
--

INSERT INTO `product_basic_property` (`id`, `id_product`, `id_basic_property`) VALUES
(1, 3, 1),
(2, 1, 1),
(3, 2, 2),
(4, 1, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `product_complemented_property`
--

CREATE TABLE `product_complemented_property` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_complemented_property` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_complemented_property`
--

INSERT INTO `product_complemented_property` (`id`, `id_product`, `id_complemented_property`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 1, 3),
(4, 2, 3),
(5, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basic_properties`
--
ALTER TABLE `basic_properties`
  ADD PRIMARY KEY (`id_basic_property`);

--
-- Индексы таблицы `complemented_properties`
--
ALTER TABLE `complemented_properties`
  ADD PRIMARY KEY (`id_complemented_property`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `price` (`price`);

--
-- Индексы таблицы `product_basic_property`
--
ALTER TABLE `product_basic_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_basic_property` (`id_basic_property`);

--
-- Индексы таблицы `product_complemented_property`
--
ALTER TABLE `product_complemented_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_complemented_property` (`id_complemented_property`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basic_properties`
--
ALTER TABLE `basic_properties`
  MODIFY `id_basic_property` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `complemented_properties`
--
ALTER TABLE `complemented_properties`
  MODIFY `id_complemented_property` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product_basic_property`
--
ALTER TABLE `product_basic_property`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_complemented_property`
--
ALTER TABLE `product_complemented_property`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
