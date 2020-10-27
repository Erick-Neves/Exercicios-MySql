create database db_RH2;

use db_RH2;

create table tb_cargo(
	id bigint(5) auto_increment,
    funcao varchar(255) not null,
    setor varchar(255) not null,
    ramo varchar(255) not null,
    primary key(id)
);

insert into tb_cargo(funcao,setor,ramo)
	values("Desenvolvedor Java jr", "Back-End", "Tecnologia");
insert into tb_cargo(funcao,setor,ramo)
	values("Desenvolvedor Java jr", "Front-End", "Tecnologia");
insert into tb_cargo(funcao,setor,ramo)
	values("Desenvolvedor Java Senior", "Back-End", "Tecnologia");
insert into tb_cargo(funcao,setor,ramo)
	values("Desenvolvedor Java Senior", "Front-End", "Tecnologia");
insert into tb_cargo(funcao,setor,ramo)
	values("Desenvolvedor Java Pleno", "Back-End", "Tecnologia");
    
create table tb_funcionario(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    telefone varchar(255),
    endereco varchar(255),
    salario decimal(10,2),
    cargo_id bigint,
    primary key(id),
    foreign key(cargo_id) references tb_cargo(id)
    );

insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Erick Neves","11 4002-8922","Onde a felicidade habita!",80000,5);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("João Neves","11 4002-8922","Onde a felicidade já habitava!",1500,1);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Maria Neves","11 4002-8922","Onde a felicidade ainda não habita!",2000,2);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Lucia Neves","11 4002-8922","Onde a felicidade já habitava!",1999,2);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Wanda Neves","11 4002-8922","Onde a felicidade ainda não habita!",3000,3);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Luisa Neves","11 4002-8922","Onde a felicidade já habitava!",8000,4);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Jhonathan Neves","11 4002-8922","Onde a felicidade ainda não habita!",5000,3);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Creusa Neves","11 4002-8922","Onde a felicidade já habitava!",2020,2);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Vilma Neves","11 4002-8922","Onde a felicidade ainda não habita!",3030,3);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Salsicha Neves","11 4002-8922","Onde a felicidade já habitava!",4040,3);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Fred Neves","11 4002-8922","Onde a felicidade já habitava!",5050,4);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Scooby Dooby Neves","11 4002-8922","Onde a felicidade ainda não habita!",6060,3);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Xandão Neves","11 4002-8922","Onde a felicidade já habitava!",7070,4);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Mario Neves","11 4002-8922","Onde a felicidade ainda não habita!",8080,4);
insert into tb_funcionario(nome,telefone,endereco,salario,cargo_id)
	values("Gilmar Neves","11 4002-8922","Onde a felicidade já habitava!",9090,4);
    
select * from tb_funcionario where salario > 2000;

select * from tb_funcionario where salario < 2000 and salario > 1000;

select * from tb_funcionario where nome like "%C%";