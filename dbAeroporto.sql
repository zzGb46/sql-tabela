drop database dbAeroporto;
create database dbAeroporto;
use dbAeroporto;

create table tbsecretaria(
idsecretaria int not null auto_increment,
balcao varchar(50),
funcionaria varchar(50),
atendente varchar(50),
primary key(idsecretaria)
);

create table tbterminais(
    idterminais int not null auto_increment,
    porta varchar(50),
    andar varchar(50),
    centro varchar(50),
    precos decimal(9,2),
    idsecretaria int,
    primary key(idterminais),
    foreign key(idsecretaria) references tbsecretaria(idsecretaria)
);

insert into tbsecretaria(balcao, funcionaria, atendente)values('primeiro', 'Madinbu','da al quaeda');
insert into tbsecretaria(balcao, funcionaria, atendente)values('segundo', 'Babidi','CET');
insert into tbsecretaria(balcao, funcionaria, atendente)values('terceiro', 'Marlon','Sptrans');

insert into tbterminais(porta, andar, centro, precos)values('um', 'prime','primario', 500.00);
insert into tbterminais(porta, andar, centro, precos)values('dois', 'duo','secundario', 600.00);
insert into tbterminais(porta, andar, centro, precos)values('tres', 'trio','terciario', 700.00);




