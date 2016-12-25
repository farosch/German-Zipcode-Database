# German-Zipcode-Database

**!!! GERMANY ONLY !!!**

## Whats this?
This is a MySQL zipcode database for german addresses containing city, state and provinces

## Query examples:
### SELECT * FROM joined where Zipcode like 78052;

## Database structure
```
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `state` (
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
```

## Credits
Everything needed was found on www.opengeodb.org.
