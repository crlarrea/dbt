SELECT  u.user_id, 
        u.city,
        pl.predicted_location,
        u.postcode,
        u.latitude,
        u.longitude,
        dl.file_text
FROM {{ref("users")}} u
JOIN {{ref("downloads")}} dl
ON u.user_id = dl.user_id
JOIN {{ref("predicted_location")}} pl
ON u.user_id = pl.user_id