{% snapshot track_cards_snapshot %}

{{
    config(

      target_schema='analytics',
      unique_key='card_id',
      strategy='check',
      check_cols=['recent_cards', 'date_last_activity'],
    )
}}



  select "id" as card_id, name as recent_cards, id_list, date_last_activity from {{ source('trello_data', 'cards') }}


{% endsnapshot %}
                                                                                                                                                                                                                                                                                                                                                                                                 
