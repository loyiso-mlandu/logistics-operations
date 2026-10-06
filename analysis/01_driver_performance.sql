-- =========================================================
-- 01. Driver Performance
-- =========================================================

-- Driver performance: On-time rates
SELECT
	d.driver_id,
	CONCAT(d.first_name, ' ', d.last_name) AS full_name,
	ROUND(AVG(dmm.on_time_delivery_rate)::numeric * 100, 2) AS on_time_rate
FROM 
	operations.drivers d
LEFT JOIN operations.driver_monthly_metrics dmm
ON d.driver_id = dmm.driver_id
WHERE d.employment_status = 'Active'
GROUP BY 
	d.driver_id, d.first_name, d.last_name
ORDER BY 
	on_time_rate DESC; 

-- Driver performance: MPG
SELECT
	d.driver_id,
	CONCAT(d.first_name, ' ', d.last_name) AS full_name,
	ROUND(AVG(dmm.average_mpg)::numeric, 2) AS miles_per_gallon
FROM 
	operations.drivers d
LEFT JOIN operations.driver_monthly_metrics dmm
ON d.driver_id = dmm.driver_id
WHERE d.employment_status = 'Active'
GROUP BY 
	d.driver_id, d.first_name, d.last_name
ORDER BY 
	miles_per_gallon DESC;

-- Driver performance: revenue per mile
SELECT
	d.driver_id,
	CONCAT(d.first_name, ' ', d.last_name) AS full_name,
	ROUND(SUM(dmm.total_revenue) / NULLIF(SUM(dmm.total_miles), 0)::numeric, 2) AS revenue_per_mile
FROM 
	operations.drivers d
LEFT JOIN operations.driver_monthly_metrics dmm
ON d.driver_id = dmm.driver_id
WHERE d.employment_status = 'Active'
GROUP BY 
	d.driver_id, d.first_name, d.last_name
ORDER BY
	revenue_per_mile DESC;
	
-- Average on-time rate
SELECT 
	ROUND(AVG(on_time_delivery_rate)::numeric * 100, 2) AS average_on_time_rate
FROM 
	operations.driver_monthly_metrics dmm
LEFT JOIN operations.drivers d
ON dmm.driver_id = d.driver_id
WHERE d.employment_status = 'Active';

-- Average mpg
SELECT 
	ROUND(AVG(average_mpg)::numeric, 2) AS average_mpg
FROM 
	operations.driver_monthly_metrics dmm
LEFT JOIN operations.drivers d
ON dmm.driver_id = d.driver_id
WHERE d.employment_status = 'Active';

-- Average revenue per mile
SELECT 
	ROUND(SUM(total_revenue) / NULLIF(SUM(total_miles), 0)::numeric, 2) AS average_revenue_per_mile
FROM 
	operations.driver_monthly_metrics dmm
LEFT JOIN operations.drivers d
ON dmm.driver_id = d.driver_id
WHERE d.employment_status = 'Active';
