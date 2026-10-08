-- Total revenue by customer
SELECT 
	c.customer_id,
	c.customer_name,
	SUM(
		COALESCE(l.revenue, 0) 
		+ COALESCE(l.fuel_surcharge, 0) 
		+ COALESCE(l.accessorial_charges, 0)
	) AS total_revenue
FROM operations.customers c
LEFT JOIN operations.loads l
	ON c.customer_id = l.customer_id
GROUP BY 
	c.customer_id,
	c.customer_name
ORDER BY total_revenue DESC;
	
-- Count of customer types
SELECT 
	customer_type,
	COUNT(*) AS customer_count
FROM operations.customers
GROUP BY customer_type;

-- Customer account status
SELECT 
	account_status,
	COUNT(*) AS customer_count
FROM operations.customers
GROUP BY account_status;
