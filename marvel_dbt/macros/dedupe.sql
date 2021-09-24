{% macro dedupe(reference, key, order) %}


with _dedupe_flag as (
    select
     *,
     row_number() over (
         partition by 
         {% for uniq_col in key %}
            {{ uniq_col }}
            {%- if not loop.last %},{% endif -%}
        {% endfor %}
        
    order by 
        {% for order_col in order %}
            {{ order_col }}
            {%- if not loop.last %},{% endif -%}
        {% endfor %}
    ) as _dupe_count
    from {{ reference }}

)

select * 
from _dedupe_flag
where _dupe_count = 1

{% endmacro %}