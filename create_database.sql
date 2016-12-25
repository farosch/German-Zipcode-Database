CREATE SCHEMA IF NOT EXISTS `zip`;
USE `zip`;

CREATE TABLE `zip.city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `zip.county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `zip.state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `zipcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE VIEW zip.joined
	AS SELECT zip.city.name AS 'City',
	zip.county.name AS 'County',
	zip.state.name AS 'State',
	zip.zipcode.zipcode AS 'Zipcode'
FROM zip.city
INNER JOIN zip.county
	ON zip.city.county_id=zip.county.id
INNER JOIN zip.state
	ON zip.city.state_id=zip.state.id
INNER JOIN zip.zipcode
	ON zip.city.id=zip.zipcode.city_id;
