create table if not exists data_exploration.dim_games
(
    id_game              int,
    game_name_en         string,
    publisher_name_en    string,
    release_date         date
);

create table if not exists data_exploration.dim_genres
(
    id_genre        int,
    genre_name_en   string
);

create table if not exists data_exploration.fact_ratings
(
    fk_game                int,
    fk_genre               int,
    ratings_value          float64,
    rating_validity_date   date,
    audience_ratings       float64,
    audience_validity_date float64,
);