create table if not exists Genre(
	Genre_id SERIAL PRIMARY key,
	Name VARCHAR(20) UNIQUE NOT null	
);

	INSERT INTO Genre(Name) values('Кантри'), ('Блюз'), ('Фолк');
	  

create table if not exists Performers(
	Performers_id SERIAL PRIMARY key,	
    Name varchar(20) NOT null	
);

	ALTER table Performers alter column Name type varchar(100);	
    insert INTO Performers(Name) values('Шевчук'), ('Шнур Шнурович'), ('Лепс'), ('Кипелов'); 

create table if not exists Performers_and_Genre(
	Genre integer references Genre(Genre_id),
	Performers integer references Performers(Performers_id),
	constraint pk3 primary key(Genre, Performers)
);

	INSERT into Performers_and_Genre (Genre, Performers) values ('Кантри', 'Шевчук'), ('Блюз', 'Шнур Шнурович'), ('Фолк', 'Лепс'), ('Кантри', 'Шевчук'); 

create table if not exists Album(
	Album_id SERIAL primary key,
	Name VARCHAR(50) UNIQUE NOT null,	
	release integer check(release>1980)
);
	insert into Album(Name, release) values ('Rumours', 2020), ('Saturday Night Fever', 2020), ('Millennium', 2015);
	    


create table if not exists Performers_and_Album(
	Album integer references Album(Album_id),
	Performers integer references Performers(Performers_id),
	constraint pk4 primary key(Album, Performers)
);

	insert  into Performers_and_Album (Performers, Album) values ('Шевчук', 'Rumours'), ('Шнур Шнурович', 'Saturday Night Fever'), ('Лепс', 'Millennium'), ('Кипелов','Millennium' );

create table if not exists Tracks(
	Tracks_id SERIAL primary key,
	Album integer references Album(Album_id), 
	Name VARCHAR(50) UNIQUE NOT null,
	Duration time check(Duration>'00:02:00') NOT null	
);	

	ALTER table Tracks add Exit integer NOT null;
	insert into Tracks(Name, Duration, Exit) values ('мой', '00:04:00', 2019), ('Б', '00:02:30', 2022), ('С', '00:09:00', 2018), ('В', '00:08:00', 2020), ('Т', '00:06:00', 2020), ('Н', '00:02:58', 2018);
    
    
create table if not exists Collection(	
	Collection_id SERIAL primary key,
	Name VARCHAR(50) UNIQUE NOT null,
	release integer check(release>1980)
	
);

	insert into Collection(Name, release) values ('Про любовь', 2019), ('День рождения', 2010), ('Свадебные', 2020), ('Медляки', 2018);


create table if not exists Collection_and_Tracks(
	Collection integer references Collection(Collection_id),
	Tracks integer references Tracks(Tracks_id),
	constraint pk5 primary key(Collection, Tracks)
);

	insert into Collection_and_Tracks (Collection, Tracks) values ('Про любовь', 'мой'), ('День рождения', ('Б', 'C')), ('Свадебные', 'В'), ('Медляки', ('Т', 'Н'));