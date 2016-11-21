CREATE TABLE word
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	value CHAR(4) NOT NULL,
	external_stroke TINYINT UNSIGNED NOT NULL,
	total_stroke TINYINT UNSIGNED NOT NULL,
	structure TINYINT UNSIGNED NOT NULL,
	making_method CHAR(6),
	unicode CHAR(10),
	stroke VARCHAR(192),
	PRIMARY KEY (id)

) 
;


