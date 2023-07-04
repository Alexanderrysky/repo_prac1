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

insert data_exploration.fact_ratings(
       fk_game,
       fk_genre,
       ratings_values,
       rating_validity_date,
       audience_ratings,
       audience_validity_date
)
values(1,2,'9/10','2030-12-2','10/10','2025-01-8'),
      (2,1,'8/10','2029-12-2','9/10','2024-07-28'),
      (3,7,'9/10','2032-12-2','10,10','2027-07-14'),
      (4,7,'10/10','2037-12-2','10/10','2032-05-17'),
      (5,6,'7/10','2030-12-2','9/10','2025-03-21'),
      (6,1,'10/10','2033-12-2','10/10','2028-08-2'),
      (7,15,'8/10','2034-12-2','10/10','2029-06-5');