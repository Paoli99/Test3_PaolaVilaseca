-- Tabla de Clientes
CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY, 
    first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

-- Tabla de Productos
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Tabla de Pedidos
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY, 
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Tabla de Detalles del Pedido
CREATE TABLE OrderDetails (
    order_detail_id INT IDENTITY(1,1) PRIMARY KEY, 
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    total_price AS (quantity * unit_price) PERSISTED, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
