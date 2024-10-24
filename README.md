# Test 3 - Paola Vilaseca

## Descripción del proyecto

## Requisitos
### Software Necesario:
1. Cualquier  sistema de gestión de bases de datos relacional compatible, como MySQL o PostgreSQL

2. **Scripts SQL**:
   - Descargar los queries que estan en este repositorio.
   

### Cómo Ejecutar los Queries

1. **Abrir SQL Server Management Studio (SSMS)**:
   - Inicie SSMS y conectese a su servidor SQL.
   
2. **Crear una nueva base de datos**:
   - Antes de ejecutar los scripts, asegúrate de crear una base de datos donde se almacenarán las tablas. Usa el siguiente comando:
     ```sql
     CREATE DATABASE SalesManagement;
     GO
     USE SalesManagement;
     ```

3. **Ejecutar los scripts de creación de tablas**:
   - Abrir el script SQL proporcionado para crear las tablas.
     ```sql
     -- Ejemplo:
     CREATE TABLE Customers (
         customer_id INT PRIMARY KEY IDENTITY(1,1),
         first_name VARCHAR(100),
         last_name VARCHAR(100),
         email VARCHAR(100),
         phone VARCHAR(20),
         address VARCHAR(255)
     );
     ```

4. **Insertar datos en las tablas**:
   - Abrir el script SQL proporcionado para poblar las tablas.
     ```sql
     -- Ejemplo:
     INSERT INTO Customers (first_name, last_name, email, phone, address)
     VALUES ('Juan', 'Pérez', 'juan.perez@example.com', '555-1234', 'Calle Falsa 123');
     ```

5. **Ejecutar consultas SQL**:
   - Ejecutar las consultas SQL proporcionadas.

## Tablas Principales

### 1. **Customers** (Clientes):
   - `customer_id` (PRIMARY KEY): Identificador único del cliente.
   - `first_name`: Nombre del cliente.
   - `last_name`: Apellido del cliente.
   - `email`: Correo electrónico del cliente.
   - `phone`: Teléfono de contacto.
   - `address`: Dirección del cliente.

### 2. **Products** (Productos):
   - `product_id` (PRIMARY KEY): Identificador único del producto.
   - `name`: Nombre del producto.
   - `price`: Precio del producto.
   - `stock`: Cantidad en inventario.

### 3. **Orders** (Pedidos):
   - `order_id` (PRIMARY KEY): Identificador único del pedido.
   - `customer_id` (FOREIGN KEY): Referencia al cliente que realizó el pedido.
   - `order_date`: Fecha en que se realizó el pedido.
   - `total_amount`: Monto total del pedido.

### 4. **OrderDetails** (Detalles de Pedido):
   - `order_detail_id` (PRIMARY KEY): Identificador único del detalle.
   - `order_id` (FOREIGN KEY): Referencia al pedido.
   - `product_id` (FOREIGN KEY): Referencia al producto.
   - `quantity`: Cantidad del producto en el pedido.
   - `unit_price`: Precio unitario del producto.
