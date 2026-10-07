-- Average revenue per load by route
SELECT
	*,
	base_average_revenue + average_fuel_surcharge + average_accessorial_charges AS average_total_revenue_per_load
FROM (
	SELECT 
		r.route_id,
		r.origin_city,
		r.origin_state,
		r.destination_city,
		r.destination_state,
		ROUND(AVG(l.revenue), 2) AS base_average_revenue,
		ROUND(AVG(l.fuel_surcharge), 2) AS average_fuel_surcharge,
		ROUND(AVG(l.accessorial_charges), 2) AS average_accessorial_charges
	FROM operations.loads l
	LEFT JOIN operations.routes r
	ON l.route_id = r.route_id
	GROUP BY r.route_id,
		r.origin_city,
		r.origin_state,
		r.destination_city,
		r.destination_state
)AS route_averages;

-- Total revenue by route (2022 - 2024)
SELECT
	*,
	base_revenue + total_fuel_surcharge + total_accessorial_charges AS total_revenue_per_route
FROM (
	SELECT 
		r.route_id,
		r.origin_city,
		r.origin_state,
		r.destination_city,
		r.destination_state,
		SUM(l.revenue) AS base_revenue,
		SUM(l.fuel_surcharge) AS total_fuel_surcharge,
		SUM(l.accessorial_charges) AS total_accessorial_charges
	FROM operations.loads l
	LEFT JOIN operations.routes r
	ON l.route_id = r.route_id
	GROUP BY r.route_id,
		r.origin_city,
		r.origin_state,
		r.destination_city,
		r.destination_state
) AS route_totals;
