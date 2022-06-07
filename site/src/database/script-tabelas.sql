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

insert into usuario values 
(null,'luiz felipe', 'luiz2@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz3@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz4@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz5@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz6@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz7@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz8@sptech.com', '1234',1),
(null,'luiz felipe', 'luiz9@sptech.com', '1234',2),
(null,'luiz felipe', 'luiz10@sptech.com', '1234',2),
(null,'luiz felipe', 'luiz11@sptech.com', '1234',2),
(null,'luiz felipe', 'luiz12@sptech.com', '1234',2),
(null,'luiz felipe', 'luiz13@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz14@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz15@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz16@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz17@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz18@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz19@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz20@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz21@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz22@sptech.com', '1234',3),
(null,'luiz felipe', 'luiz23@sptech.com', '1234',4),
(null,'luiz felipe', 'luiz24@sptech.com', '1234',4),
(null,'luiz felipe', 'luiz25@sptech.com', '1234',4),
(null,'luiz felipe', 'luiz26@sptech.com', '1234',4),
(null,'luiz felipe', 'luiz27@sptech.com', '1234',4),
(null,'luiz felipe', 'luiz28@sptech.com', '1234',5),
(null,'luiz felipe', 'luiz29@sptech.com', '1234',5),
(null,'luiz felipe', 'luiz30@sptech.com', '1234',6),
(null,'luiz felipe', 'luiz31@sptech.com', '1234',7),
(null,'luiz felipe', 'luiz32@sptech.com', '1234',7),
(null,'luiz felipe', 'luiz33@sptech.com', '1234',7),
(null,'luiz felipe', 'luiz34@sptech.com', '1234',8),
(null,'luiz felipe', 'luiz35@sptech.com', '1234',9),
(null,'luiz felipe', 'luiz36@sptech.com', '1234',9),
(null,'luiz felipe', 'luiz37@sptech.com', '1234',8);





/* Select votos pilar favorito*/
select pilar as pilar ,count(fk_hashira) as 'Votos'
from hashira as h
join usuario as u on u.fk_hashira = h.id_hashira
group by pilar;

select count(id_usuario) as 'Numero de acessos'
from usuario;