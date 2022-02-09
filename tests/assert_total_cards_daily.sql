
select
    count(recent_cards)
from {{ref('track_cards_snapshot')}}
where card_id is not null
 having count(recent_cards)  = (select count(name)
                        from {{ref('trello_cards')}} where id is not null)

