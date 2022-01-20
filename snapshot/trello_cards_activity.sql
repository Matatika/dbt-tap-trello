{% snapshot daily_total_cards_per_stage %}

  {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='stage_name',
          check_cols='total_cards',
          invalid_hard_deletes=True
        )
    }}


select total_cards, stage_name from {{ ref('total_cards_each_stage') }} 


{% endsnapshot %}

                         







