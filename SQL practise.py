creat table if not exists data_exploratin.dim_games
(
    id_game              Integer,
    game_name_en         string,
    publisher_name_en    string,
    release_date         date
)

creat table if not exists data_exploration.dim_genre
(
    id_genre        integer,
    genre_name_en   string
)

creat table if not exists data_exploration.fact_ratings
(
    fk_game         integer,
    game_name_en    string,
    fk_genre        integer,
    genre_name_en   string,
    ratings_value   float
)