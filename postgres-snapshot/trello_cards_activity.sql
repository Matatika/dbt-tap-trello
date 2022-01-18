{% snapshot trello_cards_activity %}

  {{
        config(
          target_schema='snapshots',
          strategy='timestamp',
          unique_key='id',
          updated_at ='dateLastActivity',
          invalid_hard_deletes =True
        )
    }}


select IdBoard, name, url, id, idList, dateLastActivity from trello_cards_tbl


{% endsnapshot %}
