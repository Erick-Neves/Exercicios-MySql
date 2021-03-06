-- Criando o banco de dados
create database db_ecommerce;
-- Especificando o BD
use db_ecommerce;
-- Criando a tabela
create table tb_produtos(
	id bigint(5) auto_increment,
	nome varchar(255) not null,
    cor varchar(11),
    quantidade bigint(255),
    valor float(50,2),
    estado varchar(255),
    ativo boolean not null,
    primary key(id)
);
-- Inserindo dados na tabela
insert into tb_produtos(nome,cor,quantidade,valor,estado,ativo) values ("Galaxy A51","Branco", "5",2200.99, "Novo", true);
insert into tb_produtos(nome,cor,quantidade,valor,estado,ativo) values ("Galaxy A61","Branco", "25",400.50, "Usado", true);
insert into tb_produtos(nome,cor,quantidade,valor,estado,ativo) values ("Galaxy A71","Preto", "35",2200.99, "Novo", true);
insert into tb_produtos(nome,cor,quantidade,valor,estado,ativo) values ("Galaxy A10","Preto", "45",450.30, "Usado", true);
insert into tb_produtos(nome,cor,quantidade,valor,estado,ativo) values ("Galaxy A30","Cinza", "15",2200.99, "Novo", true);
-- Fazendo select especifico
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;
-- Atualizando dado da tabela
update tb_produtos set quantidade = 0 where id IN (2,4);


select * from tb_produtos;
