{{ config(materialized='table')}}

with comic as(
   select * from {{ source('raw','characters_to_comics')}}
),
columns_to_keep as(
    select 
        comicid as comic_id,
        characterid as characterid
    from comic
)
select * 
from columns_to_keep