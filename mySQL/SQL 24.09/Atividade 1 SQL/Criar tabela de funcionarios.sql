use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(30),
idade integer,
cargo varchar(30),
entrada date,
primary key (id)
);