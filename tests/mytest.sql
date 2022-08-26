select 
    country_code
from {{ ref('my_third_dbt_model') }}
where country_name = 'nowhere'