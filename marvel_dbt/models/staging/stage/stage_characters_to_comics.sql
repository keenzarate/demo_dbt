{{ config(materialized='table')}}

with comic as(
   select * from {{ ref('base_characters_to_comics')}}
)
select * 
from comic