{% snapshot trello_users_snapshot %}

{{
    config(
      target_schema=var('schema'),
      unique_key='id',
      strategy='check',
      check_cols=['id', 'id_board', 'full_name', 'username'],
      invalidate_hard_deletes=True,
    )
}}

with trello_users as (

    select * from {{ source ('trello_source', 'stream_trello_users') }}

),

trello_users_snapshot as (

    select * from trello_users

)

select * from trello_users_snapshot

{% endsnapshot %}