{{ dbt_utils.deduplicate(
    relation=source('portfolio', 'pages'),
    partition_by='anonymous_id'
   )
}}