CREATE DATABASE catalog_database;

-- Create Label table
CREATE TABLE Label(
 id INTEGER GENERATED ALWAYS AS IDENTITY,
 title VARCHAR(30),
 color VARCHAR(10),
 PRIMARY KEY(id)
);

-- Create Book table  
CREATE TABLE Book(
  id INT GENERATED ALWAYS AS IDENTITY,
  publisher VARCHAR(50),
  cover_state VARCHAR(5),
  publish_date DATE,
  archived BOOLEAN,
  label_id  INT,
  PRIMARY KEY(id),
  CONSTRAINT fk_bk FOREIGN KEY (label_id) REFERENCES label (id) ON DELETE CASCADE  
);

-- CREATE GENRE TABLE
CREATE TABLE Genre(id INTEGER GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255),
PRIMARY KEY(id));

-- CREATE MUSIC ALBUM TABLE
CREATE TABLE musicAlbum(
  id INT GENERATED ALWAY AS IDENTITY,
  on_spotify BOOLEAN,
  publish_date DATE,
  genre_id INT,
  PRIMARY KEY(id),
  CONSTRAINT fk_ma FOREIGN KEY (genre_id) REFERENCES genre (id) ON DELETE CASCADE
);