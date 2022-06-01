-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
create database kimetsu_no_yaiba;
use kimetsu_no_yaiba;

create table usuario (
id_usuario int primary key auto_increment,
nome varchar (45),
email varchar(45),
senha varchar(45),
fk_hashira int);

create table hashira (
id_hashira int primary key auto_increment,
nome varchar (45),
pilar varchar(45),
espada varchar(45));

alter table usuario add foreign key (fk_hashira) references hashira (id_hashira);

select* from hashira;
select* from usuario;

insert into usuario values 
(null,'luiz felipe', 'luiz@sptech.com', '1234',null);

insert into hashira values
(null,'Giyu Tomioka', 'Água', 'Azul'),
(null,'Shinobu Kocho', 'Inseto', 'Azul lavanda'),
(null,'Kyojuro Rengoku', 'Chamas', 'Vermelha'),
(null,'Tengen Uzui', 'Som', 'Âmbar'),
(null,'Mitsuri Kanroji', 'Amor', 'Rubro-negra'),
(null,'Muichiro Tokito', 'Névoa', 'Branca'),
(null,'Gyomei Himejima', 'Pedra', 'Cinza'),
(null,'Obanai Iguro', 'Serpente', 'Lavanda'),
(null,'Sanemi Shinazugawa', 'Vento', 'Verde');

/* Select votos pilar favorito*/
select pilar as pilar ,count(fk_hashira) as 'Votos'
from hashira as h
join usuario as u on u.fk_hashira = h.id_hashira
group by pilar;
