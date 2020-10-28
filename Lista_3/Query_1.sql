create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint(5) auto_increment,
    categoria varchar(255),
    parte varchar(255),
    porte varchar(255),
    primary key(id)
);

insert into tb_categoria(categoria,parte,porte)
	values("Primeira","Nobre","Pequeno");
insert into tb_categoria(categoria,parte,porte)
	values("Segunda","Nobre","Grande");
insert into tb_categoria(categoria,parte,porte)
	values("Terceira","Resto","Pequeno");

create table tb_produto(
	id bigint(5) auto_increment,
    carne varchar(255),
    animal varchar(255),
    peso varchar(255),
    valor decimal(10,2),
    categoria_id bigint(5),
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(carne,animal,peso,valor,categoria_id)
	values("Peito","Frango","1KG",12,1);
insert into tb_produto(carne,animal,peso,valor,categoria_id)
	values("Lombo","Porco","1KG",30,2);
insert into tb_produto(carne,animal,peso,valor,categoria_id)
	values("Miúdos","Frango","1KG",2,3);
insert into tb_produto(carne,animal,peso,valor,categoria_id)
	values("Filé Mingnon","Boi","1KG",80,1);
insert into tb_produto(carne,animal,peso,valor,categoria_id)
	values("Pé","Galinha","1KG",12,3);
    
select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor <60;

select * from tb_produto where carne like "%CO%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 1;

