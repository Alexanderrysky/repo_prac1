ALTER TABLE data_exploration.dim_games
ADD COLUMN maximum_score;

UPDATE data_exploration.fact_ratings
SET maximum_score = 10
WHERE 1=1;

DROP table data_exploration.dim_games;
