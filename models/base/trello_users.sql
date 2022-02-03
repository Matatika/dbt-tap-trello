with select_source as (  
  
      select * from {{ source('trello_data', 'users') }} 
  
   ),  
   
   
 renamed as (   
 

  select board_id, full_name, "id", username from select_source
   
   )   
   
  select * from renamed
 

