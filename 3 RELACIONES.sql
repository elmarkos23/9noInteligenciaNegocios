BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';


ALTER TABLE Pedido
ADD CONSTRAINT PK_Pedido PRIMARY KEY (codigoPedido);

ALTER TABLE cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (codigoCliente);

ALTER TABLE empleado
ADD CONSTRAINT PK_Empleado PRIMARY KEY (codigoEmpleado);

ALTER TABLE oficina
ADD CONSTRAINT PK_Oficina PRIMARY KEY (codigoOficina);

ALTER TABLE pago
ADD CONSTRAINT PK_Pago PRIMARY KEY (codigoTransaccion);

ALTER TABLE pago
ADD CONSTRAINT FK_Pago
FOREIGN KEY (codigoCliente) REFERENCES Cliente(codigoCliente);

ALTER TABLE detallePedido
ADD CONSTRAINT PK_DetallePedido PRIMARY KEY (codigoPedido,codigoProducto);

ALTER TABLE detallePedido
ADD CONSTRAINT FK_DetallePedido
FOREIGN KEY (codigoPedido) REFERENCES Pedido(codigoPedido);

ALTER TABLE gamaProducto
ADD CONSTRAINT PK_GamaProducto PRIMARY KEY (gama);


ALTER TABLE Producto
ADD CONSTRAINT PK_Producto PRIMARY KEY (codigoProducto);

ALTER TABLE Producto
ADD CONSTRAINT FK_GamaProducto
FOREIGN KEY (gama) REFERENCES gamaProducto(gama);


ALTER TABLE Cliente
ADD CONSTRAINT FK_Empleado
FOREIGN KEY (codigoEmpleado_repVentas) REFERENCES empleado(codigoEmpleado);


ALTER TABLE empleado
ADD CONSTRAINT FK_CodigoOficina
FOREIGN KEY (codigoOficina) REFERENCES oficina(codigoOficina);


ALTER TABLE empleado
ADD CONSTRAINT FK_CodigoJefe
FOREIGN KEY (codigoJefe) REFERENCES empleado(codigoEmpleado);
