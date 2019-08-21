/*
Created		12/07/2019
Modified		19/08/2019
Project		
Model		
Company		
Author		
Version		
Database		mySQL 5 
*/
CREATE DATABASE  IF NOT EXISTS `TiendaLosLuises`;
USE `TiendaLosLuises`;

Create table Informacion_personal (
	Datos_personales Int NOT NULL,
	Nombres Char(50),
	Apellidos Char(50),
	Cedula Char(25),
	Telefono Int,
	Direccion Char(50),
	Correo_electronico Char(30),
	Fecha_nacimiento Date,
	Sexo Char(2),
	Foto Mediumblob,
	Id_ciudad Int NOT NULL,
 Primary Key (Datos_personales)) ENGINE = MyISAM;

Create table Detalle_producto (
	Id_detalle_producto Int NOT NULL,
	Precio_producto Float,
	Codigo_producto Int,
	Id_proveedor Int NOT NULL,
	Id_producto Char(20) NOT NULL,
 Primary Key (Id_detalle_producto)) ENGINE = MyISAM;

Create table Empleado (
	Id_trabajador Int NOT NULL,
	Datos_personales Int NOT NULL,
	Cargo Char(20),
	Nombre_usuario Char(50),
	Password Char(50),
 Primary Key (Id_trabajador)) ENGINE = MyISAM;

Create table Detalle_factura (
	Id_detalle_factura Char(20) NOT NULL,
	Id_detalle_producto Int NOT NULL,
	Id_factura Int NOT NULL,
	Cantidad Int,
	Precio_unitario Float,
	total Float,
 Primary Key (Id_detalle_factura,Id_detalle_producto,Id_factura)) ENGINE = MyISAM;

Create table Inventario (
	Id_pedido Int NOT NULL,
	Id_producto Char(20) NOT NULL,
	Cantidad_existencia Int,
	Fecha_Ingreso Date,
	Fecha_salida Date,
 Primary Key (Id_producto)) ENGINE = MyISAM;

Create table Proveedores (
	Id_proveedor Int NOT NULL,
	Nombre Char(50),
	Empresa Char(25),
	Telefono Int,
	Correo_electronico Char(30),
	Direccion Char(50),
 Primary Key (Id_proveedor)) ENGINE = MyISAM;

Create table Categoria (
	Id_tipo Int NOT NULL,
	Nombre Char(25),
	Descripcion Char(50),
 Primary Key (Id_tipo)) ENGINE = MyISAM;

Create table Producto (
	Id_producto Char(20) NOT NULL,
	Nombre Char(50),
	Id_tipo Int NOT NULL,
	Talla Char(20),
	Marca Char(25),
	Material Char(25),
 Primary Key (Id_producto)) ENGINE = MyISAM;

Create table Cliente (
	Id_cliente Int NOT NULL,
	Datos_personales Int NOT NULL,
 Primary Key (Id_cliente)) ENGINE = MyISAM;

Create table Devolucion (
	Id_devolucion Int NOT NULL,
	Fecha_devolucion Date,
	Id_detalle_factura Char(20) NOT NULL,
	Id_factura Int NOT NULL,
	Id_detalle_producto Int NOT NULL,
	monto Float,
 Primary Key (Id_devolucion)) ENGINE = MyISAM;

Create table Pedido (
	Id_pedido Int NOT NULL,
	Id_detalle_pedido Char(20) NOT NULL,
	Fecha_pedido Date,
	Fecha_entrega Date,
	Monto Float,
 Primary Key (Id_pedido)) ENGINE = MyISAM;

Create table Detalle_pedido (
	Id_detalle_pedido Char(20) NOT NULL,
	Id_producto Char(20) NOT NULL,
	Cantidad Int,
	Precio_unitario Float,
	Id_proveedor Int NOT NULL,
 Primary Key (Id_detalle_pedido)) ENGINE = MyISAM;

Create table Arqueo_de_caja (
	Id_arqueo Int NOT NULL,
	Fecha_arqueo Date,
	Saldo_inicial Float,
	Credito Float,
	Debito Float,
	Total Float,
 Primary Key (Id_arqueo)) ENGINE = MyISAM;

Create table Factura (
	Id_factura Int NOT NULL,
	Id_cambio_de_moneda Int NOT NULL,
	Total_a_pagar Float,
	Fecha_facturacion Date,
	Id_cliente Int NOT NULL,
	Id_trabajador Int NOT NULL,
	Tipo_de_pago Char(20),
	Descuento Float,
	IVA Float,
	Moneda Char(20),
 Primary Key (Id_factura)) ENGINE = MyISAM;

Create table Mov_contable (
	Id_mov_contable Int NOT NULL,
	fecha Date,
	Credito Float,
	Debito Float,
	Total Float,
	Id_arqueo Int NOT NULL,
 Primary Key (Id_mov_contable,Id_arqueo)) ENGINE = MyISAM;

Create table Factura_Arqueo (
	Id_factura Int NOT NULL,
	Id_arqueo Int NOT NULL,
 Primary Key (Id_factura,Id_arqueo)) ENGINE = MyISAM;

Create table Devolucion_arqueo (
	Id_arqueo Int NOT NULL,
	Id_devolucion Int NOT NULL,
 Primary Key (Id_arqueo,Id_devolucion)) ENGINE = MyISAM;

Create table Cambio_de_moneda (
	Id_cambio_de_moneda Int NOT NULL,
	TIpo_de_cambio Float,
	Fecha Date,
 Primary Key (Id_cambio_de_moneda)) ENGINE = MyISAM;

Create table Ciudad (
	Id_ciudad Int NOT NULL,
	Nombre_ciudad Char(50),
 Primary Key (Id_ciudad)) ENGINE = MyISAM;


