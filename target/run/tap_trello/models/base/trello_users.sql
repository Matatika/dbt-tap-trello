

  create  table "trello_data"."analytics"."trello_users__dbt_tmp"
  as (
    with select_source as (  
  
      select * from "trello_data"."analytics"."users" 
  
   ),  
   
   
 renamed as (   
 

  select board_id, full_name, "id", username from select_source
   
   )   
   
  select * from renamed
  );