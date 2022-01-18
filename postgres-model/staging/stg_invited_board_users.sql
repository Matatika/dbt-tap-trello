with invited_users as (

    select memberships as members, name as board_name from members_boards_tbl where name = "Data-Blog"

   )


select * from invited_users

