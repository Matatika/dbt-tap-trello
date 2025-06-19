{% snapshot trello_members_snapshot %}

{{
    config(
      target_schema=var('schema'),
      unique_key='concat(id, id_board)',
      strategy='check',
      check_cols=['id', 'id_board', 'full_name', 'username'],
      invalidate_hard_deletes=True,
    )
}}

with trello_members as (

    select * from {{ source ('trello_source', 'stream_trello_members') }}

),

trello_members_snapshot as (

    select * from trello_members

)

select * from trello_members_snapshot

{% endsnapshot %}