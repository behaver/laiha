CREATE TABLE pinyin
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	value VARCHAR(15) NOT NULL,
	phonetic VARCHAR(15) NOT NULL,
	tone TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


