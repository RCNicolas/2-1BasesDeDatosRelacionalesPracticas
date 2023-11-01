CREATE TABLE
    infoPago (
        idInfoPago INT UNIQUE NOT NULL PRIMARY KEY,
        
    );

CREATE TABLE
    almacenes (
        codigo INT UNIQUE NOT NULL PRIMARY KEY,
        
    );

CREATE TABLE
    facturacion (
        idFactrura INT UNIQUE NOT NULL PRIMARY KEY,
        idCliente INT NOT NULL,
        
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
        
    );

CREATE TABLE
    autores (
        idAutor INT UNIQUE NOT NULL PRIMARY KEY,
       
    );

CREATE TABLE
    stock (
        idStock INT UNIQUE NOT NULL PRIMARY KEY,
        
       
    );

CREATE TABLE
    editorial (
        idEditorial INT UNIQUE NOT NULL PRIMARY KEY,
        nombre CHAR (20) NOT NULL,
        idTelefono CHAR (10) NOT NULL,
        
    );

CREATE TABLE
    carritos (
        shoppingCartID INT UNIQUE NOT NULL PRIMARY KEY,
        ISBN INT NOT NULL,
        idCliente INT NOT NULL,
        
    );

CREATE TABLE
    pedidos (
        idPedido INT UNIQUE NOT NULL PRIMARY KEY,
        idInfoPago INT NOT NULL,
        idFacturacion INT NOT NULL,
        
    );

CREATE TABLE
    clientes (
        idCliente INT NOT NULL PRIMARY KEY,
        idCorreoElectronico INT NOT NULL,
        idTelefono CHAR(10) NOT NULL,
      
    );

CREATE TABLE
    notificacionCorreo (
        idNotificacion INT UNIQUE NOT NULL PRIMARY KEY,
        idCliente INT NOT NULL,
        
    );

CREATE TABLE telefonosclientes (
    idTelefonoCliente INT UNIQUE NOT NULL PRIMARY KEY,
);

CREATE TABLE correosClientes (
    idCorreosClientes INT UNIQUE NOT NULL PRIMARY KEY,
);

CREATE TABLE telefonosEditorial (
    idTelefonosEditorial INT UNIQUE NOT NULL PRIMARY KEY,
);