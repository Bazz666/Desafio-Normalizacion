--Caso 2
---Un alumno, con nombre y rut pertenece a un curso.
---Un curso tiene muchos alumnos.
---Un alumno realiza pruebas.
---Las pruebas las califica un profesor .
---La prueba tiene un puntaje.
---El profesor tiene nombre y departamento.


----Identifique 5 entidades cada una de ellas con sus propios atributos

CREATE DATABASE empresa_2;
\c empresa_2;

CREATE TABLE Departamento(ID_Departamento SERIAL PRIMARY KEY, Nombre_Departamento VARCHAR (150) NOT NULL);

CREATE TABLE Profesor(ID_Profesor SERIAL PRIMARY KEY, Nombre_Profesor VARCHAR (150) NOT NULL, ID_Departamento INT NOT NULL REFERENCES Departamento(ID_Departamento));

CREATE TABLE Cursos(ID_Curso SERIAL PRIMARY KEY, Nombre_Curso VARCHAR(150) NOT NULL);

CREATE TABLE Alumno(ID_Alumno SERIAL PRIMARY KEY, Nombre_Alumno VARCHAR(150) NOT NULL, RUT_Alumno VARCHAR (15) NOT NULL, ID_CURSO INT NOT NULL REFERENCES Cursos(ID_curso));

CREATE TABLE Prueba(ID_Prueba SERIAL PRIMARY KEY,Puntaje_Prueba INT ,Id_Alumno INT NOT NULL REFERENCES Alumno(ID_Alumno), ID_profe INT NOT NULL REFERENCES Profesor(ID_Profesor), ID_Curso INT NOT NULL REFERENCEs cursos(ID_Curso)); 

SELECT * FROM Departamento;
SELECT * FROM Profesor;
SELECT * FROM Cursos;
SELECT * FROM Alumnos;
SELECT * FROM Prueba;
