INSERT INTO genre (name) VALUES
('Rock'),
('Pop'),
('Hip-Hop');


INSERT INTO artist (name) VALUES
('Muse'),
('Adele'),
('Drake'),
('Coldplay');


INSERT INTO album (name, year) VALUES
('Absolution', 2003),
('25', 2015),
('Scorpion', 2018),
('Parachutes', 2000);


INSERT INTO track (name, duration, album_id) VALUES
('Time Is Running Out', 210, 1),
('Hysteria', 230, 1),
('Hello', 300, 2),
('Gods Plan', 198, 3),
('In My Feelings', 215, 3),
('Yellow', 260, 4);


INSERT INTO compilation (name, year) VALUES
('Best of Rock', 2019),
('Top Hits 2020', 2020),
('Pop Collection', 2018),
('Hip-Hop Stars', 2019);


INSERT INTO genre_artist VALUES
(1, 1),
(1, 4),
(2, 2),
(3, 3);


INSERT INTO album_artist VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);


INSERT INTO compilation_track VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 3),
(4, 4),
(4, 5);
