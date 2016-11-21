CREATE TABLE article
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	content TEXT NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE section
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	fid INT UNSIGNED NOT NULL,
	ancient INT UNSIGNED NOT NULL,
	article INT UNSIGNED NOT NULL,
	leaf TINYINT NOT NULL DEFAULT 1,
	PRIMARY KEY (id)

) 
;


CREATE TABLE person
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE ancient
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	title VARCHAR(60) NOT NULL,
	author INT UNSIGNED NOT NULL,
	time VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE input_code
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	fivepen CHAR(5) NOT NULL,
	cangjie CHAR(6) NOT NULL,
	zhengma CHAR(5) NOT NULL,
	sijiao CHAR(6),
	PRIMARY KEY (id)

) 
;


CREATE TABLE rare
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	image CHAR(15),
	PRIMARY KEY (id)

) 
;


CREATE TABLE structure
(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name CHAR(9),
	PRIMARY KEY (id)

) 
;


CREATE TABLE making_radical
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word INT UNSIGNED NOT NULL,
	radical INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE example
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	content VARCHAR(255) NOT NULL,
	source INT UNSIGNED NOT NULL,
	note VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE explaination_example
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	explaination INT UNSIGNED NOT NULL,
	example INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE explaination
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word_pinyin_nature INT UNSIGNED NOT NULL,
	content VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE nature
(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name CHAR(15) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE word_pinyin_nature
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word_pinyin INT UNSIGNED NOT NULL,
	nature INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE meaning
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word_pinyin INT UNSIGNED NOT NULL,
	content VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE word_charactor
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word INT UNSIGNED NOT NULL,
	charactor TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE variant
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	source INT UNSIGNED NOT NULL,
	target INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE charactor
(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE word_radical
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	word INT UNSIGNED NOT NULL,
	radical INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE pinyin
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	value VARCHAR(15) NOT NULL,
	phonetic VARCHAR(15) NOT NULL,
	tone TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


CREATE TABLE word_pinyin
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	pinyin INT UNSIGNED NOT NULL,
	word INT UNSIGNED NOT NULL,
	PRIMARY KEY (id)

) 
;


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
	isRadical TINYINT NOT NULL DEFAULT 0,
	PRIMARY KEY (id)

) 
;
