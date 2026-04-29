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
    FOREIGN KEY (Codigo_Empleado) REFERENCES Empleado(Codigo_Empleado)
);

CREATE TABLE Programadores(
    Codigo_Empleado NUMBER PRIMARY KEY,
    Lenguaje_Programación VARCHAR2(30),
    FOREIGN KEY (Codigo_Empleado) REFERENCES Empleado(Codigo_Empleado)
);

CREATE TABLE Analistas(
    Codigo_Empleado NUMBER PRIMARY KEY,
    FOREIGN KEY (Codigo_Empleado) REFERENCES Empleado(Codigo_Empleado)
);

CREATE TABLE Productos(
    Codigo_Producto NUMBER PRIMARY KEY,
    Nombre VARCHAR2(30),
    Descripcion VARCHAR2(50),
    Estado VARCHAR2(30),
    Analista_Responsable NUMBER PRIMARY KEY,
    FOREIGN KEY (Analista_Responsable) REFERENCES Analistas(Codigo_Empleado)
);	

CREATE TABLE Fases_de_Proyecto(
	Codigo_Proyecto NUMBER PRIMARY KEY,
	Codigo_Producto NUMBER PRIMARY KEY,
    Codigo_Recurso NUMBER PRIMARY KEY,
	FOREIGN KEY (Codigo_Proyecto) REFERENCES Proyecto (Codigo_Proyecto),
	FOREIGN KEY (Codigo_Producto) REFERENCES Productos (Codigo_Producto),
    FOREIGN KEY (Codigo_Recurso) REFERENCES Recursos (Codigo_Recurso)
);

CREATE TABLE Software(
    Codigo_Producto NUMBER PRIMARY KEY,
    Tipo VARCHAR2(30),
    FOREIGN KEY (Codigo_Producto) REFERENCES Productos (Codigo_Producto)
);

CREATE TABLE Prototipo(
    Codigo_Producto NUMBER PRIMARY KEY,
    Version VARCHAR2(30),
    Ubicacion VARCHAR2(50),
    FOREIGN KEY (Codigo_Producto) REFERENCES Productos (Codigo_Producto)
);

CREATE TABLE Gastos(
    Codigo_Gastos NUMBER PRIMARY KEY,
    Descipcion VARCHAR2(50),
    Fecha DATE,
    Importe NUMBER,
    Tipo_Gasto VARCHAR2(30),
    Codigo_Proyecto NUMBER PRIMARY KEY,
	Codigo_Producto NUMBER PRIMARY KEY,
	FOREIGN KEY (Codigo_Proyecto) REFERENCES Proyecto (Codigo_Proyecto),
	FOREIGN KEY (Codigo_Producto) REFERENCES Productos (Codigo_Producto)
);

CREATE TABLE Recursos(
    Codigo_Recurso NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Descripcion VARCHAR2(50),
    Tipo VARCHAR2(30)
);
    
--------------------------
--INSERT EN TABLAS
--------------------------
