-- Create database (run this if you want explicit SQL instead of relying on JPA)
CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;

-- users table will be created by JPA if ddl-auto=update; sample insert:
CREATE TABLE IF NOT EXISTS users (
  id BIGINT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255),
  email VARCHAR(255),
  PRIMARY KEY (id),
  UNIQUE KEY (username)
);

CREATE TABLE IF NOT EXISTS book (
  id BIGINT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  author VARCHAR(255),
  price DOUBLE,
  description TEXT,
  PRIMARY KEY (id)
);

INSERT INTO book (title, author, price, description) VALUES
('Spring in Action','Craig Walls',29.99,'A practical guide to Spring.'),
('Clean Code','Robert C. Martin',24.99,'A handbook of agile software craftsmanship.'),
('Effective Java','Joshua Bloch',39.99,'Best practices for Java programming.');
