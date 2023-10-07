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
  cod_pais_region_zona int not null,
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

CREATE TABLE cat_info_cliente(
  id int not null auto_increment primary key,
  nombre_cliente varchar(30) not null,
  celular int not null
);

alter table clientes add foreign key (cod_tip_doc) references cat_tip_doc(cod_tip_doc);
alter table clientes add foreign key (cod_tip_genero) references cat_genero(cod_tip_genero);
alter table clientes add foreign key (cod_sucursal) references cat_sucursal(cod_sucursal);
alter table cat_sucursal add foreign key (cod_ciudad) references cat_ciudad(cod_ciudad);
alter table cat_sucursal add foreign key (cod_pais_region_zona) references cat_zona(cod_pais_region_zona);
alter table cat_ciudad add foreign key (cod_pais_region_zona) references cat_pais(cod_pais_region_zona);
alter table cat_zona add foreign key (cod_pais_region_zona) references cat_pais(cod_pais_region_zona);
alter table cat_info_cliente add foreign key (id) references clientes(id);


insert into cat_tip_doc values ( 1,"Cedula de ciudadania");
insert into cat_tip_doc values ( 2,"Cedula de extranjeria");
insert into cat_tip_doc values ( 3,"NIT");
insert into cat_tip_doc values ( 4,"Tarjeta de identidad");
insert into cat_tip_doc values ( 5,"Pasaporte");
insert into cat_tip_doc values ( 9,"Registro civil");

insert into cat_genero values ( 1,"Masculino");
insert into cat_genero values ( 2,"Femenino");
insert into cat_genero values ( 3,"No informa");

insert into cat_pais values ( 1,"Colombia");
insert into cat_pais values ( 2,"Argentina");
insert into cat_pais values ( 3,"Chile");
insert into cat_pais values ( 4,"Venezuela");
insert into cat_pais values ( 5,"EEUU");
insert into cat_pais values ( 6,"Panamá");
insert into cat_pais values ( 7,"México");

insert into cat_zona values ( 1,"Colombia", "Norte" , "Caribe");
insert into cat_zona values ( 2,"Colombia", "Sur" , "Amazonia");
insert into cat_zona values ( 3,"Argentina", "Centro" , "Cordoba");
insert into cat_zona values ( 4,"Panama", "Sur" , "Panama norte");
insert into cat_zona values ( 5,"Mexico", "Norte" , "Norte de mexico");

insert into cat_ciudad values ( 1,1,"Medellin" , "Antioquia");
insert into cat_ciudad values ( 2,3,"Santiago de chile" , "Dpto del exterior");
insert into cat_ciudad values ( 3,1,"Cali" , "Valle del cauca");
insert into cat_ciudad values ( 4,2,"Buenos aires" , "Dpto del exterior");
insert into cat_ciudad values ( 5,5,"Miami" , "Dpto del exterior");

insert into cat_sucursal values ( 1,"carabobo", 1 , 1);
insert into cat_sucursal values ( 2,"Independencia", 2, 3);
insert into cat_sucursal values ( 3,"Banco de cali", 3 , 1);
insert into cat_sucursal values ( 4,"Sede santiago", 4 , 2);
insert into cat_sucursal values ( 5,"Palm beach", 5 , 5);

insert into clientes values ( 1,1,1,"1983-10-13",1000000,1);
insert into clientes values ( 2,2,2,"1967-03-12",2000000,2);
insert into clientes values ( 3,1,1,"1997-03-16",30000000,1);
insert into clientes values ( 4,5,2,"1996-03-18",4000000,1);
insert into clientes values ( 5,1,1,"1981-03-07",500000,2);
insert into clientes values ( 6,3,1,"1984-03-14",6000000,1);
insert into clientes values ( 7,2,1,"2000-03-13",10000000,1);
insert into clientes values ( 8,2,3,"1993-03-15",8000000,2);
insert into clientes values ( 9,2,1,"1999-09-27",9000000,1);
insert into clientes values ( 10,1,2,"1995-08-01",900000,5);
insert into clientes values ( 11,3,2,"1991-07-23",1100000,1);
insert into clientes values ( 12,1,2,"1998-06-08",1500000,1);
insert into clientes values ( 13,2,1,"1985-05-28",450000,1);
insert into clientes values ( 14,1,3,"1989-05-23",3800000,5);
insert into clientes values ( 15,1,2,"1990-05-01",1000000,1);
insert into clientes values ( 16,9,1,"1993-04-10",3200000,5);
insert into clientes values ( 17,2,1,"1986-03-18",7800000,4);
insert into clientes values ( 18,9,2,"1984-02-09",400000,3);
insert into clientes values ( 19,3,3,"1992-10-02",1100000,3);
insert into clientes values ( 20,4,1,"2009-02-20",4500000,1);
insert into clientes values ( 21,2,2,"2001-01-09",15000000,5);


insert into cat_info_cliente values ( 1,"Darly Lorena Arias Santana", 312344564332);
insert into cat_info_cliente values ( 2,"Erica Santana", 3123423332);
insert into cat_info_cliente values ( 3,"Gelen Jineth Arias Mendez", 3195467879);
insert into cat_info_cliente values ( 4,"Patricia Fernandez", 3183456784);
insert into cat_info_cliente values ( 5,"Bertha De Lopez", 3153453332);
insert into cat_info_cliente values ( 6,"Sofia Quiroz", 3143453332);
insert into cat_info_cliente values ( 7,"Aura Maria Fuentes", 3143454534);
insert into cat_info_cliente values ( 8,"Fredy Contreras", 3123423432);
insert into cat_info_cliente values ( 9,"Armando Mendoza", 3133453782);
insert into cat_info_cliente values ( 10,"Beatriz Aurora Pinzon Solano", 3129873332);
insert into cat_info_cliente values ( 11,"Nicolas Mora", 3122343332);
insert into cat_info_cliente values ( 12,"Julia Solano", 3161223332);
insert into cat_info_cliente values ( 13,"Wilson Aricapa", 3125643332);
insert into cat_info_cliente values ( 14,"Mario Calderon", 3123453332);
insert into cat_info_cliente values ( 15,"Marcela Valencia", 312234332);
insert into cat_info_cliente values ( 16,"Daniel Valencia", 3171253332);
insert into cat_info_cliente values ( 17,"Fernando Arias", 3181153332);
insert into cat_info_cliente values ( 18,"Osman Higuita", 3103453332);
insert into cat_info_cliente values ( 19,"Maria Fernanda Pinzon Solano", 3153453332);
insert into cat_info_cliente values ( 20,"Merlina Montoya", 3173453332);
insert into cat_info_cliente values ( 21,"Maria Patricia Sanmarino", 3183453332);
