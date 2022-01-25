{% snapshot track_cards_snapshot %}

{{
    config(
      
      target_schema='analytics',
      unique_key='card_name',
      strategy='check',
      check_cols=['card_name', 'url'],
    )
}}  



select "name" as card_name, url, idboard as id_board, idlist as id_list from {{ source('trello_test', 'cards') }}


{% endsnapshot %}
