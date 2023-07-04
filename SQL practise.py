creat table if not exists data_exploratin.dim_games
(
    id_game              int,
    game_name_en         string,
    publisher_name_en    string,
    release_date         date
)

creat table if not exists data_exploration.dim_genres
(
    id_genre        integer,
    genre_name_en   string
)

creat table if not exists data_exploration.fact_ratings
(
    fk_game                int,
    fk_genre               int,
    ratings_value          float,
    rating_validity_date   date,
    audience_ratings       float,
    audience_validity_date float,
)