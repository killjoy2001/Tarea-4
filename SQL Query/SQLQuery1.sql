create database HospitalTarea4

create table Paciente
(
  Nombre varchar(25),
  Edad int,
  Sexo char(1),
  Telefono varchar(12),
  Domicilio varchar(150),
  Seguro bit
)
select * from Paciente