{{ config(materialized='table')}}

with characters as(
    select * from {{ source('raw','characters')}}
), 
rename_columns as (
    -- make columns snake_case
    select 
        characterid as character_id,
        name as hero_name
    from characters
)
select * 
from rename_columns

