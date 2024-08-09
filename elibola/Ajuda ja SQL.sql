create database ajudaJa;

use ajudaJa;

create table cliente(

	email varchar(50) unique,
    senha varchar(50),
    nome varchar(50),
    endereço varchar(50),
    numero varchar(50) unique,
    primary key(email)

);

create table servidor(

    nome varchar(50),
    Hdisponível varchar(50),
    valorDoServico double, 
    login varchar(50),
    primary key(login)

);

create table profissao(

    nome varchar(50),
    cod int,
    primary key(cod)

);

create table  pagamento(
 nome varchar(50),
	cod int,
    primary key(cod)

);


create table clienteServidor (

	fk_cliente_email varchar(50) unique,
 	fk_servidor_login varchar(50),
	foreign key(fk_cliente_email) references cliente(email),
    foreign key(fk_servidor_login) references servidor(login),
    primary key(fk_cliente_email, fk_servidor_login)

);


create table servidorPagamento (

	fk_pagamento_cod int,
 	fk_servidor_login varchar(50),
	foreign key(fk_pagamento_cod) references pagamento(cod),
    foreign key(fk_servidor_login) references servidor(login),
    primary key(fk_pagamento_cod, fk_servidor_login)

);

create table servidorProfissao (

	fk_profissao_cod int,
 	fk_servidor_login varchar(50),
	foreign key(fk_servidor_login) references servidor(login),
    foreign key(fk_profissao_cod) references profissao(cod),
    primary key(fk_servidor_login, fk_profissao_cod)

);





