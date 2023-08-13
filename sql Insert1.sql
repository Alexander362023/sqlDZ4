INSERT INTO Genre(Name) values('Кантри'), ('Блюз'), ('Фолк');

insert INTO Performers(Name) values('Шевчук'), ('Шнур Шнурович'), ('Лепс'), ('Кипелов');

INSERT into Performers_and_Genre (Genre, Performers) values (1, 1), (2, 2), (3, 3), (3, 4); 

insert into Album(Name, release) values ('Rumours', 2020), ('Saturday Night Fever', 2020), ('Millennium', 2015);

insert  into Performers_and_Album (Performers, Album) values (1, 1), (2, 2), (3, 3), (4, 3);

insert into Tracks(Name, Duration, Exit) values ('мой', '00:04:00', 2019), ('Б', '00:02:30', 2022), ('С', '00:09:00', 2018), ('В', '00:08:00', 2020), ('Т', '00:06:00', 2020), ('Н', '00:02:58', 2018);

insert into Collection(Name, release) values ('Про любовь', 2019), ('День рождения', 2010), ('Свадебные', 2020), ('Медляки', 2018);

insert into Collection_and_Tracks (Collection, Tracks) values (1, 1), (2, 2), (3, 3), (4, 4), (4, 5), (4, 6);

