--Caso 1

----Un trabajador pertenece a un departamento.
----El trabajador tiene un nombre, rut y dirección.
----El departamento tiene un nombre.
----Un trabajador posee liquidaciones.
----La liquidación se guarda en un archivo drive.

--En el dibujo identifique 3 entidades Trabajador, Liquidaciones y Departamento
--cada una con sus propios 

CREATE DATABASE empresa_1;
\c empresa_1;

CREATE TABLE Departamento(ID_Departamento SERIAL PRIMARY KEY, Nombre_Departamento VARCHAR(150) NOT NULL); 

CREATE TABLE Trabajadores (ID_Trabajador SERIAL PRIMARY KEY, Nombre_Trabajador VARCHAR(150) NOT NULL, Rut VARCHAR(15) NOT NULL, Direccion VARCHAR (200) NOT NULL, ID_Departamento INT NOT NULL REFERENCES Departamento(ID_Departamento));

CREATE TABLE Liquidaciones (ID_Liquidacion SERIAL PRIMARY KEY, Liq_Drive TEXT NOT NULL,ID_Trabajador INT NOT NULL REFERENCES trabajadores(ID_Trabajador));

