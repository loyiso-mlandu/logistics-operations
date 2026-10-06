/*
======================================================================================
Load Operations Layer
======================================================================================
This script loads data into the 'operations' schema from the external CSV files.
It truncates each table in the 'operations' schema before loading data.
======================================================================================
*/

TRUNCATE operations.customers;
COPY operations.customers (customer_id, customer_name, customer_type, credit_terms_days, primary_freight_type, account_status, contract_start_date, annual_revenue_potential)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\customers.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.delivery_events;
COPY operations.delivery_events (event_id, load_id, trip_id, event_type, facility_id, scheduled_datetime, actual_datetime, detention_minutes, on_time_flag, location_city, location_state)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\delivery_events.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.driver_monthly_metrics;
COPY operations.driver_monthly_metrics (driver_id, month, trips_completed, total_miles, total_revenue, average_mpg, total_fuel_gallons, on_time_delivery_rate, average_idle_hours)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\driver_monthly_metrics.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.drivers;
COPY operations.drivers (driver_id, first_name, last_name, hire_date, termination_date, license_number, license_state, date_of_birth, home_terminal, employment_status, cdl_class, years_experience)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\drivers.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.facilities;
COPY operations.facilities (facility_id, facility_name, facility_type, city, state, latitude, longitude, dock_doors, operating_hours)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\facilities.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.fuel_purchases;
COPY operations.fuel_purchases (fuel_purchase_id, trip_id, truck_id, driver_id, purchase_date, location_city, location_state, gallons, price_per_gallon, total_cost, fuel_card_number)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\fuel_purchases.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.loads;
COPY operations.loads (load_id, customer_id, route_id, load_date, load_type, weight_lbs, pieces, revenue, fuel_surcharge, accessorial_charges, load_status, booking_type)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\loads.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.maintenance_records;
COPY operations.maintenance_records (maintenance_id, truck_id, maintenance_date, maintenance_type, odometer_reading, labor_hours, labor_cost, parts_cost, total_cost, facility_location, downtime_hours, service_description)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\maintenance_records.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.routes;
COPY operations.routes (route_id, origin_city, origin_state, destination_city, destination_state, typical_distance_miles, base_rate_per_mile, fuel_surcharge_rate, typical_transit_days)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\routes.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.safety_incidents;
COPY operations.safety_incidents (incident_id, trip_id, truck_id, driver_id, incident_date, incident_type, location_city, location_state, at_fault_flag, injury_flag, vehicle_damage_cost, cargo_damage_cost, claim_amount, preventable_flag, description)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\safety_incidents.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.trailers;
COPY operations.trailers (trailer_id, trailer_number, trailer_type, length_feet, model_year, vin, acquisition_date, status, current_location)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\trailers.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.trips;
COPY operations.trips (trip_id, load_id, driver_id, truck_id, trailer_id, dispatch_date, actual_distance_miles, actual_duration_hours, fuel_gallons_used, average_mpg, idle_time_hours, trip_status)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\trips.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.truck_utilization_metrics;
COPY operations.truck_utilization_metrics (truck_id, month, trips_completed, total_miles, total_revenue, average_mpg, maintenance_events, maintenance_cost, downtime_hours, utilization_rate)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\truck_utilization_metrics.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE operations.trucks;
COPY operations.trucks (truck_id, unit_number, make, model_year, vin, acquisition_date, acquisition_mileage, fuel_type, tank_capacity_gallons, status, home_terminal)
FROM 'C:\pgsql-access-folder\logistics-operations\datasets\trucks.csv'
DELIMITER ','
CSV HEADER;
