-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Paź 2022, 00:38
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marki`
--

CREATE TABLE `marki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `marki`
--

INSERT INTO `marki` (`id`, `nazwa`) VALUES
(1, 'Electrolux'),
(2, 'Bosch'),
(3, 'Amica'),
(4, 'Miele'),
(5, 'Karcher'),
(6, 'Zelmer');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odkurzacze`
--

CREATE TABLE `odkurzacze` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(60) DEFAULT NULL,
  `zasieg_pracy` float DEFAULT NULL,
  `pojemnosc_worka` float DEFAULT NULL,
  `moc_silnika` float DEFAULT NULL,
  `cena` float DEFAULT NULL,
  `poziom_halasu` float DEFAULT NULL,
  `id_marki` int(11) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `odkurzacze`
--

INSERT INTO `odkurzacze` (`id`, `nazwa`, `zasieg_pracy`, `pojemnosc_worka`, `moc_silnika`, `cena`, `poziom_halasu`, `id_marki`, `img_url`) VALUES
(1, 'Odkurzacz Electrolux Pure D82-ALRG Silence', 12, 3.5, 500, 1199, 57, 1, 'https://f00.esfr.pl/foto/8/59017138977/4a9b7b53a0d652279edbcb1c81409948/electrolux-odkurzacz-pure-d82-allergy,59017138977_7.jpg'),
(2, 'Odkurzacz Miele Boost CX1 Cat&Dog', 10, 1, 890, 1399, 78, 4, 'https://f01.esfr.pl/foto/2/90795528513/a61305119d7ec86f8b87f881a4e15383/miele-boost-cx1-cat-dog,90795528513_7.jpg'),
(3, 'Odkurzacz Bosch BGBS48TBO', 11, 1, 890, 549, 79, 2, 'https://f01.esfr.pl/foto/9/72280583625/484a6f4f6231da320322b49044bef641/bosch-bgbs48tbo,72280583625_7.jpg'),
(4, 'Odkurzacz Electrolux Pure D82-4MG Silence', 12, 3.5, 500, 899, 57, 1, 'https://f01.esfr.pl/foto/5/59017141121/d31660af95ce3144985b89a738a76021/electrolux-odkurzacz-pure-d82-4mg,59017141121_7.jpg'),
(5, 'Odkurzacz Bosch ProPower BGS21POW2', 10, 2, 750, 799, 78, 2, 'https://f00.esfr.pl/foto/6/92609443529/5ec6af0ec2ef243d655cb062dc23239/bosch-bgs21pow2,92609443529_7.jpg'),
(6, 'Odkurzacz Electrolux UltraOne EUOC94DB', 12, 5, 700, 749, 66, 1, 'https://f00.esfr.pl/foto/3/78854021553/d30b48a78bcd589f6fa818534e1e7e11/electrolux-ultraone-euoc94db,78854021553_7.jpg'),
(7, 'Odkurzacz Bosch BGC05A322', 9, 5, 700, 499, 78, 2, 'https://f00.esfr.pl/foto/7/46388694113/b720ed40d3eb22b53117522b56af3cf6/bosch-bgc05a322,46388694113_7.jpg'),
(8, 'Odkurzacz Electrolux EEG41CB', 7.5, 3, 650, 429, 80, 1, 'https://f01.esfr.pl/foto/3/21814302881/4b94d302bb649f2574a6a8d8466525e7/electrolux-eeg41cb,21814302881_7.jpg'),
(10, 'Odkurzacz Amica Bagio Eco VM 3046', 8, 1.5, 900, 369, 79, 3, 'https://f01.esfr.pl/foto/8/52251985185/821de67fd078795d0720992882300888/amica-bagio-eco-vm-3046,52251985185_7.jpg'),
(11, 'Odkurzacz Amica VM 2066 Fen Turbo', 8, 3, 900, 329, 76, 3, 'https://f01.esfr.pl/foto/1/86504448889/9b719b3fcb03c6ea40573b95b766fb36/amica-odkurzacz-vm-2066-fen-turbo,86504448889_7.jpg'),
(12, 'Odkurzacz Miele Blizzard CX1 Red Edition Parquet PowerLine', 11, 2, 890, 1599, 76, 4, 'https://f01.esfr.pl/foto/8/84568669057/d266c984ecd2ccdad91cfb164cab76e7/miele-blizzard-cx1-red-edition-parquet-powerline-,84568669057_7.jpg'),
(14, 'Odkurzacz Electrolux EL61C2OG', 12, 1.6, 550, 599, 74, 1, 'https://f01.esfr.pl/foto/8/92396276377/5a9c127af9f2977e20f3a7a19edf9f2f/electrolux-el61c2og,92396276377_7.jpg'),
(15, 'Odkurzacz Bosch BGL6POW1', 12, 1.6, 850, 1099, 78, 2, 'https://f00.esfr.pl/foto/1/65624423609/7520f87776bb75663d483fb8f91c44f9/bosch-bgl6pow1,65624423609_7.jpg'),
(16, 'Odkurzacz Bosch BGL8X230', 15, 5, 890, 999, 72, 2, 'https://f00.esfr.pl/foto/1/98922095265/2967194bdeb50bf89eca8b7feb702c2e/bosch-bgl8x230,98922095265_7.jpg'),
(22, 'Odkurzacz Amica Fen Turbo VM2062', 8, 3, 900, 329, 76, 3, 'https://f00.esfr.pl/foto/7/45454823169/2a2bbde910e8ce781ed0d8aa25b9e325/amica-odkurzacz-worvm-2062-fenturbo,45454823169_7.jpg'),
(23, 'Odkurzacz Karcher SE 4001', 8, 4, 1400, 819, 76, 5, 'https://f01.esfr.pl/foto/9/463790082/81d1a017b059f8c5353b774dbaff5ae0/karcher-se4001,463790082_7.jpg'),
(24, 'Odkurzacz Karcher VC 3 1.198-125.0', 7.5, 0.9, 700, 469, 76, 5, 'https://f01.esfr.pl/foto/6/17588567289/7cc3cd62e8b45df8ace3cd33ecb4ff83/karcher-vc-3,17588567289_7.jpg'),
(25, 'Odkurzacz Bosch AquaWash&Clean BWD421PET', 12, 5, 2100, 1299, 76, 2, 'https://f00.esfr.pl/foto/7/49986655601/367220f58758aa74696b503b06c2d96c/bosch-bwd421pet,49986655601_7.jpg'),
(29, 'Odkurzacz Electrolux EPF6ANIMAL', 9, 3.5, 700, 499, 76, 1, 'https://f01.esfr.pl/foto/3/20323670785/ddf5dae35a0033f14e3cddfaaab2b4dd/electrolux-epf6animal,20323670785_7.jpg'),
(30, 'Odkurzacz Electrolux Ease C2 ECC21-2IW', 7, 1.3, 700, 349, 76, 1, 'https://f00.esfr.pl/foto/1/65380789361/420c3088bfddcc8fbaa1889e1f7c8a04/electrolux-ease-c2-ecc21-2iw,65380789361_7.jpg'),
(31, 'Odkurzacz Zelmer Józek ZVC231P', 7, 2, 800, 289, 78, 6, 'https://f00.esfr.pl/foto/4/64932054353/f3a7b8810777b7c6dc4b672e7584b9ea/zelmer-jozek-zvc231p,64932054353_7.jpg'),
(32, 'Odkurzacz Bosch Universal Vac 18', 7, 0.5, 800, 549, 78, 2, 'https://f00.esfr.pl/foto/7/72681855537/7c5e93c922668f68c783e50b2b3b5e7f/bosch-universal-vac-18,72681855537_7.jpg'),
(33, 'Odkurzacz Amica VM 7011 (Sharq)', 10, 3.5, 700, 549, 61, 3, 'https://f01.esfr.pl/foto/6/45454819681/1d1ae17c5ca29d6c1dcea7a150bb4856/amica-odkurzacz-wor-vm-7011-sharq,45454819681_7.jpg'),
(34, 'Odkurzacz Karcher SE 6.100', 10, 4, 1400, 1239, 61, 5, 'https://f00.esfr.pl/foto/4/5523966557/659a30935d3c4c816d6c5a1f2b804e40/karcher-se-6-100,5523966557_7.jpg'),
(35, 'Odkurzacz Karcher SE 5.100', 10, 4, 1400, 1179, 77, 5, 'https://f01.esfr.pl/foto/1/677376980/6da402bcb673422aa31bbae662d58b69/karcher-se5-100,677376980_7.jpg'),
(36, 'Odkurzacz Electrolux EASE C4 EC41-4T', 7, 1.8, 700, 419, 80, 1, 'https://f01.esfr.pl/foto/9/41324617537/ed679d98c520390268246d13d20dbdb7/electrolux-ease-c4-ec41-4t,41324617537_7.jpg'),
(37, 'Odkurzacz Amica Ora VM 1032', 7, 1.5, 850, 279, 78, 3, 'https://f00.esfr.pl/foto/4/33999572313/a3126b5ae55142df4b91ba9cbab9e5ed/amica-ora-vm-1032,33999572313_7.jpg'),
(38, 'Odkurzacz Zelmer  Antek ZVC3502N', 7, 3.5, 900, 429, 78, 6, 'https://f01.esfr.pl/foto/1/90651730657/de1d57ffd69ad05cadc0965bd4856d19/zelmer-antek-zvc3502n,90651730657_7.jpg'),
(39, 'Odkurzacz Electrolux EL61H4SW', 12, 3.5, 550, 699, 74, 1, 'https://f01.esfr.pl/foto/6/92396355889/a23080b245d31463b588b205db65cbeb/electrolux-el61h4sw,92396355889_7.jpg'),
(40, 'Odkurzacz Miele Boost CX1 Parquet', 10, 1, 890, 1349, 78, 4, 'https://f00.esfr.pl/foto/7/90795520121/83775303c78f8fb3ae162f4dddcd22ee/miele-boost-cx1-parquet,90795520121_7.jpg'),
(41, 'Odkurzacz Miele Compact C2 Allergy', 11, 3.5, 890, 999, 78, 4, 'https://f01.esfr.pl/foto/6/90795511897/72b8a9cf03ab58c660933601a071e309/miele-compact-c2-allergy,90795511897_7.jpg'),
(42, 'Odkurzacz Bosch BGLS2WH1H', 8, 3.5, 600, 349, 80, 2, 'https://f00.esfr.pl/foto/4/92609419321/742b90803607a017a68f0813be25d36a/bosch-bgls2wh1h,92609419321_7.jpg'),
(43, 'Odkurzacz Amica Ora VM 1021', 8, 2, 700, 279, 78, 3, 'https://f00.esfr.pl/foto/7/71212090729/f3819ea5f888f8ae100b4b654d186047/amica-ora-vm-1021,71212090729_7.jpg'),
(44, 'Odkurzacz Bosch ProAnimal BGS7PET', 11, 2, 800, 1499, 72, 2, 'https://f01.esfr.pl/foto/1/73359860977/a9476deccfa09f6235c6b14a94e90961/bosch-proanimal-bgs7pet,73359860977_7.jpg'),
(45, 'Odkurzacz Amica VM 4011', 8, 1.5, 800, 479, 79, 3, 'https://f01.esfr.pl/foto/3/92609394593/b604c68cd98f35d281e1e627d022effe/amica-vm-4011,92609394593_7.jpg'),
(46, 'Odkurzacz Zelmer Antek ZVC3506B', 8, 3.5, 900, 488, 79, 6, 'https://f00.esfr.pl/foto/9/90651729193/41eb38b9655eb1939dee4736b92ad245/zelmer-antek-zvc3506b,90651729193_7.jpg'),
(47, 'Karcher WD 6 P S V-30/6/22/T', 8, 30, 1300, 889, 79, 5, 'https://f01.esfr.pl/foto/9/98375442729/edc3acf8432655e780292ef81614e2b1/karcher-wd-6-p-s-v-30-6-22-t,98375442729_7.jpg'),
(48, 'Odkurzacz Miele Boost CX1', 10, 1, 890, 1199, 78, 4, 'https://f00.esfr.pl/foto/1/90795509737/7e0f8af48b53552011a4f04a9a104293/miele-boost-cx1,90795509737_7.jpg'),
(49, 'Odkurzacz Karcher SE 4001 Special', 10, 4, 1400, 999, 78, 5, 'https://f01.esfr.pl/foto/9/9524706292/f5a8c6326924ce997072194703acb011/karcher-se-4001-special,9524706292_7.jpg'),
(50, 'Odkurzacz Zelmer Adaś ZVC316BB', 10, 3, 800, 359, 77, 6, 'https://f00.esfr.pl/foto/2/64932038513/143c2794206cfe0af7113ddd4f3ce880/zelmer-adas-zvc316bb,64932038513_7.jpg'),
(51, 'Odkurzacz Miele Blizzard CX1 Comfort', 10, 2, 550, 1799, 73, 4, 'https://f01.esfr.pl/foto/7/28162331985/ea203cebcabf46af7088a2bd0486694b/miele-blizzard-cx1-comfort,28162331985_7.jpg'),
(52, 'Odkurzacz Miele Blizzard CX1 Cat & Dog PowerLine', 11, 2, 890, 1699, 76, 4, 'https://f01.esfr.pl/foto/3/72608405249/bae6f504a84f8d54555e74161928e86/miele-odkurzacz-blizzard-cx1-cat-dog,72608405249_7.jpg'),
(53, 'Miele Complete C3 Cat&Dog Flex Power Line', 12, 4.5, 890, 1289, 76, 4, 'https://f01.esfr.pl/foto/9/103970828473/a3d1515f918b7aa6527fb5310c214be7/miele-complete-c3-cat-dog-flex-power-line,103970828473_7.jpg'),
(54, 'Odkurzacz Karcher SE 4002', 12, 4, 1400, 999, 76, 5, 'https://f00.esfr.pl/foto/5/463826946/2dfd1feaa88ac2c2705b363411cc31a2/karcher-se4002,463826946_7.jpg'),
(55, 'Odkurzacz Karcher VC 2 1.198-105.0', 7.5, 2.8, 700, 469, 76, 5, 'https://f00.esfr.pl/foto/4/17588504521/25e9fcc855e8cae47c0f2cad497842fb/karcher-vc-2,17588504521_7.jpg'),
(56, 'Odkurzacz Miele Blizzard CX1 Parquet', 10, 2, 890, 1499, 76, 4, 'https://f00.esfr.pl/foto/1/28162212809/ee8227ea021a23376c70f18857208656/miele-blizzard-cx1-parquet,28162212809_7.jpg'),
(57, 'Bosch BGB38BA3T', 10, 4, 850, 729, 79, 2, 'https://f00.esfr.pl/foto/6/110738871609/1f0cb161670a0a59ca3ab17749e11662/bosch-bgb38ba3t,110738871609_7.jpg'),
(58, 'Odkurzacz Bosch YOUseries Vac', 10, 4, 850, 249, 79, 2, 'https://f01.esfr.pl/foto/4/74661982393/2ae62a5470d7be6a1201b1f3343102d7/bosch-youseries-vac,74661982393_7.jpg'),
(59, 'Odkurzacz Zelmer Antek ZVC3501T', 10, 3.5, 900, 479, 79, 6, 'https://f01.esfr.pl/foto/2/96447951273/9b1c2f7a3210e03b4d9b0414c5dcd777/zelmer-antek-zvc3501t,96447951273_7.jpg'),
(60, 'Odkurzacz Amica Suracon VM 7002', 10, 3, 700, 599, 61, 3, 'https://f01.esfr.pl/foto/8/90795513761/eb8b437ea2a4400c5110fbd247421a76/amica-suracon-vm-7002,90795513761_7.jpg'),
(61, 'Odkurzacz Karcher VC 2 Premium Home Line 1.198-115.0', 7.5, 2.8, 700, 499, 76, 5, 'https://f00.esfr.pl/foto/5/17588550977/d5b5aad14c63071a637e5c27d5290a/karcher-vc-2-premium-home-line-bialy,17588550977_7.jpg'),
(62, 'Odkurzacz Miele Complete C3 TotalCare EcoLine - SGJP3', 12, 4.5, 550, 1399, 76, 4, 'https://f00.esfr.pl/foto/9/75201039345/1e9e85b82e3efc5eaa070eb9bf49c0ce/miele-complete-c3-totalcare-ecoline-sgjp3,75201039345_7.jpg'),
(63, 'Amica VM 1150 Surazo Plus', 8, 1.5, 850, 289, 79, 3, 'https://f00.esfr.pl/foto/4/111168793377/1b880178ce9529445a02047c15efee2f/amica-vm-1150-surazo-plus,111168793377_7.jpg'),
(64, 'Odkurzacz Miele Blizzard CX1 (czerwony)', 10, 2, 550, 1199, 73, 4, 'https://f01.esfr.pl/foto/9/28162402961/daa14eb2db20a449cba51c237a831ec4/miele-blizzard-cx1-czerwony,28162402961_7.jpg'),
(65, 'Odkurzacz Karcher WD 4 V-20/5/22 1.628-201.0', 10, 2, 1000, 449, 73, 5, 'https://f01.esfr.pl/foto/3/98375457009/5bb476d295011e6e14509d2fb8ad7f12/karcher-wd-4-v-20-5-22-1-628-201-0,98375457009_7.jpg'),
(66, 'Miele Complete C3 Allergy Power Line', 12, 4.5, 890, 1429, 77, 4, 'https://f01.esfr.pl/foto/5/103970837785/f1a86f0cbb20dbce03fbe6a5a7b031b4/miele-complete-c3-allergy-power-line,103970837785_7.jpg'),
(67, 'Odkurzacz Zelmer ZVC021P Krzyś', 12, 2, 800, 499, 77, 6, 'https://f00.esfr.pl/foto/9/98922148217/d800208c7b17af51ce6eba8744f56796/zelmer-zvc021p-krzys,98922148217_7.jpg'),
(68, 'Odkurzacz Zelmer Adaś ZVC323PB', 12, 3, 800, 429, 77, 6, 'https://f00.esfr.pl/foto/3/64932064177/8e7e35554b38af5b8862025b9ff99dec/zelmer-adas-zvc323pb,64932064177_7.jpg'),
(69, 'Odkurzacz Zelmer Józek ZVC 211', 12, 2, 800, 299, 78, 6, 'https://f00.esfr.pl/foto/8/64932041217/9880e7ca2f88bd569434950861a50623/zelmer-jozek-zvc-211,64932041217_7.jpg'),
(70, 'Odkurzacz Zelmer Adaś ZVC313P', 12, 3, 800, 389, 77, 6, 'https://f01.esfr.pl/foto/4/64932019737/a7e9d4ee50acba37f18b4421ac1f6615/zelmer-adas-zvc313p,64932019737_7.jpg'),
(71, 'Odkurzacz Karcher DS 6 1.195-220.0', 10.2, 2, 650, 1199, 80, 5, 'https://f01.esfr.pl/foto/2/24736580233/dafa051bc1405f2182423296c7813f02/karcher-ds-6-1-195-220-0,24736580233_7.jpg'),
(72, 'Karcher WD 3 P V-17/4/20 1.628-171.0', 10.2, 17, 1000, 449, 80, 5, 'https://f00.esfr.pl/foto/7/98375449609/1155629206f607b9a8c7a7da9a70f9fc/karcher-wd-3-p-v-17-4-20-1-628-171-0,98375449609_7.jpg'),
(73, 'Odkurzacz Bosch BGLS2BA3D8', 8, 3.5, 600, 499, 80, 2, 'https://f01.esfr.pl/foto/2/92609417305/ca85ffa0cf132280229e12142e89e24a/bosch-bgls2ba3d8,92609417305_7.jpg'),
(74, 'Karcher SE 5.100 Plus', 8, 4, 1400, 1849, 77, 5, 'https://f00.esfr.pl/foto/9/112213237385/c235a53dd335b0b78d983d3c75ae0669/karcher-se-5-100-plus,112213237385_7.jpg'),
(75, 'Odkurzacz Miele Complete C3 Electro EcoLine', 12, 4.5, 550, 2599, 80, 4, 'https://f01.esfr.pl/foto/4/28237074433/41058a28d93b8f8a4831378c561039e1/miele-complete-c3-electro-ecoline,28237074433_7.jpg'),
(76, 'Odkurzacz Zelmer Antek ZVC3501R', 12, 3.5, 900, 479, 80, 6, 'https://f00.esfr.pl/foto/3/96447954297/a307e000a76a456db2d32d8e695777c1/zelmer-antek-zvc3501r,96447954297_7.jpg'),
(77, 'Odkurzacz Bosch BGBS2BU1T', 8, 3.5, 850, 499, 80, 2, 'https://f01.esfr.pl/foto/7/92609378913/d24f74e8003bc79e81a9ccc56b138ee8/bosch-bgbs2bu1t,92609378913_7.jpg'),
(78, 'Odkurzacz Bosch BGC21X300', 10, 2, 550, 749, 76, 2, 'https://f00.esfr.pl/foto/3/92609407105/480442b93f58dda7d273b38a86dfaa00/bosch-bgc21x300,92609407105_7.jpg'),
(79, 'Odkurzacz Bosch EasyVac 12 (akumulator + ładowarka)', 10, 0.38, 550, 449, 76, 2, 'https://f01.esfr.pl/foto/9/19528686737/429747e99a72daac0f930a81efe4ff8f/bosch-easyvac-12-z-akumulatorem,19528686737_7.jpg'),
(80, 'Karcher WD 5 V-25/5/22 1.628-300.0', 10, 25, 1100, 649, 76, 5, 'https://f00.esfr.pl/foto/5/98375440825/fa7c9144ec7fd29aafd2ec5d0755c809/karcher-wd-5-v-25-5-22-1-628-300-0,98375440825_7.jpg'),
(81, 'Amica Akman VM 4012', 8, 1.5, 800, 479, 79, 3, 'https://f01.esfr.pl/foto/1/111759211433/8a7f73ec3ca53ee24652ab2597792f40/amica-akman-vm-4012,111759211433_7.jpg'),
(82, 'Bosch BGS41K332', 10, 2.4, 550, 999, 72, 2, 'https://f00.esfr.pl/foto/7/108640649009/a45baed3effddba97d99e9d147b03eb/bosch-bgs41k332,108640649009_7.jpg'),
(83, 'Zelmer ZVC333 Kuba', 10, 3, 650, 499, 72, 6, 'https://f00.esfr.pl/foto/6/102676673401/80ffb765f6bfda39e83709f89f99d08f/zelmer-zvc333-kuba,102676673401_7.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `haslo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `marki`
--
ALTER TABLE `marki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `odkurzacze`
--
ALTER TABLE `odkurzacze`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_marka` (`id_marki`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `marki`
--
ALTER TABLE `marki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `odkurzacze`
--
ALTER TABLE `odkurzacze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `odkurzacze`
--
ALTER TABLE `odkurzacze`
  ADD CONSTRAINT `FK_marka` FOREIGN KEY (`id_marki`) REFERENCES `marki` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
