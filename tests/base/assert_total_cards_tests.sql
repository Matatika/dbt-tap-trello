select
    count(total_cards)
from {{ref('total_cards_each_stage')}}
where stage_name not null
having not count(*) = (select sum(total_cards)
                        from {{ref('total_cards_each_stage')}})
