-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2018 at 04:52 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psajt`
--

-- --------------------------------------------------------

--
-- Table structure for table `iskustva`
--

CREATE TABLE `iskustva` (
  `iskustvo_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `substance` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iskustva`
--

INSERT INTO `iskustva` (`iskustvo_id`, `title`, `location`, `author`, `date`, `substance`, `description`, `created_on`) VALUES
(1, 'Pirinač i pečurke', 'Beograd', '[object Object]', '0000-00-00', 'lsd', 'sssssssssssssssssssssadsd\r\nas\r\nda\r\nsda\r\nsd\r\nasd', '0000-00-00'),
(2, 'Najnovija vest', 'Beograd', '[object Object]', '0000-00-00', 'lsd', 'qqqqqqqqqqqq\r\n\r\neqweqwe', '0000-00-00'),
(3, 'wwww', 'wwww', 'rene', '0000-00-00', 'wwww', 'wwww', '0000-00-00'),
(4, 'ddddddd', 'Beograd', 'boris', '0000-00-00', 'lsd', '                            sssssssssssssssssssssadsd\r\nas\r\nda\r\nsda\r\nsd\r\nasd\r\n                        ', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `novosti`
--

CREATE TABLE `novosti` (
  `novosti_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novosti`
--

INSERT INTO `novosti` (`novosti_id`, `title`, `description`, `author`, `img`, `created_on`) VALUES
(1, 'Panačinke', '<p>Riža se jednostavno priprema, dostupna je svima i vrlo brzo od nje nastaje prilog ili cjelovit obrok.</p><p>Za pripremu jela s rižom ne morate imati godine iskustva ili biti vrhunski kuhar. S osnovnim kulinarskim vještinama može se napraviti puno, a uz malo učenja i prakse, jelo se može dovesti do savršenstva. Baš kao i tjestenina, <a href=\"https://www.podravka.hr/proizvodi/?query=ri%C5%BEa\">riža </a>ostavlja mnogo prostora za igranje okusima pa je se tako može spajati s povrćem, morskim plodovima, sirom, piletinom ili nekim drugim mesom.</p><p>Ukusna je i jednostavno kuhana te začinjena s malo kvalitetnog maslinova ulja. Ipak, treba imati na umu da je svaka riža specifična i ima odgovarajuću namjenu. Primjerice, za kremasti rižoto najbolja je <a href=\"https://www.podravka.hr/proizvod/riza-arborio-vakum/\">arborio riža</a>, a za priloge i salate savršena riža parboiled.&nbsp;</p>', 'Boris', 'https://i.imgur.com/21Myq3j.jpg', '2018-09-13'),
(2, 'Beograda na vodi', 'U pitanju su poslovođa i pomoćnik geometra, kooperanti kompanije \'Štrabag\', koji su pali sa 22. sprata zgrade na kojoj su radili, što je najviša platforma na gradilištu. Izvor iz kompanije \'Štrabag\' rekao je \'Blicu\' da u ovom trenutku ne može da daje zvanične informacije, ali tvrdi da su poslovođa i pomoćnik geometra bili uredno prijavljeni, da su prošli neophodnu obuku za visoku gradnju i da su imali svu neophodnu zaštitnu opremu\", naveo je Blic.', 'Boris', 'https://www.b92.net/news/pics/2018/09/14/3596380145b9b7e6ebe131997729756_v4_big.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `psihodelici`
--

CREATE TABLE `psihodelici` (
  `psy_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `istorijat` text NOT NULL,
  `upotreba` text NOT NULL,
  `efekti` text NOT NULL,
  `farmakologija` text NOT NULL,
  `mitovi` text NOT NULL,
  `svojstva` text NOT NULL,
  `toksicnost` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psihodelici`
--

INSERT INTO `psihodelici` (`psy_id`, `name`, `img`, `istorijat`, `upotreba`, `efekti`, `farmakologija`, `mitovi`, `svojstva`, `toksicnost`) VALUES
(1, 'LSD', 'https://i.imgur.com/Crr6z8e.jpg', 'Sredinom 19. veka su učinjeni prvi pokušaji da se izoluje aktivna supstanca ražane glavice (ili ergota), gljiva koje kao paraziti žive na žitaricama. 1907. godine su postignuti prvi uspesi, a ranih 1930-ih, je izolovano zajedničko jezgro ergota, koja je dobilo ime liserginska kiselina. Tada je ustanovljeno da alkaloidi ražane glavice pojačavaju kontrakcije materice i deluju na krvotok i disajni sistem.[6]', '1950—ih godina na Zapadu su postale česte seanse umetnika, koji bi nakon uzimanja esida stvarali umetnička dela pod utiskom proživljenih misli, što je kasnije nazvano psihodelična umetnost. LSD su takođe koristili i filozofi u istraživanju religijskih i mističkih iskustava.[6] Početkom 1960—ih godina, LSD je kao neka vrsta „leka za sve duševne boljke“ postao veoma rasprostranjen u SAD. U medijima su mnoge javne ličnosti i glumci hvalili svoja iskustva sa LSD-om koja su im pomogla da pronađu mir.[13] Razne kontrakulturne skupine, poput Veselih šaljivdžija (en. Merry Pranksters), su putovale Amerikom i propovedale LSD.[14] ', 'Doziranje LSD-a se meri u mikrogramima (µg), milionitim delovima grama. Radi poređenja, doziranje većine lekova i droga se meri u miligramima, hiljaditim delovima grama. Albert Hofman je smatrao da aktivna doza meskalina, između 0,2 i 0,5 g, ima delovanje uporedivo sa 100 µg ili manje LSD-a. Drugim rečima, LSD je između pet i deset hiljada puta jači od meskalina.[17] Pojedinačna doza LSD-a obično iznosi između 100 i 500 mikrograma, dok se delovanje može osetiti već sa 25 mikrograma.[18] Tipična doza u 1960-im je iznosila između 200 i 1000 µg, dok je 1990-ih smanjena na svega 20-80 µg (neka istraživanja pokazuju da manje doze uglavnom izazivaju manje loših tripova)[19]', 'Delovanje LSD-a je nemoguće potpuno predvideti, jer ono zavisi od okruženja, raspoloženja, očekivanja i, pre svega, psihičkog stanja osobe koja konzumira LSD. Dejstvo obično počinje nakon 30-60 minuta (zavisno od načina unošenja i vremena poslednjeg obroka) i traje u proseku 6-12 časova.[3] Kod osobe koja je pod dejstvom liserginske kiseline dolazi do proširenja zenica, nepovezanog govora, nepredvidljivog ponašanja, bega od ljudi i nesnalaženja u vremenu i prostoru.[2]', 'ako LSD ne izaziva fizičku zavisnost, česta upotreba može odvesti psihičkoj zavisnosti.[2] Učestalim uzimanjem ne razvija se tolerancija, što znači da vremenom nisu potrebne sve jače doze, kao što je slučaj kod npr. ekstazija.[6]', 'Međutim, psihičke promene izazvane LSD-om, koje nisu nužno pozitivne, mogu biti trajne.[6] Čest fenomen koji prati uzimanje LSD-a je flešbek (engl. flashback), povratna reakcija u trajanju od nekoliko sekundi tokom kojih se spontano vraćaju halucinatorni efekti. Može se javiti danima, mesecima, pa čak i godinama nakon unošenja LSD-a.[2] Takođe se može javiti i psihoza. ', 'Prema novijim istraživanjima britanskih naučnika, LSD je manje štetan od mnogih legalnih supstanci poput duvana i alkohola.[27] ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iskustva`
--
ALTER TABLE `iskustva`
  ADD PRIMARY KEY (`iskustvo_id`);

--
-- Indexes for table `novosti`
--
ALTER TABLE `novosti`
  ADD PRIMARY KEY (`novosti_id`);

--
-- Indexes for table `psihodelici`
--
ALTER TABLE `psihodelici`
  ADD PRIMARY KEY (`psy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iskustva`
--
ALTER TABLE `iskustva`
  MODIFY `iskustvo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `novosti`
--
ALTER TABLE `novosti`
  MODIFY `novosti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `psihodelici`
--
ALTER TABLE `psihodelici`
  MODIFY `psy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
