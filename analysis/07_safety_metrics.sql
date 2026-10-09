-- Driver safety incident rank
SELECT 
	si.driver_id,
	CONCAT(d.first_name, ' ', d.last_name) AS full_name,
	COUNT(*) AS safety_incidents,
	DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS rank_high_to_low
FROM operations.safety_incidents si
LEFT JOIN operations.drivers d
	ON si.driver_id = d.driver_id
WHERE 
	si.driver_id IS NOT NULL
GROUP BY 
	si.driver_id,
	d.first_name,
	d.last_name
ORDER BY 
	rank_high_to_low;

-- Safety incident by route
SELECT
	r.route_id,
	r.origin_city,
	r.origin_state,
	r.destination_city,
	r.destination_state,
	COUNT(*) AS total_incidents,
	DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS rank_high_to_low
FROM operations.safety_incidents si
LEFT JOIN operations.trips t
	ON si.trip_id = t.trip_id
LEFT JOIN operations.loads l
	ON t.load_id = l.load_id
LEFT JOIN operations.routes r
	ON l.route_id = r.route_id
GROUP BY r.route_id,
	r.origin_city,
	r.origin_state,
	r.destination_city,
	r.destination_state
ORDER BY
	rank_high_to_low;

-- Count of incident types
SELECT
	incident_type,
	COUNT(*) AS total_incidents,
	DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_high_to_low
FROM operations.safety_incidents
GROUP BY incident_type
ORDER BY rank_high_to_low;

-- Count of the times it was our drivers fault
SELECT
	at_fault_flag,
	COUNT(*) AS total
FROM operations.safety_incidents
GROUP BY at_fault_flag;

-- How many incidents resulted in injuries
SELECT
	injury_flag,
	COUNT(*) AS total
FROM operations.safety_incidents
GROUP BY injury_flag;

-- Was the incident preventable
SELECT
	preventable_flag,
	COUNT(*) AS total
FROM operations.safety_incidents
GROUP BY preventable_flag;

-- Incident description count
SELECT
	description,
	COUNT(*) AS total,
	DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_high_to_low
FROM operations.safety_incidents
GROUP BY description
ORDER BY rank_high_to_low;

-- Total vehicle damage cost, cargo damage cost and claim amount
SELECT
	SUM(vehicle_damage_cost) AS total_vehicle_damage_cost,
	SUM(cargo_damage_cost) AS total_cargo_damage_cost,
	SUM(claim_amount) AS total_claim_amount
FROM operations.safety_incidents;
