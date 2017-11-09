create database Biblioteca_Virtual;
use Biblioteca_Virtual;

create table Usuarios(
id_usuario int not null primary key,
nombre varchar (45),
direccion varchar(45),
telefono int);

create table categorias(
id_categoria int not null primary key,
nom_cat varchar(45));


create table Libros(
id_libro int not null primary key,
nombre_libro varchar (45),
autor varchar(45),
id_categoria int,
constraint Libros_categorias
foreign key (id_categoria)
references categorias(id_categoria)
on delete cascade
);

create table Inventario(
id_inventario int not null primary key,
disponible tinyint,
id_libro int,
constraint inventario_Libros
foreign key(id_libro)
references Libros(id_libro)
on delete cascade);

create table Prestamos(
id_prestamo int not null primary key,
fecha_prestamo date,
fecha_devolucion date,
id_usuario int,
id_inventario int,
constraint Prestamos_Usuarios
foreign key(id_usuario)
references Usuarios(id_usuario)
on delete cascade,
constraint Prestamos_Inventario
foreign key(id_inventario)
references Inventario(id_inventario)
on delete cascade
);
