WITH order_details_q_gt_10 AS (
    SELECT * FROM order_details od WHERE od.quantity > 10
)
SELECT od10.order_id, AVG(od10.quantity )
FROM  order_details_q_gt_10  od10
GROUP BY od10.order_id;