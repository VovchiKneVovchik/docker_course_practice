{{
    config(
        materialized = 'table'
    )
}}
select city, region
FROM {{ ref("city_region") }}