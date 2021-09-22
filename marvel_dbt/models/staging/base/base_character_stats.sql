{{ config(materialized='table')}}

with stats as(
   select * from {{ source('raw','character_stats')}}
),
columns_to_keep as(
    select 
        name as hero_name,
        alignment,
        intelligence, 
        strength, 
        speed, 
        durability,
        power, 
        combat,
        total
    from stats
)
select * 
from columns_to_keep