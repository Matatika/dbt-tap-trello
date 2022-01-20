with invited_users as (

    select memberships as members, name as board_name from {{ ref('trello_boards_members') }}  

   )


select * from invited_users 
