ALTER TABLE data_exploration.dim_games
ADD COLUMN 'maximum_score';

UPDATE data_exploration.fact_ratings
SET 'score' = 10;

DROP table data_exploration.fact_ratings;
