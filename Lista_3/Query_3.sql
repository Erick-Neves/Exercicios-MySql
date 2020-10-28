create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint(5) auto_increment,
    categoria varchar(255),
    zona varchar(255),
    duracao varchar(255),
    primary key(id)
);

insert into tb_categoria(categoria,zona,duracao)
	values("Animação","Tecnologia","Rapido");
insert into tb_categoria(categoria,zona,duracao)
	values("Desenvolvimento","Tecnologia","Longo");
insert into tb_categoria(categoria,zona,duracao)
	values("Musica","Lazer","Medio");


create table tb_produto(
	id bigint(5) auto_increment,
    curso varchar(255),
    descricao varchar(255),
    quantidade varchar(255),
    valor decimal(10,2),
    categoria_id bigint(5),
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(curso,descricao,quantidade,valor,categoria_id)
	values("Maya","Animação e modelagem 3D.","14 aulas",160,1);
insert into tb_produto(curso,descricao,quantidade,valor,categoria_id)
	values("Cinema","Animação e modelagem 3D.","18 aulas",160,1);
insert into tb_produto(curso,descricao,quantidade,valor,categoria_id)
	values("Bootcamp Java","Todos os processos de desenvolvimento","300 aulas",8000,2);
insert into tb_produto(curso,descricao,quantidade,valor,categoria_id)
	values("Violão","Aprenda a todar violão do zero.","10 aulas",30,3);

    
select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor <60;

select * from tb_produto where curso like "%JAV%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 1;