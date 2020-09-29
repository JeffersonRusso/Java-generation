create database projeto;
use projeto;
CREATE TABLE tb_postagem (
	fk_tema INT NOT NULL,
	id_postagem INT NOT NULL AUTO_INCREMENT,
	fk_usuario INT NOT NULL,
	Mensagem varchar(255) NOT NULL,
	Imagem varchar(255) NOT NULL,
	Interacao_euLi varchar(255) NOT NULL,
	Data_postagem DATE NOT NULL,
	PRIMARY KEY (id_postagem)
);
ALTER TABLE tb_postagem 
ADD FOREIGN KEY (fk_tema) REFERENCES tb_tema(id_tema);
ALTER TABLE tb_postagem 
ADD FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id_usuario);
describe tb_postagem;

CREATE TABLE tb_usuario (
	id_usuario INT NOT NULL AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	email_usuario varchar(255) NOT NULL,
	senha varchar(15) NOT NULL,
	tipo_usuario INT NOT NULL DEFAULT '1',
	PRIMARY KEY (id_usuario)
);
describe tb_usuario;

CREATE TABLE tb_tema (
	id_tema INT NOT NULL AUTO_INCREMENT UNIQUE,
	Assunto varchar(255) NOT NULL,
	Disciplina_materia varchar(255) NOT NULL,
	Nivel_ensino varchar(255) NOT NULL,
	PRIMARY KEY (id_tema)
);
describe tb_tema;