with trello_members as (

  select * from {{ ref('trello_members') }}

),

active_users as (

  select
    id_member
    , username
    , full_name
  from trello_members
  where is_deleted = False
  group by id_member, username, full_name

)

select * from active_users
