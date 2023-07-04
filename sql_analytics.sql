select a.gamer_username_en, b.country_name_en, a.id_gamer
from data_exploration.dim_gamers a
left join data_exploration.dim_countries b
on a.fk_country = b.id_country
order by a.id_gamer;
