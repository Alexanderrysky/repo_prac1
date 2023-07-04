insert data_exploration.dim_games (
       id_game,
       game_name_en,
       publisher_name_en,
       release_date
)
values (1,"Metal gear solid V","kojima productions","2015-09-01"),
       (2,"Infamous second son","sucker punch productions",'2014-03-21'),
       (3,"Legend of zelda breath of the wild","Nintendo",'2017-03-03'),
       (4,"Legend of zelda tears of the kingdom",'Nintendo','2023-05-12'),
       (5,'Tom clancys rainbow 6 siege','ubisoft','2015-12-01'),
       (6,'Red dead redemption 2','Rockstar games','2018-10-26'),
       (7,'Death Stranding','Hideo Kojima','2019-11-08');

insert data_exploration.dim_genres(
       id_genre,
       genre_name_en
)
values(1,"action adventure"),
      (2,'stealth'),
      (3,'stranding'),
      (4,'action'),
      (5,"adventure"),
      (6,'shooter'),
      (7,'adventure'),
      (8,'simulator'),
      (9,'role playing'),
      (10,'sports'),
      (11,'role playing'),
      (12,'racing'),
      (13,'rogue-like'),
      (14,'strategy'),
      (15,'strand');

insert data_exploration.fact_gamers_ratings(
       fk_game,
       fk_genre,
       fk_gamer,
       score_value,
       score_date,
       score_validity_date
)
values(1,2,1,'9','2020-12-2','2030-12-2')
      (2,1,2,'8','2021-12-2','2029-12-2'),
      (3,7,3,'9','2023-12-2','2032-12-2'),
      (4,7,4,'10','2000-12-2','2037-12-2'),
      (5,6,5,'7','2015-12-2','2030-12-2'),
      (6,1,6,'10','2018-12-2','2033-12-2'),
      (7,15,7,'8','2020-12-2','2034-12-2');

insert data_exploration.dim_gamers(
       id_gamer,
       gamer_username_en,
       fk_country
)
values(1,'smasholicous',1),
      (2,'anarook',2)
      (3,'sachin saucy',3);

insert data_exploration.dim_countries(
       id_country,
       country_name_en
)
values(1,'Russia'),
      (2,'america');