SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM track
WHERE duration >= 210;

SELECT name
FROM compilation
WHERE year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM track
WHERE LOWER(name) LIKE '%my%'
   OR LOWER(name) LIKE '%мой%';

SELECT g.name, COUNT(ga.artist_id) AS artist_count
FROM genre g
LEFT JOIN genre_artist ga ON g.id = ga.genre_id
GROUP BY g.name;

SELECT COUNT(t.id)
FROM track t
JOIN album a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.name, AVG(t.duration) AS avg_duration
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.name;

SELECT name
FROM artist
WHERE id NOT IN (
    SELECT aa.artist_id
    FROM album_artist aa
    JOIN album a ON aa.album_id = a.id
    WHERE a.year = 2020
);

SELECT DISTINCT c.name
FROM compilation c
JOIN compilation_track ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN album_artist aa ON a.id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Muse';

SELECT a.name
FROM album a
JOIN album_artist aa ON a.id = aa.album_id
JOIN genre_artist ga ON aa.artist_id = ga.artist_id
GROUP BY a.name
HAVING COUNT(DISTINCT ga.genre_id) > 1;

SELECT name
FROM track
WHERE id NOT IN (
    SELECT track_id FROM compilation_track
);

SELECT ar.name
FROM artist ar
JOIN album_artist aa ON ar.id = aa.artist_id
JOIN track t ON aa.album_id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM track);

SELECT a.name
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.name
HAVING COUNT(t.id) = (
    SELECT COUNT(t.id)
    FROM album a
    JOIN track t ON a.id = t.album_id
    GROUP BY a.id
    ORDER BY COUNT(t.id)
    LIMIT 1
);
