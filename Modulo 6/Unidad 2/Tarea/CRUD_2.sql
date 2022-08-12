insert into productos (nombre, descripcion, precio) values ('Lager', 'Aquí están las clásicas cañas de toda la vida. La fermentación de estas cervezas se produce a baja temperatura y en la parte baja del tanque donde se produce.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Pilsen', 'Debe su nombre a la ciudad Checa de Plzen. De este estilo son muchas de las lagers de las grandes cerveceras de España.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Marzen', 'Estilo de las cervezas que se consumen durante el Oktoberfest. Se elaboran en el mes de marzo, de ahí su nombre, y se guardan hasta finales de septiembre.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('Bock', 'Cerveza con mucho cuerpo y graduación alcohólica. Su nombre hace referencia a macho cabrío y existe una versión más fuerte todavía llamada Doppelbock.', 300.00)
go
insert into productos (nombre, descripcion, precio) values ('American Lager', 'Lagers a las que se les añade maíz, son típicas de EEUU. Son más ligeras, claras y con menos contenido alcohólico que las lager tradicionales.', 300.00)
go

insert into productos (nombre, descripcion, precio) values ('Sprite', 'Esto no es una cerveza', 300.00)
go

update productos set nombre = 'Coca Cola', descripcion = 'Sigue sin ser cerveza' where nombre = 'Sprite'
go

delete from productos where nombre = 'Coca Cola'
go

select * from productos