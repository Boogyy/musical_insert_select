select album_name, release_year from albums
where release_year = 2018;

select track_name, duration_sec from tracks
where duration_sec = (
	select max(duration_sec) 
	from tracks);

select track_name from tracks
where duration_sec >= 210;

select collection_name from collections
where release_year between 2018 and 2020;


select name from perfomers
where array_length(regexp_split_to_array(name, '\s+'), 1) = 1;

select track_name from tracks 
where track_name ilike '%my%' or track_name ilike '%мой%';