-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cliente (
nome VARCHAR(50),
sexo enum('m','f','g'),
nascimento date,
id_clientes auto increment PRIMARY KEY
);

CREATE TABLE telefone (
id_telefone auto increment PRIMARY KEY,
numero VARCHAR(10),
ddd char(2),
id_clientes VARCHAR(10),
FOREIGN KEY(id_clientes) REFERENCES cliente (id_clientes)
);

CREATE TABLE endereco (
id_endereco auto increment PRIMARY KEY,
rua VARCHAR(30),
casa VARCHAR(30),
complemento VARCHAR(40),
cidade VARCHAR(40),
id_clientes auto increment,
FOREIGN KEY(id_clientes) REFERENCES cliente (id_clientes)
);

