with trello_boards as (

       select "id" as board_id, "name" as board_name from "trello_data"."analytics"."trello_boards"

        ),

  trello_users as (

  select board_id, full_name,  user_name from "trello_data"."analytics"."invited_users_snapshot"

    ),


    final_users as (

    SELECT trello_boards.board_name, trello_users.user_name
    FROM trello_users
    INNER JOIN trello_boards ON trello_boards.board_id = trello_users.board_id
    group by trello_boards.board_name, trello_users.user_name

      )


select board_name, count(user_name) as num_of_invited_users from final_users
group by board_name