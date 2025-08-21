SELECT t.trip_id, t.start_time, s.name AS nome_estacao_partida FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS t INNER JOIN `bigquery-public-data.austin_bikeshare.bikeshare_stations` AS s ON t.start_station_id = s.station_id LIMIT 10;

SELECT
  t.trip_id,
  t.start_station_id,
  s.station_id AS station_id_da_tabela_s
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS t
LEFT JOIN
  `bigquery-public-data.austin_bikeshare.bikeshare_stations` AS s
ON
  t.start_station_id = s.station_id
WHERE
  s.station_id IS NULL
LIMIT 10;