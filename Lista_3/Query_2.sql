create database db_contruindo_nossa_vida;
use db_contruindo_nossa_vida;

create table tb_categoria(
	id bigint(5) auto_increment,
    categoria varchar(255),
    responsavel varchar(255),
    zona varchar(255),
    primary key(id)
);

insert into tb_categoria(categoria,responsavel,zona)
	values("Massa","Pedreiro","Interior");
insert into tb_categoria(categoria,responsavel,zona)
	values("Estrutura","Engenheiro","Exterior");
insert into tb_categoria(categoria,responsavel,zona)
	values("Bloco","Pedreiro","Interior");


create table tb_produto(
	id bigint(5) auto_increment,
    item varchar(255),
    descricao varchar(255),
    peso varchar(255),
    valor decimal(10,2),
    categoria_id bigint(5),
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(item,descricao,peso,valor,categoria_id)
	values("Tijolo baiano","Aquele bloco laranja com buracos.","1KG",5,3);
 insert into tb_produto(item,descricao,peso,valor,categoria_id)
	values("Tijolo cinza","Aquele bloco cinza com buracos.","1KG",10,3); 
insert into tb_produto(item,descricao,peso,valor,categoria_id)
	values("Argamassa","Aquela massa branca para interiores.","1KG",12,1);
insert into tb_produto(item,descricao,peso,valor,categoria_id)
	values("Cimento","Aquela massa cinza para fundação.","1KG",15,1);
insert into tb_produto(item,descricao,peso,valor,categoria_id)
	values("Viga","Aquela estrutura de metal.","1KG",70,2);

    
select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor <60;

select * from tb_produto where item like "%CI%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 1;