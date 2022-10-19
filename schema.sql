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

-- Create Games table
CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  item_id INT,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item(id),
  PRIMARY KEY (id)
);

-- Create Author table
CREATE TABLE author (
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  PRIMARY KEY(id)
);



