
select
    count(card_name)
from {{ref('track_cards_snapshot')}}
having not count(card_name) = (select count(total_num_cards)
                        from {{ref('daily_total_cards_each_stage')}})
