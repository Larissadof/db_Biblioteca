create database if not exists db_meuslivros;
use db_meuslivros;

create table if not exists tbl_assunto(
	id_assunto tinyint auto_increment primary key,
	assunto varchar(100) not null
);
create table if not exists tbl_categoria(
	id_categoria tinyint auto_increment primary key,
	nome_categoria varchar(100) not null
);
create table if not exists tbl_editora(
	id_editora smallint auto_increment primary key,
	nome_editora varchar(100) not null
);
create table if not exists tbl_autor(
	id_autor smallint auto_increment primary key,
	nome_autor varchar(50) not null,
	sobrenome_autor varchar(50) not null
);
create table if not exists tbl_livro(
	id_livro mediumint auto_increment primary key,
	isbn varchar(13) not null,
	nome_livro varchar(50) not null,
	valor_livro float not null, 
	n_paginas_livros smallint not null,
	data_publicacao date not null,
id_editora smallint not null,
id_categoria tinyint not null,
id_assunto tinyint not null,
constraint fk_editora_livro foreign key (id_editora) references tbl_editora(id_editora),
constraint fk_categoria_livro foreign key (id_categoria) references tbl_categoria(id_categoria),
constraint fk_assunto_livro foreign key (id_assunto) references tbl_assunto(id_assunto)
);
create table if not exists tbl_livro_autor (
	id_livro_autor mediumint auto_increment primary key,
	id_autor smallint not null,
	id_livro mediumint not null,
constraint fk_livro_autor_autor foreign key (id_autor) references tbl_autor(id_autor),
constraint fk_livro_autor_livro foreign key (id_livro) references tbl_livro(id_livro)
);

insert into tbl_autor(nome_autor, sobrenome_autor) 
values ('André', 'Milani'), ('Wheslley','Rimar');

select * from tbl_livro;

insert into tbl_editora (nome_editora) values ('Senac');

insert into tbl_assunto (assunto) values ('Inclusão digital');

insert into tbl_categoria (nome_categoria) values ('Tecnologia');

insert into tbl_livro values(default,'9788575225295','Construindo aplicações web com PHP e MySQL',56.90,336,'2020-09-18',1,1,1);

update tbl_livro set valor_livro = 250.85 where id_livro = 1




