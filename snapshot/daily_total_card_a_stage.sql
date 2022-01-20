{% snapshot daily_total_cards_a_stage %}

  {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='stage_name',
          check_cols='total_cards',
          invalid_hard_deletes=True
        )
    }}


select total_cards, stage_name from {{ ref('daily_total_card_a_stage') }} 


{% endsnapshot %}

                         







