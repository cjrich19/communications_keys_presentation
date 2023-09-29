DROP TABLE IF EXISTS students CASCADE;
CREATE TABLE students(
	id INTEGER NOT NULL,
	last_name VARCHAR,
	email VARCHAR,
	age INTEGER,
	PRIMARY KEY(id),
	UNIQUE (email)
);

INSERT INTO students VALUES (001, 'Waterman', 'sw@usfca.edu', 29), (002, 'Bhat', NULL, 23),
(003, 'Richter', 'cr@usfca.edu', 22), (004, 'Xiao', 'kx@usfca.edu', 22);

DROP TABLE IF EXISTS grades CASCADE;

CREATE TABLE grades(
	student_id INTEGER NOT NULL,
	course_id INTEGER NOT NULL,
	grade VARCHAR,
	PRIMARY KEY (student_id, course_id),
	FOREIGN KEY (student_id) REFERENCES students(id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

INSERT INTO grades VALUES (001, 699, 'A'), (001, 931, 'A-'), (004, 931, 'A');



SELECT * FROM students;
SELECT * FROM grades;


INSERT INTO students VALUES (NULL, 'clements', 'rc@usfca.edu', 19);


UPDATE students SET email = 'sw@usfca.edu' WHERE id = 002;


UPDATE students SET id = 003 WHERE id = 002;



DELETE FROM grades WHERE student_id = 4;



SELECT * FROM students;
SELECT * FROM grades;


INSERT INTO grades VALUES (004, 931, 'A');


DELETE FROM students WHERE id = 1;


SELECT * FROM students;
SELECT * FROM grades;

