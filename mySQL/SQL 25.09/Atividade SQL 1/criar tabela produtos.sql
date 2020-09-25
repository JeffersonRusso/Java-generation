create table tb_produtos (
id int,
nome varchar (30),
marca varchar (40),
peso float,
preco float,
id_categoria int,
foreign key ( id_categoria )
references tb_categoria (id_categoria )
);
