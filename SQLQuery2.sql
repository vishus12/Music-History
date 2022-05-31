-- Part 1
Select * 
from genre

-- Part 2
Select * 
From Artist 
Order by ArtistName

-- Part 3
Select 
	s.Title,
	a.ArtistName
From Song s
	LEFT JOIN Artist a on s.ArtistId = a.id;

-- Part 4
Select 
a.ArtistName,
rec.Title,
g.Name
from 
Album rec 
	LEFT JOIN Artist a on rec.ArtistId = a.Id
	-- match up FK in album to id for artist in artist column
	LEFT JOIN Genre g on rec.GenreId = g.id
	-- match up FK in album to id for genre in genre column
where 
g.Name = 'Soul';

-- Part 5
Select 
a.ArtistName,
rec.Title,
g.Name
from
Album rec
	LEFT JOIN Artist a on rec.ArtistId = a.id
	LEFT JOIN Genre g on rec.GenreId = g.id
	where
g.Name = 'Jazz' or 
g.Name = 'Rock';

-- Part 6
SELECT 
rec.Title
FROM Album rec
WHERE NOT EXISTS (
    SELECT 1 
    FROM Song s 
    WHERE s.AlbumId = rec.Id
)

-- Part 7

--INSERT INTO Artist 
--(ArtistName, YearEstablished) 
--VALUES ('Jimi Hendrix', 1967);

--Select * From Artist

-- Part 8
--INSERT INTO Album
--(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES ('Are You Experienced', '05/12/1967', 38, 'De Lane Lea', 28, 2)

--Select * From Album

--INSERT INTO SONG
--(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId )
--Values ('All along the watchtower', 500, '02/12/1688', 2, 28, 23)

--Select * From Song

Select a.ArtistName, al.Title, s.Title
from song as s
	left join Album al on s.AlbumId = al.id
	left join Artist a on s.ArtistId = a.id
where s.Title = 'All along the watchtower';

Select AlbumId, count(s.Id) AS NumSongs
from Song as s
group by s.AlbumId

Select ArtistId, Count(s.Id) AS NumSongs
from Song s
group by s.ArtistId

Select GenreId, Count(s.Id) AS NumSongs
from Song as s
group by s.GenreId

Select ArtistId, count(al.label) AS NumLabels
From Album as al
group by al.ArtistId;







