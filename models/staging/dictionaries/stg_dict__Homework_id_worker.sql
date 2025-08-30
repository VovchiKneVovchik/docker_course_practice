{{
    config(
        materialized = 'table'
    )
}}
select passenger_id
FROM {{ ref("Homework_id_worker") }}