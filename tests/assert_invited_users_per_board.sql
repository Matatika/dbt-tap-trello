select
    count(user_name)
from {{ref('invited_users_snapshot ')}}
where board_id is not null
having count(user_name) = (select count(username)
                               from {{ref('trello_users')}} where board_is is not null )
                                                                                     
