{{
    config(
        materialized = 'table'
    )
}}
select ticket_no, book_ref, passenger_id, passenger_name, contact_data
from {{ ref("stg_flights__tickets") }}
where passenger_id not in (SELECT passenger_id
                           FROM {{ ref("stg_dict__Homework_id_worker") }}
                          ) -- дз