 SELECT
  COUNT(*) AS total_de_viagens,
  AVG(duration_minutes) AS viagem_mais_curta_min,
  MAX(duration_minutes) AS viagem_mais_longa_min
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips`;

SELECT
    subscriber_type,
    COUNT(*) AS numero_de_viagens
FROM
    `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY
    subscriber_type;

SELECT
  start_station_name,
  COUNT(*) as total_viagens_iniciadas,
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY
  start_station_name
ORDER BY
  total_viagens_iniciadas DESC
LIMIT 10;

SELECT SUM (duration_minutes) AS minutos_todas_viagens FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` WHERE subscriber_type = "Single Trip";

SELECT start_station_name, COUNT(*) AS total_viagens, AVG(duration_minutes) FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` GROUP BY start_station_name;

SELECT COUNT(*) AS total_viagens, EXTRACT(YEAR FROM start_time) AS ano FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` GROUP BY ano ORDER BY total_viagens DESC;