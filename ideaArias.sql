CREATE DATABASE clientes
CHARACTER utf8;


CREATE TABLE cat_tip_doc(
  cod_tip_doc int(1) NOT NULL UNIQUE,
  desc_tip_doc varchar(30) NOT NULL,
  PRIMARY KEY cod_tip_doc (cod_tip_doc)
)

CREATE TABLE cat_genero(
  cod_tip_genero int(1) NOT NULL UNIQUE,
  desc_tip_genero varchar(30) NOT NULL,
  PRIMARY KEY cod_tip_genero (cod_tip_genero)
)

CREATE TABLE cat_pais(
  cod_pais_region_zona int(7) NOT NULL UNIQUE,
  desc_pais varchar(30) NOT NULL,
  PRIMARY KEY cod_pais_region_zona (cod_pais_region_zona),
  FOREIGN KEY desc_pais(desc_pais)
)

CREATE TABLE cat_zona(
  cod_pais_region_zona int(7) NOT NULL UNIQUE,
  desc_pais varchar(30) NOT NULL,
  desc_zona varchar(30) NOT NULL,
  desc_region varchar(30) NOT NULL,
  PRIMARY KEY cod_pais_region_zona (cod_pais_region_zona),
  FOREIGN KEY desc_pais(desc_pais),
  
  CONSTRAINT FK_ZONA_PAIS FOREIGN KEY (desc_pais) REFERENCES cat_pais (desc_pais)
)

CREATE TABLE cat_ciudad(
  cod_ciudad int(4) NOT NULL UNIQUE,
  desc_pais varchar(30) NOT NULL,
  desc_ciudad varchar(30) NOT NULL,
  desc_departamento varchar(30) NOT NULL,
  PRIMARY KEY cod_ciudad (cod_ciudad),
  FOREIGN KEY desc_pais(desc_pais),
  
  CONSTRAINT FK_CIUDAD_PAIS FOREIGN KEY (desc_pais) REFERENCES cat_pais (desc_pais)
)


CREATE TABLE cat_sucursal(
  cod_sucursal int(3) NOT NULL UNIQUE,
  desc_sucursal varchar(30) NOT NULL,
  cod_cuidad int(4) NOT NULL,
  cod_pais_region_zona int(7) NOT NULL,
  PRIMARY KEY cod_sucursal (cod_sucursal),
  FOREIGN KEY cod_cuidad(cod_cuidad),
  FOREIGN KEY cod_pais_region_zona(cod_pais_region_zona),
  
  CONSTRAINT FK_SUCURSAL_CIUDAD FOREIGN KEY (cod_cuidad) REFERENCES cat_ciudad (cod_cuidad),
  CONSTRAINT FK_SUCURSAL_ZONA FOREIGN KEY (cod_pais_region_zona) REFERENCES cat_zona (cod_pais_region_zona)
)


CREATE TABLE clientes(
  id int(7) NOT NULL UNIQUE,
  cod_tipo_doc int(1) NOT NULL,
  cod_tip_genero int(1) NOT NULL,
  fecha_nacimiento date NOT NULL,
  ingresos double(13) NOT NULL,
  cod_sucursal int(3) NOT NULL,
  PRIMARY KEY id (id),
  FOREIGN KEY desc_pais(desc_pais),
  
  CONSTRAINT FK_CLIENTE_TIPODOC FOREIGN KEY (cod_tipo_doc) REFERENCES cat_tip_doc (cod_tipo_doc),
  CONSTRAINT FK_CLIENTE_GENERO FOREIGN KEY (cod_tip_genero) REFERENCES cat_genero (cod_tip_genero),
  CONSTRAINT FK_CLIENTE_SUCURSAL FOREIGN KEY (cod_sucursal) REFERENCES cat_sucursal (cod_sucursal)
)
