create database empresa;
use empresa;

create table cliente (
email varchar(30),
nome varchar(50),

primary key (email)
);

create table servico(
cod int,
nome varchar(50),

primary key(cod)
);

create table profissional(
cod int,
nome varchar(50),
tel int,

primary key(cod)
);

create table clienteservico(
FK_servico_cod int,
FK_cliente_email varchar(30),

foreign key(FK_cliente_email) references cliente(email),
foreign key(FK_servico_cod) references servico(cod)


);

create table servicoprofissional(

FK_sevico_cod int,
FK_profissional_cod int,

foreign key(FK_profissional_cod) references profissional(cod),
foreign key(FK_servico_cod) references servico(cod)


);