-- Products
INSERT INTO Products (name, price, stock) VALUES
('Camisa Blanca', 80.00, 100),
('Jeans', 150.00, 50),
('Chaqueta de Cuero', 300.00, 20),
('Vestido Rojo', 200.00, 30),
('Pantalon De Vestir Negro', 120.00, 40),
('Medias', 250.00, 60),
('Short', 90.00, 75),
('Gorra', 50.00, 80),
('Falda', 110.00, 35),
('Cinturón de Cuero', 70.00, 90);



-- Customers
INSERT INTO Customers (first_name, last_name, email, phone, address) VALUES
('Juan', 'Pérez', 'juan.perez@gmail.com', '78965412', 'Calle 1, Cochabamba'),
('Maria', 'López', 'maria.lopez@hotmail.com', '65478932', 'Calle 2, Sucre'),
('Carlos', 'García', 'carlos.garcia@gmail.com', '72345678', 'Calle 3, Cochabamba'),
('Ana', 'Rodríguez', 'ana.rodriguez@hotmail.com', '77654321', 'Calle 4, La Paz'),
('Luis', 'Fernández', 'luis.fernandez@gmail.com', '78932145', 'Calle 5, La Paz'),
('Sofía', 'Martínez', 'sofia.martinez@gmail.com', '61654987', 'Calle 6, La Paz'),
('Pablo', 'Díaz', 'pablo.diaz@gmail.com', '62963741', 'Calle 7, Ciudad Santa Cruz'),
('Marta', 'Gómez', 'marta.gomez@gmail.com', '71357852', 'Calle 8, Ciudad Beni'),
('Pedro', 'Silva', 'pedro.silva@gmail.com', '75159852', 'Calle 9, Ciudad La Paz'),
('Lucía', 'Ramírez', 'lucia.ramirez@yahoo.com', '79753486', 'Calle 10, Tarija');


-- Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(10, '2022-08-21', 450.00),  
(1, '2022-10-05', 900.00),   
(5, '2023-03-23', 300.00),   
(1, '2023-05-10', 1000.00),  
(1, '2023-06-15', 800.00),   
(6, '2023-07-10', 600.00),   
(1, '2023-11-20', 750.00),   
(4, '2023-12-01', 250.00),   
(2, '2024-09-10', 350.00),   
(2, '2024-10-10', 450.00),  
(2, '2024-10-11', 250.00),  
(3, '2024-02-14', 400.00),   
(3, '2024-10-12', 300.00),  
(4, '2024-10-13', 600.00),  
(5, '2024-10-14', 150.00),  
(4, '2024-10-15', 700.00),  
(6, '2024-10-15', 700.00),  
(7, '2024-10-16', 800.00),  
(6, '2024-10-17', 500.00),  
(8, '2024-10-17', 200.00),  
(2, '2024-10-18', 300.00),  
(4, '2024-10-18', 150.00),  
(8, '2024-10-18', 450.00),  
(9, '2024-10-18', 500.00),  
(3, '2024-10-19', 350.00),  
(10, '2024-10-19', 350.00);

--OrderDetails 
INSERT INTO OrderDetails (order_id, product_id, quantity, unit_price) VALUES
(1, 10, 3, 150.00),  
(2, 1, 10, 90.00),   
(3, 8, 3, 100.00),   
(4, 1, 10, 100.00),  
(5, 2, 5, 160.00),   
(6, 3, 2, 300.00),   
(7, 5, 4, 180.00),   
(8, 4, 2, 120.00),   
(9, 6, 1, 350.00),   
(10, 7, 4, 120.00),  
(11, 8, 2, 150.00),  
(12, 2, 4, 250.00),  
(13, 3, 5, 200.00),  
(14, 6, 2, 300.00),  
(15, 4, 3, 100.00),  
(16, 9, 4, 250.00),  
(17, 10, 2, 50.00),  
(18, 5, 3, 100.00),  
(19, 8, 2, 150.00),  
(20, 7, 2, 175.00),  
(21, 2, 3, 150.00),  
(22, 1, 1, 90.00),   
(23, 4, 2, 200.00);

