{% snapshot trello_cards_snapshot %}

{{
    config(
      target_schema=var('schema'),
      unique_key='id',
      strategy='timestamp',
      updated_at='date_last_activity'
    )
}}

with trello_cards as (

    select * from {{ source ('trello_source', 'stream_trello_cards') }}

),

trello_cards_snapshot as (

    select * from trello_cards

)

select * from trello_cards_snapshot

{% endsnapshot %}