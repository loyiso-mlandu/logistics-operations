-- Total maintenance cost and total downtime
SELECT
	truck_id,
	SUM(total_cost) AS total_maintenance_cost,
	ROUND(SUM(downtime_hours)::numeric, 1) AS total_downtime_hours
FROM 
	operations.maintenance_records
GROUP BY 
	truck_id
ORDER BY 
	total_maintenance_cost DESC,
	total_downtime_hours DESC;

-- Cost per mile
SELECT
	mr.truck_id,
	ROUND(mr.total_maintenance_cost / NULLIF(tum.total_miles, 0)::numeric, 2) AS cost_per_mile
FROM (
	SELECT
		truck_id,
		SUM(total_cost) AS total_maintenance_cost
	FROM
		operations.maintenance_records
	GROUP BY 
		truck_id 
) AS mr
LEFT JOIN
(
	SELECT
		truck_id,
		SUM(total_miles) AS total_miles
	FROM
		operations.truck_utilization_metrics
	GROUP BY 
		truck_id
) AS tum
ON mr.truck_id = tum.truck_id;
