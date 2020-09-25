create table tb_funcionario (
matricula int,
nome varchar (30),
idade int,
genero char,
cargo int,
salario float,
foreign key ( cargo )
references tb_cargo (id_cargo )
);
