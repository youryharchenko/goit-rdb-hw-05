SELECT od.id, 
	od.order_id, 
	od.product_id, 
	od.quantity, 
	(SELECT o.customer_id  FROM orders o WHERE o.id = od.order_id ) as customer_id
FROM order_details od;