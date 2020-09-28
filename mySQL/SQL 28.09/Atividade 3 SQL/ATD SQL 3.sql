-- criar DB
create database db_cursoDaMinhaVida;

-- usar DB 
use db_cursoDaMinhaVida;

-- criar tabela de categorias
create table tb_categoria (
id int auto_increment not null,
area_curso varchar(255),
situação bool,
primary key (id)
);

-- criar tabela de produtos
create table tb_produto (
id int auto_increment not null,
nome varchar(255),
idade_min int,
preco decimal,
tipo_curstipo_cursoo varchar(100),
id_categoria int,
primary key ( id ),
foreign key ( id_categoria )
references tb_categoria ( id )
);

select * from tb_categoria;

insert into tb_categoria ( area_curso, situação) values
("TI", true);
insert into tb_categoria ( area_curso, situação) values
("LINGUAS", true);
insert into tb_categoria ( area_curso, situação) values
("COZINHA", false);
insert into tb_categoria ( area_curso, situação) values
("MUSICA", true);
insert into tb_categoria ( area_curso, situação) values
("OUTROS", true);

select * from tb_produto;

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("REDES INICIANTE", 14 , 400.00, "REDES DE COMPUTADOR / INTERNET" , 1);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("PROGRAMAÇÃO INICIANTE"
, 15, 600.00, "PROGRAMAÇÃO COMPUTADOR / CELULAR", 1);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("INGLES AVANÇADO", 18, 2500.00, "INGLES CONVERSA E ESCRITA" , 2);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("FRANCES", 18, 300.00, "FRANCES PARA VIAGEM", 2);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("CULINARIA", 18, 500, "FOCO EM DOCES", 3);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("VIOLINO", 12, 800, "VIOLINO TEORIA E PRATICA", 4);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("VIOLÃO", 12, 750, "VIOLÃO PRATICA", 4);

insert into tb_produto ( nome, idade_min, preco, tipo_curso, id_categoria ) values
("PEDREIRO", 18, 500.00, "BASICO AO AVANÇADO", 5);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome LIKE "%JAV%";

SELECT * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

