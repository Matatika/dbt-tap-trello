-- Assert that trello_vw_active_members does not contain any deleted members

select
    distinct(id_member)
from {{ ref('trello_members') }}
where is_deleted = False
and id_member not in (select id_member
                from {{ ref('trello_vw_active_members') }})
