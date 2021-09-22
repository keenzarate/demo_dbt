{{ config(materialized='table')}}

with demo as(
   select * from {{ source('raw','character_demo')}}
),
columns_to_keep as(
    select 
        id,
        name as hero_name, 
        alignment, 
        gender,
        eyecolor, 
        race,
        haircolor,
        publisher,
        skincolor,
        height,
        weight
    from demo
)
select * 
from columns_to_keep