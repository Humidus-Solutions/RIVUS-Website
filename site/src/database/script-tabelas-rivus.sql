create database Rivus;
use Rivus;

CREATE TABLE cadastroEmpresa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nomeEmpresa VARCHAR(50),
    cnpj VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_empresa INT,
	FOREIGN KEY (fk_empresa) REFERENCES cadastroEmpresa(id)
);
-- insert into aviso (titulo, descricao, fk_empresa) values
create table cisterna (
/* em nossa regra de negócio, um cisterna tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);
-- insert into cisterna (descricao) values ('cisterna1');

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table medida (
	chave TINYINT,
	momento DATETIME,
	fk_cisterna INT,
	FOREIGN KEY (fk_cisterna) REFERENCES cisterna(id)
);
-- insert into medida (chave, momento, fk_cisterna) values (1, '2023-11-11 11:11:11', 1), (2, '2023-11-11 11:11:11', 1), (3, '2023-11-11 11:11:11', 1), (4, '2023-11-11 11:11:11', 1), (5, '2023-11-11 11:11:11', 1);
-- insert into medida (chave, momento, fk_cisterna) values (0, '2023-11-11 11:11:11', 2), (1, '2023-11-11 11:11:11', 2), (1, '2023-11-11 11:11:11', 2), (2, '2023-11-11 11:11:11', 2), (2, '2023-11-11 11:11:11', 2);
-- insert into medida (chave, momento, fk_cisterna) values (0, '2023-11-11 11:11:11', 3), (2, '2023-11-11 11:11:11', 3), (3, '2023-11-11 11:11:11', 3), (4, '2023-11-11 11:11:11', 3), (4, '2023-11-11 11:11:11', 3);
-- insert into medida (chave, momento, fk_cisterna) values (4, '2023-11-11 11:11:11', 4), (3, '2023-11-11 11:11:11', 4), (2, '2023-11-11 11:11:11', 4), (1, '2023-11-11 11:11:11', 4), (0, '2023-11-11 11:11:11', 4);






















-- ANTIGA TABELA E INSERTS
  
-- create table sensor(
--     idSensor int primary key  auto_increment ,
--     nvlAguaBaixo char(1) constraint chknvl check (nvlAguaBaixo in ('0', '1')),
--     nvlAguaMedio char(1) constraint chknv2 check (nvlAguaMedio in ('0', '1')),
--     nvlAguaAlto char(1) constraint chknv3 check (nvlAguaAlto in ('0', '1'))
-- )auto_increment = 100; 

-- insert into sensor(nvlAguaBaixo,nvlAguaMedio,nvlAguaAlto) values
--      (0,0,1),
--      (0,0,1),
--      (0,0,1),
--      (0,1,0),
--      (0,1,0),
--      (0,1,0),
--      (1,0,0),
--      (1,0,1);
    

-- create table historicoSensor (
--     idColeta int auto_increment,
--     horario datetime default current_timestamp,
--     fkSensor int,
--     constraint fkHistorico foreign key (fkSensor) references sensor(idSensor),
--     constraint pkHST primary key (idColeta, fkSensor)
-- )auto_increment = 0001;

-- insert into historicoSensor (fkSensor) values
-- (100),
-- (101),
-- (102),
-- (103),
-- (104),
-- (105),
-- (106),
-- (107);

-- select * from historicoSensor;
-- select * from sensor join historicoSensor on fkSensor = idSensor;
-- select * from sensor join historicoSensor on fkSensor = idSensor  where nvlAguaMedio = 1;


-- create table cisterna (
--     idCisterna int primary key auto_increment,
--     litros int,
--     fkCEmpresa int,
--     constraint fkEM foreign key (fkCEmpresa) references empresa(idEmpresa),
--     fkCSensor int,
--     constraint fkSS foreign key (fkCSensor) references sensor(idSensor)
-- )auto_increment = 0001;

-- insert into cisterna(litros, fkCEmpresa, fkCSensor) values
-- (25000, 1000, 100),
-- (25000, 1001, 101),
-- (25000, 1002, 102),
-- (25000, 1003, 103),
-- (25000, 1004, 104),
-- (25000, 1005, 105),
-- (25000, 1006, 106),
-- (25000, 1007, 107);
-- insert into cisterna (litros,fkCEmpresa, fkCSensor) values
-- (25000, 1007, 107),
-- (25000, 1007, 107),
-- (25000, 1007, 107);

-- select * from cisterna;
-- select * from cisterna join empresa on fkCEmpresa = idEmpresa;
-- select * from cisterna join empresa on fkCEmpresa = idEmpresa where qtdConsumoAgua < 15000;
-- select * from cisterna join empresa on fkCEmpresa = idEmpresa where fkCEmpresa = 1005;

 
-- create table simulador(
--     idSimulador int primary key auto_increment,
--     gastoMensal decimal(10,2), 
--     litrosGastos decimal(10,2),
--     litroCisterna int
-- ); 
-- /*insert no simulador*/

-- drop database Rivus;    
    

