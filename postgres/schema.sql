DROP TABLE IF EXISTS books, authors, pictures;

CREATE TABLE IF NOT EXISTS authors (
    id serial PRIMARY KEY,
    name VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS books (
    id serial PRIMARY KEY,
    author_id INT references authors(id),
    title VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS pictures (
    id serial PRIMARY KEY,
    author_id INT references authors(id),
    data bytea
);

INSERT INTO authors(id, name) VALUES(1, 'Jack London');
INSERT INTO authors(id, name) VALUES(2, 'Honore de Balzac');
INSERT INTO authors(id, name) VALUES(3, 'Lion Feuchtwanger');
INSERT INTO authors(id, name) VALUES(4, 'Emile Zola');
INSERT INTO authors(id, name) VALUES(5, 'Truman Capote');

INSERT INTO books(id, author_id, title) VALUES(1, 1, 'Call of the Wild');
INSERT INTO books(id, author_id, title) VALUES(2, 1, 'Martin Eden');
INSERT INTO books(id, author_id, title) VALUES(3, 2, 'Old Goriot');
INSERT INTO books(id, author_id, title) VALUES(4, 2, 'Cousin Bette');
INSERT INTO books(id, author_id, title) VALUES(5, 3, 'Jew Suess');
INSERT INTO books(id, author_id, title) VALUES(6, 4, 'Nana');
INSERT INTO books(id, author_id, title) VALUES(7, 4, 'The Belly of Paris');
INSERT INTO books(id, author_id, title) VALUES(8, 5, 'In Cold blood');
INSERT INTO books(id, author_id, title) VALUES(9, 5, 'Breakfast at Tiffany');

INSERT INTO pictures(id, author_id, data) VALUES(1, 1, 'asdfadfadfasdfasdfasdfadsffds');
INSERT INTO pictures(id, author_id, data) VALUES(2, 2, 'sdfadfadfasdfasdfasdfadsffdsa');
INSERT INTO pictures(id, author_id, data) VALUES(3, 3, 'dfadfadfasdfasdfasdfadsffdsas');
INSERT INTO pictures(id, author_id, data) VALUES(4, 4, 'fadfadfasdfasdfasdfadsffdsasd');
INSERT INTO pictures(id, author_id, data) VALUES(5, 5, 'asdfadfadfasdfasdfasdfadsffdd');
