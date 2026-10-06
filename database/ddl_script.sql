/*
====================================================================================
DDL Script: Create Tables
====================================================================================
Script Purpose:
  This script creates tables in the 'operations' schema.
====================================================================================
*/

-- Create tables for the source data
CREATE TABLE operations.customers (
	customer_id VARCHAR(50),
	customer_name VARCHAR(50),
	customer_type VARCHAR(50),
	credit_terms_days INT,
	primary_freight_type VARCHAR(50),
	account_status VARCHAR(50),
	contract_start_date DATE,
	annual_revenue_potential DECIMAL(10, 2)
);

CREATE TABLE operations.delivery_events (
	event_id VARCHAR(50),
	load_id VARCHAR(50),
	trip_id VARCHAR(50),
	event_type VARCHAR(50),
	facility_id VARCHAR(50),
	scheduled_datetime TIMESTAMP,
	actual_datetime TIMESTAMP,
	detention_minutes INT,
	on_time_flag BOOLEAN,
	location_city VARCHAR(50),
	location_state CHAR(2)
);

CREATE TABLE operations.driver_monthly_metrics (
	driver_id VARCHAR(50),
	month DATE,
	trips_completed INT,
	total_miles DOUBLE PRECISION,
	total_revenue DECIMAL(10, 2),
	average_mpg DOUBLE PRECISION,
	total_fuel_gallons DOUBLE PRECISION,
	on_time_delivery_rate DOUBLE PRECISION,
	average_idle_hours DOUBLE PRECISION
);

CREATE TABLE operations.drivers (
	driver_id VARCHAR(50),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	hire_date DATE,
	termination_date DATE,
	license_number VARCHAR(50),
	license_state CHAR(2),
	date_of_birth DATE,
	home_terminal VARCHAR(50),
	employment_status VARCHAR(50),
	cdl_class CHAR(1),
	years_experience INT
);

CREATE TABLE operations.facilities (
	facility_id VARCHAR(50),
	facility_name VARCHAR(50),
	facility_type VARCHAR(50),
	city VARCHAR(50),
	state CHAR(2),
	latitude DOUBLE PRECISION,
	longitude DOUBLE PRECISION,
	dock_doors INT,
	operating_hours VARCHAR(50)
);

CREATE TABLE operations.fuel_purchases (
	fuel_purchase_id VARCHAR(50),
	trip_id VARCHAR(50),
	truck_id VARCHAR(50),
	driver_id VARCHAR(50),
	purchase_date TIMESTAMP,
	location_city VARCHAR(50),
	location_state CHAR(2),
	gallons DOUBLE PRECISION,
	price_per_gallon DOUBLE PRECISION,
	total_cost DECIMAL(10, 2),
	fuel_card_number VARCHAR(50)
);

CREATE TABLE operations.loads (
	load_id VARCHAR(50),
	customer_id VARCHAR(50),
	route_id VARCHAR(50),
	load_date DATE,
	load_type VARCHAR(50),
	weight_lbs DOUBLE PRECISION,
	pieces INT,
	revenue DECIMAL(10, 2),
	fuel_surcharge DECIMAL(10, 2),
	accessorial_charges INT,
	load_status VARCHAR(50),
	booking_type VARCHAR(50)
);

CREATE TABLE operations.maintenance_records (
	maintenance_id VARCHAR(50),
	truck_id VARCHAR(50),
	maintenance_date DATE,
	maintenance_type VARCHAR(50),
	odometer_reading INT,
	labor_hours DOUBLE PRECISION,
	labor_cost DECIMAL(10, 2),
	parts_cost DECIMAL(10, 2),
	total_cost DECIMAL(10, 2),
	facility_location VARCHAR(50),
	downtime_hours DOUBLE PRECISION,
	service_description VARCHAR(50)
);

CREATE TABLE operations.routes (
	route_id VARCHAR(50),
	origin_city VARCHAR(50),
	origin_state CHAR(2),
	destination_city VARCHAR(50),
	destination_state CHAR(2),
	typical_distance_miles DOUBLE PRECISION,
	base_rate_per_mile DECIMAL(10, 2),
	fuel_surcharge_rate DECIMAL(10, 2),
	typical_transit_days INT
);

CREATE TABLE operations.safety_incidents (
	incident_id VARCHAR(50),
	trip_id VARCHAR(50),
	truck_id VARCHAR(50),
	driver_id VARCHAR(50),
	incident_date TIMESTAMP,
	incident_type VARCHAR(50),
	location_city VARCHAR(50),
	location_state CHAR(2),
	at_fault_flag BOOLEAN,
	injury_flag BOOLEAN,
	vehicle_damage_cost DECIMAL(10, 2),
	cargo_damage_cost DECIMAL(10, 2),
	claim_amount DECIMAL(10, 2),
	preventable_flag BOOLEAN,
	description VARCHAR(50)
);

CREATE TABLE operations.trailers (
	trailer_id VARCHAR(50),
	trailer_number INT,
	trailer_type VARCHAR(50),
	length_feet INT,
	model_year INT,
	vin VARCHAR(50),
	acquisition_date DATE,
	status VARCHAR(50),
	current_location VARCHAR(50)
);

CREATE TABLE operations.trips (
	trip_id VARCHAR(50),
	load_id VARCHAR(50),
	driver_id VARCHAR(50),
	truck_id VARCHAR(50),
	trailer_id VARCHAR(50),
	dispatch_date DATE,
	actual_distance_miles DOUBLE PRECISION,
	actual_duration_hours DOUBLE PRECISION,
	fuel_gallons_used DOUBLE PRECISION,
	average_mpg DOUBLE PRECISION,
	idle_time_hours DOUBLE PRECISION,
	trip_status VARCHAR(50)
);

CREATE TABLE operations.truck_utilization_metrics (
	truck_id VARCHAR(50),
	month DATE,
	trips_completed INT,
	total_miles DOUBLE PRECISION,
	total_revenue DECIMAL(10, 2),
	average_mpg DOUBLE PRECISION,
	maintenance_events INT,
	maintenance_cost DECIMAL(10, 2),
	downtime_hours DOUBLE PRECISION,
	utilization_rate DOUBLE PRECISION
);

CREATE TABLE operations.trucks (
	truck_id VARCHAR(50),
	unit_number INT,
	make VARCHAR(50),
	model_year INT,
	vin VARCHAR(50),
	acquisition_date DATE,
	acquisition_mileage DOUBLE PRECISION,
	fuel_type VARCHAR(50),
	tank_capacity_gallons INT,
	status VARCHAR(50),
	home_terminal VARCHAR(50)
);
