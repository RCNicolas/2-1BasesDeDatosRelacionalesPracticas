CREATE TABLE pagos(
    idPago INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idFactura INT NULL,
    fechaPago DATE NOT NULL,
    importePagado INT NOT NULL,
    dealles VARCHAR(255) NOT NULL
);
CREATE TABLE pedido(
    idPedido INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idProducto INT NOT NULL,
    idFactura INT NOT NULL,
    fecha DATE NOT NULL,
    estadoPedido VARCHAR(255) NOT NULL,
    detallesPedido VARCHAR(255) NOT NULL
);
CREATE TABLE correrosClientes(
    idCorreoCliente INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    correro VARCHAR(255) NOT NULL
);
CREATE TABLE telefonosProveedores(
    idTelefonoProveedor INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    telefono CHAR(20) NOT NULL
);
CREATE TABLE factura(
    idFactura INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idArticulosFactura INT NOT NULL,
    idCliente INT NOT NULL,
    detalles VARCHAR(255) NOT NULL,
    fechaFactura DATE NOT NULL,
    total INT NOT NULL
);
CREATE TABLE correosProveedor(
    idCorreoProveedor INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    correro VARCHAR(225) NOT NULL
);
CREATE TABLE clientes(
    idCliente INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idTelefono INT NOT NULL,
    idCorreo INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);
CREATE TABLE articulosFactura(
    idArticulo INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cantidadVenta INT NOT NULL,
    precioUnitario INT NOT NULL,
    detalles VARCHAR(255) NOT NULL
);
CREATE TABLE productos(
    idProductos INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idProveedorPreferido INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio INT NOT NULL,
    cantidadStock INT NOT NULL,
    nivelPedidoNuevo INT NOT NULL
);
CREATE TABLE PedidiosPendientes(
    idPedidoPendiente INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idPedido INT NOT NULL,
    cantidadPedida INT NOT NULL,
    detalles VARCHAR(255) NOT NULL
);
CREATE TABLE proveedor(
    idProveedor INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idTelefono INT NOT NULL,
    idcorreo INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);
CREATE TABLE telefonosClientes(
    idTelefonoCliente INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    telefono CHAR(20) NOT NULL
);
