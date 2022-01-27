

select
    count(username)
from {{ref('invited_users_snapshot')}}
where boardid is not null
having not count(username) = (select count(invited_users)
	                       from {{ref('invited_users_per_board.sql')}})
