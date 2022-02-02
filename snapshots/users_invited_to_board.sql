{% snapshot invited_users_snapshot %}

{{
    config(

      target_schema='analytics',
      unique_key='user_id',
      strategy='check',
      check_cols=['user_name', 'full_name']
    )
}}

select "id" as user_id, board_id, username as user_name, full_name from {{ source('trello_data', 'users' ) }}

{% endsnapshot %}
 
