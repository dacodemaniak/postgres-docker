DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id serial PRIMARY KEY,
	last_name VARCHAR(45) NOT NULL,
	first_name VARCHAR(45),
	email VARCHAR(45) UNIQUE NOT NULL,
	phone_number VARCHAR(20) UNIQUE NOT NULL,
	login VARCHAR(20) UNIQUE NOT NULL,
	password VARCHAR(64) NOT NULL
);

DROP TABLE IF EXISTS type_media;
CREATE TABLE type_media (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS course;
CREATE TABLE course (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	created_at DATE NOT NULL,
	updated_at DATE
);

-- Create a new module table
DROP TABLE IF EXISTS module;
CREATE TABLE module (
	id SERIAL PRIMARY KEY,
	name VARCHAR(75) UNIQUE NOT NULL,
	objective TEXT,
	course_id INT NOT NULL,
	CONSTRAINT fk_module_to_course FOREIGN KEY (course_id) REFERENCES course (id)
);

DROP TABLE IF EXISTS media;
CREATE TABLE media (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	summary TEXT,
	duration DECIMAL(5,2) NOT NULL DEFAULT 0,
	created_at DATE NOT NULL,
	url VARCHAR(255) NOT NULL,
	typemedia_id INT,
	module_id INT NOT NULL,
	CONSTRAINT fk_media_to_type_media FOREIGN KEY (typemedia_id) REFERENCES type_media (id),
	CONSTRAINT fk_media_to_module FOREIGN KEY (module_id) REFERENCES module (id)
);


INSERT INTO type_media (title) VALUES ('Video'), ('Slide'), ('Document');



