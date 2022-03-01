-- Assert that trello_vw_active_users does not contain any deleted users

select
    distinct(id_user)
from {{ ref('trello_users') }}
where is_deleted = False
and id_user not in (select id_user
                from {{ ref('trello_vw_active_users') }})
