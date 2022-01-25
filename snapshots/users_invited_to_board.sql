{% snapshot invited_users_snapshot %}

{{
    config(

      target_schema='analytics',
      unique_key='boardid',
      strategy='check',
      check_cols=['username', 'boardid']
    )
}}

select boardid, username, fullname from {{ source('trello_test', 'users' ) }}

{% endsnapshot %}
