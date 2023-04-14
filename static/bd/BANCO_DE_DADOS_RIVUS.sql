create database Rivus;
use Rivus;

create table empresa (
    idEmpresa int primary key auto_increment,
    nomeEmpresa varchar(100),
    cnpj char(18),
    representante varchar(50),
    qntConsumoAgua numeric
    )auto_increment = 1000;
    
   insert into empresa (nomeEmpresa, cnpj, representante, qntConsumoAgua) values
    ('Ambev s.a.', '70.810.599/0001-06', 'Juliana Perez', 1400),
    ('Volkswagen Group', '41.855.599/0001-39', 'Mariana Sousa', 7800),
    ('Raizen energia s.a', '98.810.599/0001-01', 'João Paulo', 30000 ),
    ('Toyota do brasil ltda', '23.810.599/0001-08', 'Lucas Pedro', 35000),
    ('Cargill agricola s a', '49.810.599/0001-05', 'Luana Carolina', 40000),
    ('Organon farmaceutica ltda.', '78.810.599/0001-02', 'Marcela Mendes', 25000),
    ('Ford brasil ltda', '31.810.599/0001-11', 'Lucio Mauro', 25000),
    ('Multilaser industrial s.a.', '16.810.599/0001-14', 'Luara Marcia', 39000);
    
    select * from empresa;
    select nomeEmpresa, qntConsumoAgua from empresa;
    select nomeEmpresa, representante from empresa;
    select * from empresa where qntConsumoAgua >= 25000;
    select * from empresa where qntConsumoAgua < 30000;
    
    alter table empresa rename column qntConsumoAgua to qtdConsumoAgua;
    desc empresa;
    alter table empresa modify column nomeEmpresa varchar(100) not null;
    alter table empresa modify column cnpj char(18) not null;
    
    update empresa set qntConsumoAgua = 33000 where idEmpresa = 1004;
    update empresa set qntConsumoAgua = 25000 where idEmpresa in (1002,1003);
    
    
    
create table cadastro (
    idUser int primary key auto_increment,
    nome varchar (50) not null,
    dtNasc date,
    email varchar(50),
    senha varchar(50),
    telCelular varchar(11),
    constraint chkEmail check (email like '%@%'),
    fkEmpresa int,
    constraint fkEMP foreign key (fkEmpresa) references empresa(idEmpresa)
);
    
    insert into cadastro (nome,dtNasc,email,senha,telefone) value
    ('raquel','2001-10-28','raquel.com','02584','11979655165');  /*dar erro*/
    
    insert into cadastro (nome,dtNasc,email,senha,telCelular,fkEmpresa) values
    ('Raquel Vitoria', '2001-10-28', 'rasousa555@gmail.com', '$Srgh1456','11985233215', 1000),
    ('Jhonny Carneiro', '2000-11-28', 'jhony@gmail.com', '$Srgh1456','11945699874', 1001),
    ('Vitor Beraldi', '1999-05-20', 'vitor@gmail.com', '$Srgh1456','11912366549', 1002),
    ('Daniel Rodrigues', '1998-10-25', 'daniel@gmail.com', '$Srgh1456','11915632589', 1003),
    ('Lucas Guimarães', '1997-12-29', 'lucas@gmail.com', '$Srgh1456','11978944569', 1004),
    ('Tania Maria', '1996-04-09', 'tania@gmail.com', '$Srgh1456','11945699632', 1005),
    ('Antonio Celso', '1995-10-17', 'antonio@gmail.com', '$Srgh1456','11974100236', 1006),
    ('Luiz Perez', '1994-06-28', 'luiz@gmail.com', '$Srgh1456','11901455410', 1007),
    ('Marta Jussara', '1993-08-28', 'marta@gmail.com', '$Srgh1456','11978966987', 1007);
    
    select * from cadastro;
    select * from empresa join cadastro on fkEmpresa = idEmpresa order by nomeEmpresa;
    select * from cadastro join empresa on fkEmpresa = idEmpresa where fkEmpresa = 1007;
    select * from cadastro join empresa on fkEmpresa = idEmpresa where representante like 'L%';
    select * from cadastro join empresa on fkEmpresa = idEmpresa where qtdConsumoAgua > 30000;
    
    update cadastro set senha = 'floreseflores' where idUser = 1;
    update cadastro set nome = 'Marta Juliana' where idUser = 9;
    
    alter table cadastro modify nome varchar(70);
    desc cadastro;
    alter table cadastro drop column dtNasc;
    
    
    delete from cadastro where idUser = 7;
    
    
  
create table sensor(
    idSensor int primary key  auto_increment ,
    nvlAguaBaixo char(1) constraint chknvl check (nvlAguaBaixo in ('0', '1')),
    nvlAguaMedio char(1) constraint chknv2 check (nvlAguaMedio in ('0', '1')),
    nvlAguaAlto char(1) constraint chknv3 check (nvlAguaAlto in ('0', '1'))
)auto_increment = 100; 

insert into sensor(nvlAguaBaixo,nvlAguaMedio,nvlAguaAlto) values
     (0,0,1),
     (0,0,1),
     (0,0,1),
     (0,1,0),
     (0,1,0),
     (0,1,0),
     (1,0,0),
     (1,0,1);
    

create table historicoSensor (
    idColeta int auto_increment,
    horario datetime default current_timestamp,
    fkSensor int,
    constraint fkHistorico foreign key (fkSensor) references sensor(idSensor),
    constraint pkHST primary key (idColeta, fkSensor)
)auto_increment = 0001;

insert into historicoSensor (fkSensor) values
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107);

select * from historicoSensor;
select * from sensor join historicoSensor on fkSensor = idSensor;
select * from sensor join historicoSensor on fkSensor = idSensor  where nvlAguaMedio = 1;


create table cisterna (
    idCisterna int primary key auto_increment,
    litros int,
    fkCEmpresa int,
    constraint fkEM foreign key (fkCEmpresa) references empresa(idEmpresa),
    fkCSensor int,
    constraint fkSS foreign key (fkCSensor) references sensor(idSensor)
)auto_increment = 0001;

insert into cisterna(litros, fkCEmpresa, fkCSensor) values
(25000, 1000, 100),
(25000, 1001, 101),
(25000, 1002, 102),
(25000, 1003, 103),
(25000, 1004, 104),
(25000, 1005, 105),
(25000, 1006, 106),
(25000, 1007, 107);
insert into cisterna (litros,fkCEmpresa, fkCSensor) values
(25000, 1007, 107),
(25000, 1007, 107),
(25000, 1007, 107);

select * from cisterna;
select * from cisterna join empresa on fkCEmpresa = idEmpresa;
select * from cisterna join empresa on fkCEmpresa = idEmpresa where qtdConsumoAgua < 15000;
select * from cisterna join empresa on fkCEmpresa = idEmpresa where fkCEmpresa = 1005;

 
create table simulador(
    idSimulador int primary key auto_increment,
    gastoMensal decimal(10,2), 
    litrosGastos decimal(10,2),
    litroCisterna int
); 
/*insert no simulador*/

drop database Rivus;    
    

