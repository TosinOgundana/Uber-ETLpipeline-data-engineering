CREATE OR REPLACE TABLE uber-project-387708.uber_engr_project.tbl_analytics AS(
SELECT 
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
pa.payment_type_name,
r.rate_code_name,
p.passenger_count,
t.trip_distance,
pi.pickup_longitude,
pi.pickup_latitude,
dr.dropoff_longitude,
dr.dropoff_latitude,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM uber-project-387708.uber_engr_project.fact_table f
JOIN uber-project-387708.uber_engr_project.datetime_dim d ON f.datetime_id = d.datetime_id
JOIN uber-project-387708.uber_engr_project.passenger_count_dim p ON f.passenger_count_id = p.passenger_count_id
JOIN uber-project-387708.uber_engr_project.payment_type_dim pa ON f.payment_type_id = pa.payment_type_id
JOIN uber-project-387708.uber_engr_project.trip_distance_dim t ON f.trip_distance_id = t.trip_distance_id
JOIN uber-project-387708.uber_engr_project.rate_code_dim r ON f.rate_code_id = r.rate_code_id
JOIN uber-project-387708.uber_engr_project.pickup_location_dim pi ON f.pickup_location_id = pi.pickup_location_id
JOIN uber-project-387708.uber_engr_project.drop_location_dim dr ON f.drop_location_id = dr.drop_location_id)
;
