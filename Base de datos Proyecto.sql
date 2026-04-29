CREATE DATABASE Gestion_Proyectos_infor;

USE DATABASE Gestion_Proyectos_infor;

---------------------
-- Creación de Tablas
---------------------

CREATE TABLE Proyectos(
	Codigo_Proyecto NUMBER primary key,
	Nombre_Proyecto VARCHAR2(30),
	Cliente_para_Desarrollado VARCHAR2(30),
	Descripcion VARCHAR2(60),
	Presupuestos NUMBER,
	Horas_EstimadasTo NUMBER,
	Fecha_inicio DATE,
	Fecha_fin DATE,
	Estado VARCHAR2(30)
);

CREATE TABLE Empleados(
	Codigo_Empleado NUMBER PRIMARY KEY,	
	DNI VARCHAR2(9),
	Nombre_Empleado VARCHAR2(30),
	Proyecto_asignado VARCHAR2(30),
	Direccion VARCHAR2(50),
	Titulacion VARCHAR2(50),
	years_experience NUMBER
);

CREATE TABLE jefe_proyecto(
    Codigo_Empleado NUMBER PRIMARY KEY,
    FOREIGN KEY (Codigo_Empleado) REFERENCES Empleado(Codigo_Empleado)
);

CREATE TABLE Informaticos(
	Codigo_Empleado NUMBER PRIMARY KEY,
	Tipos_informaticos VARCHAR2(30),
	Horas_proyecto NUMBER,
	Coste_dedicacion VARCHAR2(30),
	Lenguaje_Programación VARCHAR2(30),
    FOREIGN KEY (Codigo_Empleado) REFERENCES Empleado(Codigo_Empleado)
);



CREATE TABLE Productos(
	

CREATE TABLE Fases_de_Proyecto(
	Codigo_Proyecto NUMBER Primary Key,
	Codigo_Prod NUMBER Primary key),
	FOREIGN KEY (Codigo_Proyecto) REFERENCES Proyecto (Codigo_Proyecto),
	FOREIGN KEY (Codigo_Productos) REFERENCES Productos (Codigo_Productos)
);
