
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

WITH users AS (

SELECT DISTINCT(anonymous_id) AS user_id,
   context_geolocation_location_city AS city,
   context_geolocation_location_postal AS postcode,
   context_geolocation_location_latitude AS latitude,
   context_geolocation_location_longitude AS longitude
FROM {{source('portfolio','pages')}}
)

SELECT *
FROM users

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
