#Pada kasus ini, kamu diminta untuk membandingkan tingkat peminjaman sepeda dari subcriber_type: Subscriber di kota Redwood City untuk periode Q1 dan Q2 tahun 2016.

#MENAMPILKAN DATA Q1
SELECT station.station_id, station.name, station.landmark, trips.trip_id, trips.start_date, trips.subscriber_type, trips.start_station_name, trips.start_station_id
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-01-01' AND '2016-03-31')
ORDER BY start_date ASC;

#MENAMPILKAN DATA Q2
SELECT station.station_id, station.name, station.landmark, trips.trip_id, trips.start_date, trips.subscriber_type, trips.start_station_name, trips.start_station_id
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-04-01' AND '2016-06-30');

#MENAMPILKAN COUNT Q1
SELECT COUNT (station.station_id) count_q1
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-01-01' AND '2016-03-31');

#MENAMPILKAN COUNT Q2
SELECT COUNT (station.station_id) count_q2
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-04-01' AND '2016-06-30');

#MENAMPILKAN COUNT Q1 DAN Q2 DALAM 1 ROW
WITH
 query_1 AS 
    (SELECT COUNT (station.station_id) count_q1
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-01-01' AND '2016-03-31')),
 query_2 AS 
    (SELECT COUNT (station.station_id) count_q2
FROM `bigquery-public-data.san_francisco.bikeshare_stations` station
JOIN `bigquery-public-data.san_francisco.bikeshare_trips` trips
ON station.station_id = trips.start_station_id
WHERE (trips.subscriber_type = 'Subscriber') 
AND (station.landmark = 'Redwood City') 
AND (trips.start_date BETWEEN '2016-04-01' AND '2016-06-30'))
SELECT 
  ARRAY(SELECT query_1.count_q1 FROM query_1) AS COUNT_Q1,
  ARRAY(SELECT query_2.count_q2 FROM query_2) AS COUNT_Q2;