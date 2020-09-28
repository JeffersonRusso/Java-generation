-- criar DB
create database db_cidade_dos_vegetais;

-- usar DB 
use db_cidade_dos_vegetais;

-- criar tabela de categorias
create table tb_categoria (
id int auto_increment not null,
tipo_categoria varchar(255),
classe varchar(30),
primary key (id)
);

-- criar tabela de produtos
create table tb_produto (
id int auto_increment not null,
nome varchar(255),
peso float,
preco float,
id_categoria int,
primary key ( id ),
foreign key ( id_categoria )
references tb_categoria ( id )
);

select * from tb_categoria;

-- popular dados
insert into tb_categoria ( tipo_categoria, classe) values
("Leguminosas", "A");
insert into tb_categoria ( tipo_categoria, classe) values
("Frutos", "B");
insert into tb_categoria ( tipo_categoria, classe) values
("Tubérculos", "C");
insert into tb_categoria ( tipo_categoria, classe) values
("Cereais", "B");
insert into tb_categoria ( tipo_categoria, classe) values
("Oleaginosas", "B");

select * from tb_produto;

insert into tb_produto ( nome, peso, preco, id_categoria ) values
("MAÇA VERDE", 0.120, 20.00, 2);
insert into tb_produto ( nome, peso, preco, id_categoria ) values
("ABOBORA", 0.220, 14.00, 2);
insert into tb_produto ( nome, peso, preco, id_categoria ) values
("BATATA", 0.120, 20.00, 3);
insert into tb_produto ( nome, peso, preco, id_categoria ) values
("MILHO", 0.085, 4.00, 4);
insert into tb_produto ( nome, peso, preco, id_categoria ) values
("NOZES", 0.100, 30.00, 5);
insert into tb_produto ( nome, peso, preco, id_categoria ) values
("AMENDOAS", 0.100, 35.00, 5);


-- procurar valores / preco > 3 e preco < 60
select * from tb_produto where preco > 3.00 and preco < 60.00;

-- procurar nomes com CA
select * from tb_produto where nome LIKE "%CA%";

-- "somar" tabelas, focando na tabela produto
SELECT * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
where tb_categoria.id = 2;

-- "somar" tabelas, forcando na tabela categoria
SELECT * from tb_categoria
inner join tb_produto on tb_categoria.id = tb_produto.id_categoria



