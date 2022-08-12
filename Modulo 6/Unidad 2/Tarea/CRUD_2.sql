insert into productos (nombre, descripcion, precio) values ('Lager', 'Aqu� est�n las cl�sicas ca�as de toda la vida. La fermentaci�n de estas cervezas se produce a baja temperatura y en la parte baja del tanque donde se produce.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Pilsen', 'Debe su nombre a la ciudad Checa de Plzen. De este estilo son muchas de las lagers de las grandes cerveceras de Espa�a.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Marzen', 'Estilo de las cervezas que se consumen durante el Oktoberfest. Se elaboran en el mes de marzo, de ah� su nombre, y se guardan hasta finales de septiembre.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Bock', 'Cerveza con mucho cuerpo y graduaci�n alcoh�lica. Su nombre hace referencia a macho cabr�o y existe una versi�n m�s fuerte todav�a llamada Doppelbock.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('American Lager', 'Lagers a las que se les a�ade ma�z, son t�picas de EEUU. Son m�s ligeras, claras y con menos contenido alcoh�lico que las lager tradicionales.', 300.00)
go

insert into productos (nombre, descripcion, precio) values ('Sprite', 'Esto no es una cerveza', 300.00)
go

update productos set nombre = 'Coca Cola', descripcion = 'Sigue sin ser cerveza' where nombre = 'Sprite'
go

delete from productos where nombre = 'Coca Cola'
go

select * from productos