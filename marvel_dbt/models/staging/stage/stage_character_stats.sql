{{ config(materialized='table')}}

with stats as(
   select * from {{ ref('base_character_stats')}}
)
-- nothing to clean; data looks pretty good 
select * 
from stats