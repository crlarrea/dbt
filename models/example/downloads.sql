WITH downloads AS (
    SELECT anonymous_id AS user_id,
    file_text
    FROM {{source('portfolio','file_download')}}
)

SELECt * 
FROM downloads