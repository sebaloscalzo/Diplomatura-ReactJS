select * from empleados

--1) �Cu�les son los nombres y la ocupaci�n de cada uno de los empleados? 
select nombre, trabajo from empleados

--2) �Cu�l es el nombre y la edad de cada uno de los empleados?
select nombre, edad from empleados

--3) �Cu�l es el nombre y la edad de todos los programadores?
select nombre, edad from empleados where trabajo like 'programador%'

--4) �Cu�les son los empleados de mas de 30 a�os?
select * from empleados where edad > 30

--5) �Cu�l es el apellido y el mail de los empleados llamados Juan?
select apellido, mail from empleados where nombre like '%juan%'

--6) �Cu�l es el nombre de las personas que trabajan como Programadores o Desarrolladores Web?
select nombre from empleados where trabajo like 'programador%' or trabajo like 'desarrollador%'

--7) Mostrar una lista (id_emp, nombre, apellido, trabajo) de las personas cuyo numero de empleado est� entre 15 y 20.
select id_emp, nombre, apellido, trabajo from empleados where id_emp between 15 and 20

--8) �Cu�les son los Programadores que ganan menos de $80000?
select * from empleados where trabajo like 'programador%' and salario < 80000

--9) �Cu�les son los Programadores que ganan entre $75000 y  $90000?
select * from empleados where trabajo like 'programador%' and salario between 75000 and 90000

--10) �Cu�les son los trabajadores cuyo apellido comienza con S?
select * from empleados where apellido like 's%'

--11) �Cu�les son los trabajadores cuyo nombre termina en l?
select * from empleados where nombre like '%l'

--12) Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez,  Programador, 26 a�os, salario 90000, mail: francisco@bignet.com.
if not exists(select id_emp from empleados where id_emp = 22) begin
	insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (22, 'Francisco', 'Perez', 'Programador', 26, 90000, 'francisco@bignet.com')
end
go

--13) Borrar los datos de Hernan Rosso.
delete from empleados where nombre = 'Hernan' and apellido = 'Rosso'

--14) Modificar el salario de Daniel Gutierrez a 90000.
update empleados set salario = 90000 where nombre = 'Daniel' and apellido = 'Gutierrez'