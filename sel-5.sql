SELECT 
	od.id, 
	od.order_id, 
	od.product_id, 
	od.quantity,
	demo_func(od.quantity, 10) as q_div_by_10
FROM order_details od 