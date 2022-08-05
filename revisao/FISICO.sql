CREATE DATABASE revisao;
USE revisao;


CREATE TABLE produtos (
codigo int PRIMARY KEY AUTO_INCREMENT
codigo int PRIMARY KEY,
nome_produto varchar(255),
cor varchar(255),
preco decimal(6,2)
);

CREATE TABLE clientes (
id_cliente int PRIMARY KEY  AUTO_INCREMENT,
estado varchar(2),
email varchar(255),
nome_cliente varchar(255)
);

CREATE TABLE compras (
nf int PRIMARY KEY  AUTO_INCREMENT,
data_compra date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produtos (codigo)
);
