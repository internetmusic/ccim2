--
-- Database: `ccim_db`
--

CREATE DATABASE IF NOT EXISTS `ccim_db`;
USE `ccim_db`;


-- ENTITIES

--
-- Struttura della tabella `copyrightregistration`
--

CREATE TABLE IF NOT EXISTS `copyrightregistration` (
	`Audio` varchar(130) ,
	`Image` varchar(130) ,
	`fid` int ,
	`title` varchar(130) ,
	
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);


--
-- Struttura della tabella `copyrightshares`
--

CREATE TABLE IF NOT EXISTS `copyrightshares` (
	`email` varchar(130) ,
	`shares` numeric  NOT NULL,
	`wallet` varchar(130)  NOT NULL,
	
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





-- relation 1:m Copyrightshares CopyrightRegistration - CopyrightShares
ALTER TABLE `copyrightregistration` ADD COLUMN `Copyrightshares` int(11)  REFERENCES copyrightshares(_id);


