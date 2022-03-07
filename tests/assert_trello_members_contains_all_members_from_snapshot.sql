-- Assert that trello_members contains all members from the snapshot

select
    distinct(id_member)
from {{ ref('trello_members') }}
where id_member not in (select id_member
                from {{ ref('trello_members_snapshot') }})
