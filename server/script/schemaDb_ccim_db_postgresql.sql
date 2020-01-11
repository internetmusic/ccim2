--
-- Database: ccim_db
--

CREATE DATABASE ccim_db;

-- ENTITIES

--
-- Schema entity copyrightregistration
--

CREATE TABLE IF NOT EXISTS "copyrightregistration" (
	Audio varchar(130) ,
	Image varchar(130) ,
	fid int ,
	title varchar(130) ,
	
	_id SERIAL PRIMARY KEY

);

--
-- Schema entity copyrightshares
--

CREATE TABLE IF NOT EXISTS "copyrightshares" (
	email varchar(130) ,
	shares numeric  NOT NULL,
	wallet varchar(130)  NOT NULL,
	
	_id SERIAL PRIMARY KEY

);




-- relation 1:m Copyrightshares CopyrightRegistration - CopyrightShares
ALTER TABLE copyrightregistration ADD COLUMN Copyrightshares INTEGER  REFERENCES "copyrightshares"(_id);
