{{% set name = " " %}


with invited_users as (   

    select memberships as members, name as board_name from trello_boards.members_boards_tbl where name = {{ name }}

   )  


select * from invited_users 
