SELECT trip_id, duration_minutes FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` WHERE duration_minutes > 120 LIMIT 10;

SELECT start_station_name, end_station_name FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` LIMIT 20;

SELECT start_station_id, duration_minutes FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` WHERE start_station_id = 2572;

SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` WHERE subscriber_type = "Walk Up";