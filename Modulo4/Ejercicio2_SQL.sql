CREATE TABLE Provincia
(
  Provincia_ID INT NOT NULL auto_increment,
  Nombre_Prov varchar(85) NOT NULL,
  PRIMARY KEY (Provincia_ID)
);

CREATE TABLE Pais
(
  Pais_ID INT NOT NULL auto_increment,
  Nombre_Pais varchar(85) NOT NULL,
  Provincia_ID INT NOT NULL,
  PRIMARY KEY (Pais_ID),
  FOREIGN KEY (Provincia_ID) REFERENCES Provincia(Provincia_ID),
  UNIQUE (Nombre_Pais)
);



CREATE TABLE Localidad
(
  codigo_postal INT NOT NULL,
  codigo_localidad INT NOT NULL,
  nombre varchar(85) NOT NULL,
  Provincia_ID INT NOT NULL auto_increment,
  PRIMARY KEY (codigo_postal),
  FOREIGN KEY (Provincia_ID) REFERENCES Provincia(Provincia_ID),
  UNIQUE (codigo_localidad)
);



CREATE TABLE Empleado_
(
  empleado_ID INT NOT NULL auto_increment,
  nombre varchar(86) NOT NULL,
  telefono INT NOT NULL,
  email varchar(86) NOT NULL,
  fecha_alta date NOT NULL,
  codigo_postal INT NOT NULL,
  PRIMARY KEY (empleado_ID),
  FOREIGN KEY (codigo_postal) REFERENCES Localidad(codigo_postal),
  UNIQUE (telefono),
  UNIQUE (email)
);

insert into provincia (provincia_ID, Nombre_Prov) values (001,"Ahs");
insert into provincia (provincia_ID, Nombre_Prov) values (002,"Ehs");
insert into provincia (provincia_ID, Nombre_Prov) values (003, "Ish");

insert into pais (Pais_ID, Nombre_Pais, Provincia_ID) values (001, "Pepa", "001");
insert into pais (Pais_ID, Nombre_Pais, Provincia_ID) values (002, "Pepe", "002");
insert into pais (Pais_ID, Nombre_Pais, Provincia_ID) values (003, "Popu", "003");

insert into localidad (codigo_postal, codigo_localidad, nombre, Provincia_ID) values (302, 01, "Sisi", "001");
insert into localidad (codigo_postal, codigo_localidad, nombre, Provincia_ID) values (303, 02, "Susu", "002");
insert into localidad (codigo_postal, codigo_localidad, nombre, Provincia_ID) values (304, 03, "Soso", "003");

insert into empleado_ (empleado_ID, nombre, telefono, email, fecha_alta, codigo_postal) values (001, "Julio", "37645823", "julio@gmail.com", "1998-03-15", 302);
insert into empleado_ (empleado_ID, nombre, telefono, email, fecha_alta, codigo_postal) values (002, "Pepe", "37645346", "pepe@gmail.com", "1763-06-25", 303);
insert into empleado_ (empleado_ID, nombre, telefono, email, fecha_alta, codigo_postal) values (003, "Sandra", "35735638", "sandra@gmail.com", "2003-02-03", 304);