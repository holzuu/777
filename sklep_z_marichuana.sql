-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 10:14
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep z marichuana`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `Sliwa` text NOT NULL,
  `Przemyslaw` text NOT NULL,
  `Lobsky` text NOT NULL,
  `id_ziola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`Sliwa`, `Przemyslaw`, `Lobsky`, `id_ziola`) VALUES
('Lemon haze', 'AK-47', 'Lemon haze ', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

CREATE TABLE `towar` (
  `id_ziola` int(11) NOT NULL,
  `Asortement` text NOT NULL,
  `Cena` text NOT NULL,
  `Ilosc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `towar`
--

INSERT INTO `towar` (`id_ziola`, `Asortement`, `Cena`, `Ilosc`) VALUES
(1, 'Lemon Haze', '50', '30'),
(2, 'AK-47', '60', '25'),
(3, 'CBD', '100', '120'),
(4, 'Bombowiec 69', '200', '300'),
(5, 'Diesel', '5', '2000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wysylka`
--

CREATE TABLE `wysylka` (
  `Liczba wyslanych` text NOT NULL,
  `Liczba kupujacych` text NOT NULL,
  `Liczba oczekujacych` text NOT NULL,
  `id_ziola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wysylka`
--

INSERT INTO `wysylka` (`Liczba wyslanych`, `Liczba kupujacych`, `Liczba oczekujacych`, `id_ziola`) VALUES
('1', '1', '1', 1),
('1', '1', '1', 2),
('1', '11', '1', 3),
('1', '1', '1', 4),
('1', '1', '1', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_ziola`);

--
-- Indeksy dla tabeli `towar`
--
ALTER TABLE `towar`
  ADD PRIMARY KEY (`id_ziola`);

--
-- Indeksy dla tabeli `wysylka`
--
ALTER TABLE `wysylka`
  ADD PRIMARY KEY (`id_ziola`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_ziola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `towar`
--
ALTER TABLE `towar`
  MODIFY `id_ziola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `wysylka`
--
ALTER TABLE `wysylka`
  MODIFY `id_ziola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`id_ziola`) REFERENCES `towar` (`id_ziola`);

--
-- Ograniczenia dla tabeli `wysylka`
--
ALTER TABLE `wysylka`
  ADD CONSTRAINT `wysylka_ibfk_1` FOREIGN KEY (`id_ziola`) REFERENCES `towar` (`id_ziola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
