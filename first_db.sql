CREATE DATABASE chirpr;

USE chirpr;
SET FOREIGN_KEY_CHECKS = 0; 
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Chirps;
DROP TABLE IF EXISTS Mentions;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE users (
	id int not null auto_increment primary key,
    name varchar(20) not null,
    email varchar(30) not null,
    password text null,
	_created datetime default current_timestamp
);

CREATE TABLE chirps (
	id int not null auto_increment primary key,
	userid int not null,
	message varchar(140) not null ,
	location varchar(60) not null,
	_created datetime default current_timestamp,
    foreign key (userid) references users(id)
);

CREATE TABLE mentions (
	userid int not null,
    chirpid int not null,
	primary key (userid, chirpid),
    foreign key (userid) references users(id),
	foreign key (chirpid) references chirps(id)
);

INSERT INTO users(name, email, password)
	VALUES("Josh", "josh@mywebsite.com", "Hj2ff4ddw:");
INSERT INTO users(name, email, password)
	VALUES("James", "james@mywebsite.com", "Hj2dadawdff4ddw:");
INSERT INTO users(name, email, password)
	VALUES("Karen", "karen@mywebsite.com", "ewdasefrfg2323:");
INSERT INTO users(name, email, password)
	VALUES("Brian", "brian@mywebsite.com", "dfsgr4gerfges:");
INSERT INTO users(name, email, password)
	VALUES("Kelly", "kelly@mywebsite.com", "fsrrgsdrgsdg:");
INSERT INTO users(name, email, password)
	VALUES("Lonnie", "lola@mywebsite.com", "gfsrfserfgsrefg:");
INSERT INTO users(name, email, password)
	VALUES("Mutumbo", "mbo@mywebsite.com", "awdawfsfge:");
INSERT INTO users(name, email, password)
	VALUES("Percy", "p.sledge@mywebsite.com", "dsfsrdefgsrfg:");
INSERT INTO users(name, email, password)
	VALUES("Elvis", "e.pres@mywebsite.com", "sfdsfgs:");
INSERT INTO users(name, email, password)
	VALUES("Opie", "O+A@mywebsite.com", "fsaedfsaedasd:");

INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 0", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("10", "this is chirp number 1", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 2", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 3", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 4", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 5", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 6", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 7", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 8", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 9", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 10", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("8", "this is chirp number 11", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 12", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 13", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 14", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 15", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("10", "this is chirp number 16", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 17", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 18", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 19", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 20", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 21", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 22", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 23", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 24", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 25", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 26", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 27", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("8", "this is chirp number 28", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 29", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 30", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 31", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 32", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 33", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 34", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 35", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 36", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 37", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 38", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 39", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 40", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 41", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 42", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 43", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("10", "this is chirp number 44", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 45", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 46", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 47", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("8", "this is chirp number 48", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 49", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 50", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 51", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 52", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 53", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 54", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 55", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 56", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 57", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 58", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 59", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 60", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 61", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 62", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 63", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 64", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 65", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 66", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 67", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("10", "this is chirp number 68", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 69", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 70", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 71", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 72", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 73", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 74", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 75", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 76", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 77", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 78", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 79", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 80", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 81", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 82", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 83", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 84", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("4", "this is chirp number 85", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("1", "this is chirp number 86", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("3", "this is chirp number 87", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("8", "this is chirp number 88", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 89", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("7", "this is chirp number 90", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 91", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 92", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("9", "this is chirp number 93", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 94", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("6", "this is chirp number 95", "Sao Paolo, Brazil");
INSERT INTO chirps(userid, message, location)
    VALUES("8", "this is chirp number 96", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 97", "Houston, TX");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 98", "Buffalo, NY");
INSERT INTO chirps(userid, message, location)
    VALUES("5", "this is chirp number 99", "Tampa, FL");
INSERT INTO chirps(userid, message, location)
    VALUES("2", "this is chirp number 100", "Buffalo, NY");
    
INSERT INTO mentions(userid, chirpid)
    VALUES("2", "20");
INSERT INTO mentions(userid, chirpid)
    VALUES("5", "21");
INSERT INTO mentions(userid, chirpid)
	VALUES("8", "40");
INSERT INTO mentions(userid, chirpid)
	VALUES("8", "50");
    
-- SELECT * FROM chirps WHERE userid = "4";
-- SELECT * FROM users;
-- SELECT location FROM chirps;

-- SELECT users.name, chirps.userid, chirps.message
-- FROM chirps
-- INNER JOIN users ON chirps.userid = users.id
-- WHERE users.id = "2";

SELECT u.id, c.id
FROM users as u
INNER JOIN chirps as c
    ON u.id = c.userid
INNER JOIN mentions as m
    ON c.id = m.chirpid
WHERE m.userid = "8";