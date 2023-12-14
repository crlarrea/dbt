{% snapshot customer_history%}
{{
    config(
        target_schema= 'users',
        unique_key='user_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT * FROM {{source('schema','table')}}
{% endsnapshot%}