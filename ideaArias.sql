CREATE DATABASE `clientes`;
use clientes;
CREATE TABLE cat_tip_doc(
  cod_tip_doc int not null unique primary key,
  desc_tip_doc varchar(30) not null
);

CREATE TABLE cat_genero(
  cod_tip_genero int not null auto_increment primary key,
  desc_tip_genero varchar(30) not null
);

CREATE TABLE cat_pais(
  cod_pais_region_zona int not null unique primary key,
  desc_pais varchar(30) not null
);

CREATE TABLE cat_zona(
  cod_pais_region_zona int not null unique primary key,
  desc_pais varchar(30) not null,
  desc_zona varchar(30) not null,
  desc_region varchar(30) not null
);

CREATE TABLE cat_ciudad(
  cod_ciudad int not null unique primary key,
  desc_pais varchar(30) not null,
  desc_ciudad varchar(30) not null,
  desc_departamento varchar(30) not null
);

CREATE TABLE cat_sucursal(
  cod_sucursal int not null unique primary key,
  desc_sucursal varchar(30) not null,
  cod_ciudad int not null,
  cod_pais_region_zona int not null
);

CREATE TABLE clientes(
  id int not null unique primary key,
  cod_tip_doc int not null,
  cod_tip_genero int not null,
  fecha_nacimiento date not null,
  ingresos double not null,
  cod_sucursal int not null
);

alter table clientes add foreign key (cod_tip_doc) references cat_tip_doc(cod_tip_doc);
alter table clientes add foreign key (cod_tip_genero) references cat_genero(cod_tip_genero);
alter table clientes add foreign key (cod_sucursal) references cat_sucursal(cod_sucursal);
alter table cat_sucursal add foreign key (cod_ciudad) references cat_ciudad(cod_ciudad);
alter table cat_sucursal add foreign key (cod_pais_region_zona) references cat_zona(cod_pais_region_zona);
alter table cat_ciudad add foreign key (cod_pais_region_zona) references cat_pais(cod_pais_region_zona);
