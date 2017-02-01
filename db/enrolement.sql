DROP TABLE students CASCADE;
DROP TABLE houses CASCADE;

CREATE TABLE houses (
id serial4 primary key,
name VARCHAR(255),
logo VARCHAR(255)
);

CREATE TABLE students (
id serial4 primary key,
first_name VARCHAR(255),
last_name VARCHAR(255),
house_id INT4 references houses(id) ON DELETE CASCADE,
age INT2
);