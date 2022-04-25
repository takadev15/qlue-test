CREATE SCHEMA qlue;

CREATE TABLE persons (
  id int NOT NULL,
  name varchar(200),
  PRIMARY KEY(id)
);

CREATE TABLE items (
  id int NOT NULL,
  name varchar(200),
  price varchar(10),
  PRIMARY KEY(id)
);

CREATE TABLE transactions (
  id int NOT NULL,
  person_id int NOT NULL,
  item_id int NOT NULL,
  total int,
  date timestamp,
  FOREIGN KEY(person_id) REFERENCES persons(id),
  FOREIGN KEY(item_id) REFERENCES items(id)
);
