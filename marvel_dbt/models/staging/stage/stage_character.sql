{{ config(materialized='table')}}

with characters as(
    select * from {{ ref('base_character')}}
)
select * 
from characters

