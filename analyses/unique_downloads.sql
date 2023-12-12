SELECT user_id, city, file_text
FROM {{ref("target_users")}}
GROUP BY 1,2,3