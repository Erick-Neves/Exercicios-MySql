create database db_ecommerce;
use db_ecommerce;

create table tb_categoria(
	id bigint(5) auto_increment,
    categoria varchar(255),
    setor varchar(255),
    porte varchar(255),
    primary key(id)
);

insert into tb_categoria(categoria,setor,porte)
	values("Smartphones","Tecnologia","Pequeno");
insert into tb_categoria(categoria,setor,porte)
	values("Eletroeletronicos","Tecnologia","Medio");
insert into tb_categoria(categoria,setor,porte)
	values("Geladeiras","Tecnologia","Grande");
    insert into tb_categoria(categoria,setor,porte)
	values("Tablets","Tecnologia","Pequeno");
insert into tb_categoria(categoria,setor,porte)
	values("Notebooks","Tecnologia","Medio");
    
    
create table tb_produto(
	id bigint(5) auto_increment,
    nome varchar(255),
    cor varchar(255),
    estado varchar(255),
    valor decimal(10,2),
    categoria_id bigint(5),
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Iphone X","Branco","Novo",5000,1);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Iphone XR","Preto","Novo",7000,1);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Electrolux Inox","Cinza Espacial","Novo",3000,3);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Dell Inspire One","Branco","Usado",1500,5);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Acer Ryzen Power","Vermelho","Novo",12000,5);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Motorola Xoom","Preto","Novo",1000,4);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Galaxy Tab 8","Azul Perolado","Novo",1999,4);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Headset Razer Octopus","Verde","Novo",400,2);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Mouse Gamer","Branco","Novo",150,2);
insert into tb_produto(nome,cor,estado,valor,categoria_id)
	values("Galaxy A51","Branco","Novo",2200,1);
    
select * from tb_produto where valor > 2000;

select * from tb_produto where valor > 1000 and valor <2000;

select * from tb_produto where nome like "%C%";