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

#practising the sql with already exsiting tables

select
date(a.order_date) sales_date,
a.currency,
b.spryker_order_state,
#a.exchange_rate,
sum(c.shipping_fee)          gross_shipping_cost,
SUM(a.item_gross_price)/100  gross_revenue,
a.city_name_en
from analytics.fact_items a
left join gcp_gs.map_order_item_status b
on a.fk_sales_order_item_state = CAST(b.fk_sales_order_item_state as integer)
   and b.business_type='b2c'
left join analytics.fact_orders c
on a.fk_sales_order = c.id_sales_order
where a.order_date >= '2023-07-03'
and cast(b.reporting_order_item_state as integer) >= 2
GROUP BY 1,2,3,6;



select
date(a.order_date) sales_date,
a.currency,
b.spryker_order_state,
#a.exchange_rate,
sum(c.shipping_fee)          gross_shipping_cost,
SUM(a.item_gross_price)/100  gross_revenue,
a.city_name_en
from analytics.fact_items a
left join gcp_gs.map_order_item_status b
on a.fk_sales_order_item_state = CAST(b.fk_sales_order_item_state as integer)
   and b.business_type='b2c'
left join analytics.fact_orders c
on a.fk_sales_order = c.id_sales_order
where a.order_date >= '2023-07-03'
and cast(b.reporting_order_item_state as integer) >= 2
GROUP BY 1,2,3,6;

#same query as above but without the dates or order status
select
#a.exchange_rate,
sum(c.shipping_fee)          gross_shipping_cost,
SUM(a.item_gross_price)/100  gross_revenue,
a.city_name_en
from analytics.fact_items a
left join gcp_gs.map_order_item_status b
on a.fk_sales_order_item_state = CAST(b.fk_sales_order_item_state as integer)
   and b.business_type='b2c'
left join analytics.fact_orders c
on a.fk_sales_order = c.id_sales_order
where a.order_date >= '2023-07-03'
and cast(b.reporting_order_item_state as integer) >= 2
group by 3

select
a.order_date_nk sales_date,
#a.exchange_rate,
sum(c.shipping_fee)/100          gross_shipping_cost,
SUM(a.item_gross_price)/100  gross_revenue,
count(distinct a.fk_sales_order) gross_orders_num,
a.city_name_en
from analytics.fact_items a
left join gcp_gs.map_order_item_status b
on a.fk_sales_order_item_state = CAST(b.fk_sales_order_item_state as integer)
   and b.business_type='b2c'
left join analytics.fact_orders c
on a.fk_sales_order = c.id_sales_order
where a.order_date >= '2023-07-03'
and cast(b.reporting_order_item_state as integer) >= 2
#and c.shipping_fee != 0
group by 1,5