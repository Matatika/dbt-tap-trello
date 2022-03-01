with trello_users as (

  select * from {{ ref('trello_users') }}

),

active_users as (

  select
    id_user
    , username
    , full_name
  from trello_users
  where is_deleted = False
  group by id_user, username, full_name

)

select * from active_users
