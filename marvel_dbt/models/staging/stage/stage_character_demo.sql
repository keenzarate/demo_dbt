{{ config(materialized='table')}}

with demo as(
   select * from {{ ref('base_character_demo')}}
)
select * 
from demo