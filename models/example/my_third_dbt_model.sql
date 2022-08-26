-- This refers to the table created from seeds/country_codes.csv

{{ config(materialized='table') }}
select * from {{ ref('country_codes') }}