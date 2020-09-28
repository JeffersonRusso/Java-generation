-- criar DB
create database db_construindo_a_nossa_vida;

-- usar DB 
use db_construindo_a_nossa_vida;

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
preco decimal,
classe varchar(10),
id_categoria int,
primary key ( id ),
foreign key ( id_categoria )
references tb_categoria ( id )
);

select * from tb_categoria;

insert into tb_categoria ( tipo_categoria, classe) values
("BANHEIRO", "B");
insert into tb_categoria ( tipo_categoria, classe) values
("JARDIM", "B");
insert into tb_categoria ( tipo_categoria, classe) values
("FERRAGEM", "C");
insert into tb_categoria ( tipo_categoria, classe) values
("FERRAMENTAS", "A");
insert into tb_categoria ( tipo_categoria, classe) values
("PISO", "C");

select * from tb_produto;

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("Ducha Lorenzetti Acqua Duo Ultra"
, 10.00, 409.00, "AA", 1);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("Kit Bacia Com Caixa Acoplada"
, 22.00, 1500.00, "A", 1);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("PISCINA PVC 2MIL L", 19.00, 250.00, "B", 2);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("REFLETOR LED", 2.00, 30.00, "A", 2);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("FERRO 3/4", 10.00, 50.00, "C", 3);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("JOGO DE CHAVE DE FENDA", 10.00, 12.00, "C", 4);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("CHAVE L N5", 1.00, 15.00, "C", 4);

insert into tb_produto ( nome, peso, preco, classe, id_categoria ) values
("PISO VERDE", 15.00, 56.00, "AAA", 4);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome LIKE "%CI%";

SELECT * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
where tb_categoria.id = 1;


