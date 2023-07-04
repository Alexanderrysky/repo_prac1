select a.gamer_username_en, b.country_name_en, a.id_gamer
from data_exploration.dim_gamers a
left join data_exploration.dim_countries b
on a.fk_country = b.id_country
order by a.id_gamer;


select a.fk_game,
       a.fk_genre,
       a.fk_gamer,
       b.gamer_username_en,
       c.game_name_en,
       d.genre_name_en,
       a.score_value/c.maximum_score gamers_rating
from data_exploration.fact_gamers_scores a
left join data_exploration.dim_gamers b
on b.id_gamer = a.fk_gamer
left join data_exploration.dim_games c
on c.id_game = a.fk_game
left join data_exploration.dim_genres d
on d.id_genre = a.fk_genre;

