CREATE TABLE Profesor
(
  Profesor_ID INT NOT NULL auto_increment,
  Nombre varchar(86) NOT NULL,
  Email varchar(87) NOT NULL,
  PRIMARY KEY (Profesor_ID),
  UNIQUE (Email)
);

CREATE TABLE Alumno
(
  Email varchar(87) NOT NULL,
  Dni INT NOT NULL,
  Cod_Matricula INT NOT NULL auto_increment,
  Nombre varchar(87) NOT NULL,
  Fecha_nac date NOT NULL,
  PRIMARY KEY (Cod_Matricula)
);

CREATE TABLE Curso
(
  Cod_Curso INT NOT NULL,
  Nombre varchar(87) NOT NULL,
  PRIMARY KEY (Cod_Curso)
);

CREATE TABLE realiza
(
  Cod_Matricula INT NOT NULL,
  Cod_Curso INT NOT NULL,
  PRIMARY KEY (Cod_Matricula, Cod_Curso),
  FOREIGN KEY (Cod_Matricula) REFERENCES Alumno(Cod_Matricula),
  FOREIGN KEY (Cod_Curso) REFERENCES Curso(Cod_Curso)
);

CREATE TABLE dicta
(
  Profesor_ID INT NOT NULL auto_increment,
  Cod_Curso INT NOT NULL,
  PRIMARY KEY (Profesor_ID, Cod_Curso),
  FOREIGN KEY (Profesor_ID) REFERENCES Profesor(Profesor_ID),
  FOREIGN KEY (Cod_Curso) REFERENCES Curso(Cod_Curso)
);

insert into profesor (Profesor_ID, Nombre, Email) values (01, "Jose", "j@mail.com"); 
insert into profesor (Profesor_ID, Nombre, Email) values (02, "Marta", "m@mail.com"); 
insert into profesor (Profesor_ID, Nombre, Email) values (03, "Sonia", "s@mail.com"); 

insert into alumno (Email, Dni, Cod_Matricula, Nombre, Fecha_nac) values ("a@gmail.com", 1004, 1, "Agustina", "1787-12-23");
insert into alumno (Email, Dni, Cod_Matricula, Nombre, Fecha_nac) values ("e@gmail.com", 1005, 2, "Pamela", "1997-11-13");
insert into alumno (Email, Dni, Cod_Matricula, Nombre, Fecha_nac) values ("i@gmail.com", 1006, 3, "Manuel", "1999-06-05");

insert into curso (Cod_Curso, Nombre) values (001, "Chef");
insert into curso (Cod_Curso, Nombre) values (002, "Cocteleria");
insert into curso (Cod_Curso, Nombre) values (003, "Pastelera");