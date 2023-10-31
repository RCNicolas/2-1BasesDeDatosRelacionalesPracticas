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
        
    );

CREATE TABLE
    autoresLibros (
        
    );

CREATE TABLE
    libros (
        ISBN INT UNIQUE NOT NULL PRIMARY KEY,
        
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
        
    );

CREATE TABLE
    carritos (
        shoppingCartID INT UNIQUE NOT NULL PRIMARY KEY,
        
    );

CREATE TABLE
    pedidos (
        idPedido INT UNIQUE NOT NULL PRIMARY KEY,
        
    );

CREATE TABLE
    clientes (
        idCliente INT NOT NULL PRIMARY KEY,
        
    );

CREATE TABLE
    notificacionCorreo (
        idNotificacion INT UNIQUE NOT NULL PRIMARY KEY,
        
    );
