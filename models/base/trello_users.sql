with select_source as (  
  
      select * from {{ source('trello_test', 'users') }} 
  
   ),  
   
   
 renamed_columns as (   
   
     select boardid as board_id, fullname as full_name, "id" as user_id, username as user_name from select_source
   
   )   
   
  select * from renamed_columns 
 
