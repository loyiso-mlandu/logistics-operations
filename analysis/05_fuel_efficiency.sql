-- Fuel cost and MPG by route
SELECT
	r.route_id,
	r.origin_city,
	r.destination_city,
	SUM(fp.total_cost) AS total_fuel_cost_by_route,
	ROUND(AVG(t.average_mpg)::numeric, 2) AS average_route_mpg
FROM operations.routes r
LEFT JOIN operations.loads l 
	ON r.route_id = l.route_id
LEFT JOIN operations.trips t 
	ON l.load_id = t.load_id
LEFT JOIN operations.fuel_purchases fp 
	ON t.trip_id = fp.trip_id
GROUP BY 
	r.route_id,
	r.origin_city,
	r.destination_city
ORDER BY 
	total_fuel_cost_by_route DESC, 
	average_route_mpg DESC;
