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

create table if not exists data_exploration.fact_gamers_ratings
(
    fk_game                 int,
    fk_genre                int,
    fk_gamer                int,
    score_value             float64,
    score_date              date,
    score_validity_date     date
);

create table if not exists data_exploration.dim_gamers
(
   id_gamer            int,
   gamer_username_en   string,
   fk_country          int
);

create table if not exists data_exploration.dim_countries
(
   id_country       int,
   country_name_en  string,
);