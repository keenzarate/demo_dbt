{{ config(materialized='table')}}

with demo as (
    select * from {{ ref('stage_character_demo')}}
),
demo_set as (
    select 
        {{ dbt_utils.surrogate_key( ['hero_name'] ) }} as k_hero,
        alignment,
        gender, 
        eyecolor,
        race,
        haircolor,
        skincolor,
        height,
        weight
    from demo
)
select * 
from demo_set