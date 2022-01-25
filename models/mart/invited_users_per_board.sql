 
with board_table as (

       select board_id, name as board_name from {{ ref('trello_boards') }} 

        ),

  user_table as (

  select board_id, full_name, user_name from {{ ref('trello_users') }} 

    ), 
    
    
    final_users as (  
      
    SELECT board_table.board_name, user_table.board_id, user_table.full_name, user_table.user_name
    FROM user_table
    INNER JOIN board_table ON board_table.board_id = user_table.board_id
    ORDER BY board_table.board_name 
      
      )   
      
   select count(user_name) as invited_users, board_name from final_users 
   group by board_name 


 
 





 
 



