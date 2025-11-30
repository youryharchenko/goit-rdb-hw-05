SELECT od.order_id, AVG(od.quantity )
FROM (SELECT * FROM order_details od WHERE od.quantity > 10) od
GROUP BY od.order_id;
