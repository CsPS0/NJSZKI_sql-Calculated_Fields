START TRANSACTION;

DROP DATABASE IF EXISTS `epuletek`;

CREATE DATABASE IF NOT EXISTS `epuletek`
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `epuletek`;

CREATE TABLE IF NOT EXISTS `felhokarcolok` (
`id` int(11) NOT NULL,
  `nev` varchar(50) DEFAULT NULL,
  `varos` varchar(25) DEFAULT NULL,
  `orszagkod` char(2) DEFAULT NULL,
  `magassag` double DEFAULT NULL,
  `emeletek` int(11) NOT NULL,
  `befejezes_eve` int(11) NOT NULL,
  `anyag` varchar(20) DEFAULT NULL,
  `felhasznalas` varchar(50) DEFAULT NULL
);

INSERT INTO `felhokarcolok` (`id`, `nev`, `varos`, `orszagkod`, `magassag`, `emeletek`, `befejezes_eve`, `anyag`, `felhasznalas`) VALUES
(1, 'Chrysler Building', 'New York City', 'US', 318.9, 77, 1930, 'acél', 'iroda'),
(2, 'Empire State Building', 'New York City', 'US', 381, 102, 1931, 'acél', 'iroda'),
(3, '875 North Michigan Avenue', 'Chicago', 'US', 343.7, 100, 1969, 'acél', 'lakóépület / iroda'),
(4, 'Aon Center', 'Chicago', 'US', 346.3, 83, 1973, 'acél', 'iroda'),
(5, 'Willis Tower', 'Chicago', 'US', 442.1, 108, 1974, 'acél', 'iroda'),
(6, 'Bank of China Tower', NULL, 'CN', 367.4, 72, 1990, 'kompozit', 'iroda'),
(7, 'Central Plaza', 'Hong Kong', 'CN', 373.9, 78, 1992, 'beton', 'iroda'),
(8, 'CITIC Plaza', 'Guangzhou', 'CN', 390.2, 80, 1996, 'kompozit', 'iroda'),
(9, 'Shun Hing Square', 'Shenzhen', 'CN', 384, 69, 1996, 'kompozit', 'iroda'),
(10, '85 Sky Tower', 'Kaohsiung', 'CN', 347.5, 85, 1997, 'acél', 'hotel / iroda / kereskedelmi'),
(11, 'Petronas Twin Tower 1', 'Kuala Lumpur', 'MY', 451.9, 88, 1998, 'kompozit', 'iroda'),
(12, 'Petronas Twin Tower 2', 'Kuala Lumpur', 'MY', 451.9, 88, 1998, 'kompozit', 'iroda'),
(13, 'The Center', 'Hong Kong', 'CN', 346, 73, 1998, NULL, 'iroda'),
(14, 'Jin Mao Tower', 'Shanghai', 'CN', 420.5, 88, 1999, 'kompozit', 'hotel / iroda'),
(15, 'Burj Al Arab', 'Dubai', 'AE', 321, 56, 1999, 'kompozit', 'hotel'),
(16, 'Emirates Tower One', 'Dubai', 'AE', 354.6, 54, 2000, NULL, 'iroda'),
(17, 'Two International Finance Centre', 'Hong Kong', 'CN', 412, 88, 2003, 'kompozit', 'iroda'),
(18, 'TAIPEI 101', 'Taipei', 'CN', 508, 101, 2004, 'kompozit', 'iroda'),
(19, 'Q1 Tower', 'Gold Coast', 'AU', 322.5, 78, 2005, 'beton', 'lakóépület'),
(20, 'Shimao International Plaza', 'Shanghai', 'CN', 333.3, 60, 2006, 'beton', 'hotel / iroda / kereskedelmi'),
(21, 'Nina Tower', 'Hong Kong', 'CN', 320.4, 80, 2006, 'beton', 'hotel / iroda'),
(22, 'Rose Rayhaan by Rotana', 'Dubai', 'AE', 333, 71, 2007, 'kompozit', 'hotel'),
(23, 'New York Times Tower', 'New York City', 'US', 318.8, 52, 2007, 'acél', 'iroda'),
(24, 'Shanghai World Financial Center', 'Shanghai', 'CN', 492, 101, 2008, 'kompozit', 'hotel / iroda'),
(25, 'Almas Tower', 'Dubai', 'AE', 360, 68, 2008, NULL, 'iroda'),
(26, 'Minsheng Bank Building', 'Wuhan', 'CN', 331, 68, 2008, 'acél', 'iroda'),
(27, 'Trump International Hotel & Tower', 'Chicago', 'US', 423.2, 98, 2009, 'beton', 'lakóépület / hotel'),
(28, 'Bank of America Tower', 'New York City', 'US', 365.8, 55, 2009, 'kompozit', 'iroda'),
(29, 'Burj Khalifa', 'Dubai', 'AE', 828, 163, 2010, 'acél/beton', 'iroda / lakóépület / hotel'),
(30, 'International Commerce Centre', 'Hong Kong', 'CN', 484, 108, 2010, 'kompozit', 'hotel / iroda'),
(31, 'Zifeng Tower', 'Nanjing', 'CN', 450, 66, 2010, 'kompozit', 'hotel / iroda'),
(32, 'Guangzhou International Finance Center', 'Guangzhou', 'CN', 438.6, 103, 2010, 'kompozit', 'hotel / iroda'),
(33, 'China World Tower', 'Beijing', 'CN', 330, 74, 2010, 'kompozit', 'hotel / iroda'),
(34, 'The Index', 'Dubai', 'AE', 326, 80, 2010, 'beton', 'lakóépület / iroda'),
(35, 'Blue Tower', 'Dubai', 'AE', 317.6, 72, 2010, 'beton', 'lakóépület'),
(36, 'KK100', 'Shenzhen', 'CN', 441.8, 100, 2011, 'kompozit', 'hotel / iroda'),
(37, 'Al Hamra Tower', 'Kuwait City', 'KW', 412.6, 80, 2011, 'beton', 'iroda'),
(38, 'The Torch', 'Dubai', 'AE', 352, 86, 2011, 'beton', 'lakóépület'),
(39, 'Tianjin World Financial Center', 'Tianjin', 'CN', 336.9, 75, 2011, 'kompozit', 'iroda'),
(40, 'Longxi International Hotel', 'Wuxi', 'CN', 328, 72, 2011, 'kompozit', 'lakóépület / hotel'),
(41, 'Wenzhou Trade Center', 'Wenzhou', 'CN', 321.9, 68, 2011, 'beton', 'hotel / iroda'),
(42, 'Makkah Royal Clock Tower', 'Mecca', 'SA', 601, 120, 2012, 'acél/beton', 'egyéb / hotel'),
(43, 'Princess Tower', 'Dubai', 'AE', 413.4, 101, 2012, 'acél/beton', 'lakóépület'),
(44, '23 Marina', 'Dubai', 'AE', 392.4, 88, 2012, 'beton', 'lakóépület'),
(45, 'Elite Residence', 'Dubai', 'AE', 380.5, 87, 2012, 'beton', 'lakóépület'),
(46, 'JW Marriott Marquis Hotel Dubai Tower 1', 'Dubai', 'AE', 355.4, 82, 2012, 'beton', 'hotel'),
(47, 'The Pinnacle', 'Guangzhou', 'CN', 350.3, 60, 2012, 'beton', 'iroda'),
(48, 'Keangnam Hanoi Landmark Tower', 'Hanoi', 'VN', 328.6, 72, 2012, 'beton', 'hotel / lakóépület / iroda'),
(49, 'JW Marriott Marquis Hotel Dubai Tower 2', 'Dubai', 'AE', 355.4, 82, 2013, 'beton', 'hotel'),
(50, 'Mercury City Tower', 'Moscow', 'RU', 338.8, 75, 2013, 'beton', 'lakóépület / iroda'),
(51, 'Al Yaqoub Tower', 'Dubai', 'AE', 328, 69, 2013, 'beton', 'hotel / iroda'),
(52, 'The Landmark', 'Abu Dhabi', 'AE', 324, 72, 2013, 'beton', 'lakóépület / iroda'),
(53, 'Deji Plaza', 'Nanjing', 'CN', 324, 62, 2013, 'kompozit', 'hotel / iroda'),
(54, 'One World Trade Center', 'New York City', 'US', 541.3, 94, 2014, 'kompozit', 'iroda'),
(55, 'Burj Mohammed Bin Rashid', 'Abu Dhabi', 'AE', 381.2, 88, 2014, 'beton', 'lakóépület'),
(56, 'Wuxi International Finance Square', 'Wuxi', 'CN', 339, 68, 2014, 'kompozit', 'hotel / iroda'),
(57, 'Wuxi Suning Plaza 1', 'Wuxi', 'CN', 328, 67, 2014, 'kompozit', 'hotel / serviced apartments / iroda'),
(58, 'Shanghai Tower', 'Shanghai', 'CN', 632, 128, 2015, 'kompozit', 'hotel / iroda'),
(59, '432 Park Avenue', 'New York City', 'US', 425.7, 85, 2015, 'beton', 'lakóépület'),
(60, 'OKO - Residential Tower', 'Moscow', 'RU', 354.2, 90, 2015, 'beton', 'lakóépület / serviced apartments / hotel'),
(61, 'Forum 66 Tower 1', 'Shenyang', 'CN', 350.6, 68, 2015, 'kompozit', 'hotel / iroda'),
(62, 'ADNOC Headquarters', 'Abu Dhabi', 'AE', 342, 65, 2015, 'beton', 'iroda'),
(63, 'Chongqing World Financial Center', 'Chongqing', 'CN', 338.9, 72, 2015, 'kompozit', 'hotel / iroda'),
(64, 'Guangzhou CTF Finance Centre', 'Guangzhou', 'CN', 530, 111, 2016, 'kompozit', 'hotel / lakóépület / iroda'),
(65, 'Eton Place Dalian Tower 1', 'Dalian', 'CN', 383.2, 80, 2016, 'kompozit', 'hotel / iroda'),
(66, 'Federation Tower', 'Moscow', 'RU', 373.7, 93, 2016, 'beton', 'lakóépület / iroda'),
(67, 'Tianjin Modern City Office Tower', 'Tianjin', 'CN', 338, 65, 2016, 'kompozit', 'iroda'),
(68, 'Global City Square', 'Guangzhou', 'CN', 318.9, 67, 2016, 'kompozit', 'iroda'),
(69, 'Fanya International Finance Building North', 'Kunming', 'CN', 317.8, 67, 2016, 'kompozit', 'iroda'),
(70, 'Fanya International Finance Building South', 'Kunming', 'CN', 317.8, 66, 2016, 'kompozit', 'iroda'),
(71, 'Chongqing IFS T1', 'Chongqing', 'CN', 316.3, 63, 2016, 'kompozit', 'hotel / iroda'),
(72, 'Ping An Finance Center', 'Shenzhen', 'CN', 599.1, 115, 2017, 'kompozit', 'iroda'),
(73, 'Lotte World Tower', 'Seoul', 'KR', 554.5, 123, 2017, 'kompozit', 'hotel / lakóépület / iroda / kereskedelmi'),
(74, 'Marina 101', 'Dubai', 'AE', 425, 101, 2017, 'beton', 'lakóépület / hotel'),
(75, 'The Address Boulevard', 'Dubai', 'AE', 370, 73, 2017, 'beton', 'lakóépület / hotel / kereskedelmi'),
(76, 'Gevora Hotel', 'Dubai', 'AE', 356.3, 75, 2017, 'acél/beton', 'hotel'),
(77, 'Wilshire Grand Center', 'Los Angeles', 'US', 335.3, 73, 2017, 'kompozit', 'hotel / iroda'),
(78, 'Yuexiu Fortune Center Tower 1', 'Wuhan', 'CN', 330, 68, 2017, 'kompozit', 'iroda'),
(79, 'Hon Kwok City Center', 'Shenzhen', 'CN', 329.4, 80, 2017, 'kompozit', 'lakóépület / iroda'),
(80, 'Zhuhai St. Regis Hotel & Office Tower', 'Zhuhai', 'CN', 328.8, 66, 2017, 'kompozit', 'hotel / iroda'),
(81, 'Yantai Shimao No. 1 The Harbour', 'Yantai', 'CN', 323, 59, 2017, 'kompozit', 'lakóépület / hotel / iroda'),
(82, 'Guangxi Finance Plaza', 'Nanning', 'CN', 321, 68, 2017, 'kompozit', 'hotel / iroda'),
(83, 'Sinar Mas Center 1', 'Shanghai', 'CN', 320, 65, 2017, 'kompozit', 'iroda'),
(84, 'Jiuzhou International Tower', 'Nanning', 'CN', 318, 71, 2017, 'kompozit', 'iroda'),
(85, 'CITIC Tower', 'Beijing', 'CN', 527.7, 109, 2018, 'kompozit', 'iroda'),
(86, 'Vincom Landmark 81', 'Ho Chi Minh City', 'VN', 461.3, 81, 2018, 'kompozit', 'hotel / lakóépület'),
(87, 'Changsha IFS Tower T1', 'Changsha', 'CN', 452.1, 94, 2018, 'kompozit', 'hotel / iroda'),
(88, 'China Resources Tower', 'Shenzhen', 'CN', 392.5, 68, 2018, 'kompozit', 'iroda'),
(89, 'Nanning Logan Century 1', 'Nanning', 'CN', 381.3, 82, 2018, 'kompozit', 'hotel / iroda'),
(90, 'Hanking Center', 'Shenzhen', 'CN', 358.9, 65, 2018, 'kompozit', 'iroda'),
(91, 'Four Seasons Place', 'Kuala Lumpur', 'MY', 342.5, 65, 2018, 'beton', 'lakóépület / hotel'),
(92, 'Comcast Technology Center', 'Philadelphia', 'US', 341.7, 59, 2018, 'kompozit', 'hotel / iroda'),
(93, 'One Shenzhen Bay Tower 7', 'Shenzhen', 'CN', 341.4, 71, 2018, 'kompozit', 'lakóépület / hotel / iroda'),
(94, 'Suning Plaza Tower 1', 'Zhenjiang', 'CN', 338, 75, 2018, 'kompozit', 'hotel / serviced apartments / SOHO / iroda'),
(95, 'DAMAC Heights', 'Dubai', 'AE', 335.1, 88, 2018, 'beton', 'lakóépület'),
(96, '3 World Trade Center', 'New York City', 'US', 328.9, 69, 2018, 'kompozit', 'iroda'),
(97, 'Baoneng Center', 'Shenzhen', 'CN', 327.3, 65, 2018, 'kompozit', 'iroda'),
(98, 'Salesforce Tower', 'San Francisco', 'US', 326.1, 61, 2018, 'kompozit', 'iroda'),
(99, 'Wuhan Center Tower', 'Wuhan', 'CN', 438, 88, 2019, 'kompozit', 'hotel / lakóépület / iroda'),
(100, '30 Hudson Yards', 'New York City', 'US', 386.6, 73, 2019, 'acél/beton', 'iroda / kereskedelmi');

ALTER TABLE `felhokarcolok`
  ADD PRIMARY KEY (`id`);

UPDATE `felhokarcolok` SET `varos` = NULL WHERE `felhokarcolok`.`id` = 6;
UPDATE `felhokarcolok` SET `anyag` = NULL WHERE `felhokarcolok`.`id` IN (13,16,25);

COMMIT;