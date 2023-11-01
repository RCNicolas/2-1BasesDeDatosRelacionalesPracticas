CREATE TABLE
    infoPago (
        idInfoPago INT UNIQUE NOT NULL PRIMARY KEY,
        tipoPago VARCHAR (255) NOT NULL
    );

CREATE TABLE
    almacenes (
        codigo INT UNIQUE NOT NULL PRIMARY KEY,
        direccion VARCHAR (50) NOT NULL,
        telefono CHAR (10) NOT NULL
    );

CREATE TABLE
    facturacion (
        idFactrura INT UNIQUE NOT NULL PRIMARY KEY,
        idCliente INT NOT NULL,
        direccionFactura VARCHAR (50) NOT NULL,
        direccionVenta VARCHAR (50) NOT NULL
    );

CREATE TABLE
    autoresLibros (
        idAutores INT NOT NULL,
        idLibros INT NOT NULL
    );

CREATE TABLE
    libros (
        ISBN INT UNIQUE NOT NULL PRIMARY KEY,
        idAutoresLibros INT NOT NULL,
        idEditorial INT NOT NULL,
        titulo VARCHAR (225) NOT NULL,
        año DATE NOT NULL,
        precio INT NOT NULL
    );

CREATE TABLE
    autores (
        idAutor INT UNIQUE NOT NULL PRIMARY KEY,
        nombre CHAR (20) NOT NULL,
        direccion VARCHAR (50) NOT NULL,
        paginaWeb VARCHAR (255) NOT NULL
    );

CREATE TABLE
    stock (
        idStock INT UNIQUE NOT NULL PRIMARY KEY,
        ISBN INT NOT NULL,
        codigoAlmacen INT NOT NULL,
        copiasStock INT NOT NULL
    );

CREATE TABLE
    editorial (
        idEditorial INT UNIQUE NOT NULL PRIMARY KEY,
        nombre CHAR (20) NOT NULL,
        idTelefono CHAR (10) NOT NULL,
        direccion VARCHAR (50) NOT NULL,
        sitioWeb VARCHAR (255) NOT NULL
    );

CREATE TABLE
    carritos (
        shoppingCartID INT UNIQUE NOT NULL PRIMARY KEY,
        ISBN INT NOT NULL,
        idCliente INT NOT NULL,
        cantidad INT NOT NULL
    );

CREATE TABLE
    pedidos (
        idPedido INT UNIQUE NOT NULL PRIMARY KEY,
        idInfoPago INT NOT NULL,
        idFacturacion INT NOT NULL,
        opcionEnvio VARCHAR (255) NOT NULL,
        fechaPedido DATE NOT NULL
    );

CREATE TABLE
    clientes (
        idCliente INT NOT NULL PRIMARY KEY,
        idCorreoElectronico INT NOT NULL,
        idTelefono CHAR(10) NOT NULL,
        nombre VARCHAR(20) NOT NULL,
        direccion VARCHAR(50) NOT NULL
    );

CREATE TABLE
    notificacionCorreo (
        idNotificacion INT UNIQUE NOT NULL PRIMARY KEY,
        idCliente INT NOT NULL,
        detalles VARCHAR (255) NOT NULL,
        fechaEnvio DATE NOT NULL
    );

CREATE TABLE telefonosclientes (
    idTelefonoCliente INT UNIQUE NOT NULL PRIMARY KEY,
    telefonoCliente CHAR(20) NOT NULL

);

CREATE TABLE correosClientes (
    idCorreosClientes INT UNIQUE NOT NULL PRIMARY KEY,
    correoCliente VARCHAR(225) NOT NULL
);
CREATE TABLE telefonosEditorial (
    idTelefonosEditorial INT UNIQUE NOT NULL PRIMARY KEY,
    telefonoEditorial CHAR(20) NOT NULL
);