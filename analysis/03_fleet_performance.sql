-- Fleet performance by truck
SELECT
	truck_id,
	SUM(total_miles) AS total_miles,
	ROUND(avg(total_miles)::numeric, 0) AS average_miles,
	SUM(total_revenue) AS total_revenue,
	ROUND(avg(total_revenue)::numeric, 2) AS average_revenue
FROM
	operations.truck_utilization_metrics
GROUP BY
	truck_id
ORDER BY total_miles DESC;
