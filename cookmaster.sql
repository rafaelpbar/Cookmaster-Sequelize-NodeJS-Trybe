DROP DATABASE IF EXISTS cookmaster;
CREATE DATABASE IF NOT EXISTS cookmaster;

USE cookmaster;

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS recipes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    user VARCHAR(100) NOT NULL,
	name VARCHAR(100) NOT NULL,
    ingredients VARCHAR(300) NOT NULL,
    instructions VARCHAR(300) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (email, password, first_name, last_name)
VALUES ('rafael.barbosa@gmail.com', '12345678', 'rafael', 'barbosa'),
       ('caia.lages@gmail.com', '12345678', 'caia', 'lages'),
       ('stella.barbosa@gmail.com', '12345678', 'stella', 'barbosa');

INSERT INTO recipes (user_id, user, name, ingredients, instructions)
VALUES (1, 'rafael barbosa', 'Receita de Bolo', 'Farinha,ovo,leite', '30 minutos no forno'),
       (1, 'rafael barbosa', 'Receita de Cookie', 'Farinha,ovo,leite', '20 minutos no forno'),
       (1, 'rafael barbosa', 'Receita de cafe', 'pó de cafe,agua', '10 minutos no fogo'),
       (1, 'rafael barbosa', 'Receita de miojo', 'miojo,agua', '3 minutos no fogo'),
       (1, 'rafael barbosa', 'Receita de mexidão', 'ovo,preseunto,queijo', 'mistura e frita na frigideira');

SELECT * FROM users;
SELECT * FROM recipes;
