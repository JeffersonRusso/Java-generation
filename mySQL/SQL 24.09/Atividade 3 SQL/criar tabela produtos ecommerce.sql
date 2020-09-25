create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255),
peso double,
modelo varchar(255),
preco decimal,
primary key (id)
);
