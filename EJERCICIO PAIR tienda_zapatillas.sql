CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;

CREATE TABLE tabla_zapatillas (
	id_zapatilla int,
    modelo varchar(45) not null,
    color varchar (45) not null,
    primary key (id_zapatilla)
);

CREATE TABLE clientes (
	id_cliente int,
    nombre varchar(45) not null,
    num_telefono int not null,
    email varchar(45),
    direccion varchar(45) not null,
    ciudad varchar(45),
    provincia varchar(45) not null,
    pais varchar(45) not null,
    cp varchar(45) not null,
    primary key (id_cliente)

);

CREATE TABLE empleados (
	id_empleado int,
    nombre varchar(45) not null,
    tienda varchar(45) not null,
    salario int,
    fecha_incorporacion date not null,
    primary key (id_empleado)

);

CREATE TABLE facturas (
	id_factura int,
    num_factura varchar(45) not null,
    fecha date not null,
    id_zapatilla int not null,
    id_empleado int not null,
    id_cliente int not null,
    
    primary key (id_factura),
    
    constraint fK_1
		foreign key (id_zapatilla)
		references tabla_zapatillas (id_zapatilla),
    
	constraint fk_2
		foreign key (id_empleado)
		references empleados(id_empleado),
    
    constraint fk_3
		foreign key (id_cliente)
		references clientes (id_cliente)

);
    


  
 