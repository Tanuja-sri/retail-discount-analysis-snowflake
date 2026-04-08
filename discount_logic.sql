SELECT
o.order_id,
o.customer_id,
o.order_date,

-- Amount before discount
(p.product_price * o.quantity) AS before_discount_amount,

-- Amount after discount
CASE
WHEN (p.product_price * o.quantity) >= 50000
THEN (p.product_price * o.quantity) * 0.90
ELSE (p.product_price * o.quantity)
END AS after_discount_amount

FROM orders o
JOIN products p
ON o.product_id = p.product_id;