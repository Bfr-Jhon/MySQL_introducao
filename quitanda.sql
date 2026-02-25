CREATE DATABASE db_quitanda;

use db_quitanda;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    primary KEY(id)
);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values ("tomate", 1000, "2026-03-24", 8.99);

select * from tb_produtos;


update tb_produtos SET preco = 8.99 where id = 1;

alter table tb_produtos modify preco decimal(6, 2);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values ("Banana", 15000, "2026-03-04", 12.50),
	    ("Morango", 5000, "2026-03-14", 22.00),
        ("Alface", 500, "2026-03-01", 6.50),
        ("Beterraba", 4000, "2026-03-24", 09.50)
;


alter table tb_produtos add descricao varchar(500);
alter table tb_produtos change descricao descricao varchar(500);
alter table tb_produtos drop descricao_produto;


select nome, date_format(data_validade, '%d/%m/%y') as data_validade, preco from tb_produtos;