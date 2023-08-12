----Вторая задача

select Name, Duration from Tracks where Duration = (SELECT MAX(Duration) from Tracks);
select Name from Tracks where Duration >= '00:03:30'; 
select Name from Collection where Exit >= '2018-01-01' and Exit <= '2020-12-31'; 
select Name from Performers WHERE Name NOT LIKE '% %';     


SELECT Name FROM Tracks 
where Name ILIKE 'мой %' 
OR Name ILIKE '% мой' 
OR Name ILIKE '% мой %' 
OR Name ILIKE 'мой' 
OR Name ilike 'my %'
OR Name ilike '% my'
OR Name ilike '% my %'
OR Name ilike 'my';



----Третья задача----

select g.Name, SUM(i.Performers) from Genre g LEFT join Performers_and_Genre i ON g.Genre_id = i.Genre GROUP BY g.Genre_id; 

SELECT COUNT(Tracks_id) FROM Tracks t 
JOIN Album a ON t.Album = a.Album_id  
WHERE release BETWEEN 2019 and 2020; 

SELECT a.Name, AVG(Duration) 
FROM Tracks t 
JOIN Album a ON a.Album_id = t.Album 
GROUP BY Album_id; 

select i.Name from Performers i where Name not in
	(select i.Name from Performers i
	join Performers_and_Album pa ON pa.Performers = i.Performers_id
	join Album a on a.Album_id = pa.Album
	where release = 2020); 

SELECT DISTINCT s.Name as n 
FROM Collection s 
JOIN Collection_and_Tracks st ON s.Collection_id = st.Collection 
JOIN Tracks t  ON st.Tracks = t.Tracks_id 
JOIN Album a ON a.Album_id = t.Album 
JOIN Performers_and_Album ia ON ia.Album = a.Album_id 
JOIN Performers i ON i.Performers_id =  ia.Performers 
WHERE i.Name = 'Лепс'; 
