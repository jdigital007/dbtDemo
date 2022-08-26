{% snapshot my_snapshot %}
   {{
        config(
          target_schema='DBT',
          strategy='check',
          unique_key='COUNTRY_CODE',
          check_cols=['COUNTRY_NAME'],
        )
    }}

SELECT * from {{ ref('my_third_dbt_model') }}
{% endsnapshot %}