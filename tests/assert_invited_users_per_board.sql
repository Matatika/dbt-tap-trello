-- Assert that the total number of cards in trello_vw_cards_per_board equals the amount of cards in trello_cards.

select
    count(username)
from {{ref('invited_users_snapshot')}}
where boardid is not null
having not count(username) = (select count(invited_users)
	                       from {{ref('invited_users_per_board.sql')}})
