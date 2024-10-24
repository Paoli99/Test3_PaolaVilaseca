-- Listar los clientes que han realizado el mayor número de pedidos en los últimos 6 meses
SELECT C.first_name + ' ' + C.last_name AS Customer, COUNT(O.order_id) AS "Total Orders"
FROM Orders O
JOIN Customers C ON O.customer_id = C.customer_id
WHERE O.order_date >= DATEADD(MONTH, -6, GETDATE())
GROUP BY C.first_name, C.last_name
ORDER BY "Total Orders" DESC;

-- Obtener el producto más vendido en el último mes y la cantidad vendida.
SELECT TOP 1 P.name AS "Product name", SUM(OD.quantity) AS "Quantity"
FROM OrderDetails OD
JOIN Products P ON OD.product_id = P.product_id
JOIN Orders O ON OD.order_id = O.order_id
WHERE O.order_date >= DATEADD(MONTH, -1, GETDATE())  
GROUP BY P.name
ORDER BY "Quantity" DESC


-- Mostrar los clientes que no han realizado ning´un pedido en el último año.
SELECT c.customer_id as "ID", c.first_name + ' ' + C.last_name AS "Customer Name"
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
    AND O.order_date >= '2024-01-01'  
WHERE O.order_id IS NULL;


-- Listar los pedidos cuyo monto total supera los 5000 Bs.
SELECT order_id as "Order ID", customer_id as "Customer ID", total_amount as "Total Amount in Bs."
FROM Orders
WHERE total_amount > 5000;

