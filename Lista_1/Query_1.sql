-- Criando o banco de dados
create database db_rh;
-- Especificando o BD
use db_rh;
-- Criando a tabela
create table tb_funcionarios(
	id bigint(5) auto_increment,
	nome varchar(255) not null,
    telefone varchar(11),
    funcao varchar(255),
    salario float(50),
    endereco varchar(255),
    ativo boolean not null,
    primary key(id)
);
-- Inserindo dados na tabela
insert into tb_funcionarios(nome,telefone,funcao,salario,endereco,ativo) values ("Erick Neves","11400289212", "Desenvolvedor",5000, "Carapicuiba", true);
insert into tb_funcionarios(nome,telefone,funcao,salario,endereco,ativo) values ("Lucas Arruda","11400289212", "Desenvolvedor",1500, "Barueri", true);
insert into tb_funcionarios(nome,telefone,funcao,salario,endereco,ativo) values ("Jaqueline Camilo","11400289212", "Desenvolvedor",1999, "Barueri", true);
insert into tb_funcionarios(nome,telefone,funcao,salario,endereco,ativo) values ("Peterson Dias","11400289212", "Desenvolvedor",50, "Barueri", true);
insert into tb_funcionarios(nome,telefone,funcao,salario,endereco,ativo) values ("Marina Ruy Barbosa","11400289212", "Desenvolvedor",50000, "Osasco", true);
-- Fazendo select especifico
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;
-- Atualizando dado da tabela
update tb_funcionarios set salario = 10000 where id IN (1,5);


select * from tb_funcionarios;