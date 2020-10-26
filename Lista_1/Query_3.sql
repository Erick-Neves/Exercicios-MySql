-- Criando o banco de dados
create database db_escola;
-- Especificando o BD
use db_escola;
-- Criando a tabela
create table tb_alunos(
	id bigint(5) auto_increment,
	nome varchar(255) not null,
    idade bigint(3),
    endereco varchar(255),
    serie varchar(255),
    media float(50,2),
    ativo boolean not null,
    primary key(id)
);
-- Inserindo dados na tabela
insert into tb_alunos(nome,idade,endereco,serie,media,ativo) values ("Susano Tenso",10, "Aldeia da folha","5°ano", 6.9, true);
insert into tb_alunos(nome,idade,endereco,serie,media,ativo) values ("Kakashi Uchirra",18, "Aldeia da folha","3°Ensino Medio", 9.2, true);
insert into tb_alunos(nome,idade,endereco,serie,media,ativo) values ("Naruto Burromaki",13, "Aldeia da folha","8°ano", 5.9, true);
insert into tb_alunos(nome,idade,endereco,serie,media,ativo) values ("Sazuke Utirra",13, "Aldeia da folha","8°ano", 6.9, true);
insert into tb_alunos(nome,idade,endereco,serie,media,ativo) values ("Sacura Kardcaptors",13, "Aldeia da folha","8°ano", 10.0, true);
-- Fazendo select especifico
select * from tb_alunos where media > 7;
select * from tb_alunos where media < 7;
-- Atualizando dado da tabela
update tb_alunos set media = 10.0 where id IN (3,4);


select * from tb_alunos;
