--Cria DB
create database projeto_2;
--Seleciona o DB
use projeto_2;
--Cria tabelas
create table usuario (
id int not null auto_increment,
nome varchar(200),
imagem varchar(250),
nome_usuario varchar(50),
data_cadastro date,
PRIMARY key (id));

create table cartao (
id int not null auto_increment ,
numero int(16),
cvv int(4),
data_expiracao date,
nome_usuario varchar(50),
valido tinyint(1),
data_cadastro date,
PRIMARY key (id));

create table transacao (
id int not null auto_increment,
id_usuario int,
id_cartao int,
valor float(10,2),
data_cadastro date,
PRIMARY key (id),
FOREIGN KEY (id_usuario) REFERENCES usuario(id),
FOREIGN KEY (id_cartao) REFERENCES cartao(id));



