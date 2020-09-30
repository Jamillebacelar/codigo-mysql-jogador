#6. Dado o projeto lógico relacional abaixo desenvolver o projeto físico
#Deve ser criada uma base de dados chamada campeonato;
# Devem ser criadas as tabelas acima;
# Um dos atributos deve ser unique;
# Inserir 1 tuplas para cada uma das tabelas;

create database if not exists db_campeonato;
use db_campeonato; 

create table if not exists tbl_time (
cod int primary key,
nome varchar (40) not null,
numero_de_socios integer not null);

create table if not exists tbl_jogador (
matricula int primary key,
nome varchar (40) not null,
cpf char (11) not null,
cod int,
constraint fk_jogador foreign key (cod) references tbl_time(cod));

create table if not exists telefone (
cod int primary key,
numero char(9) not null,
matricula int not null,
constraint fk_time foreign key (matricula) references tbl_jogador(matricula));
