with select_source as (  
  
      select * from "trello_data"."analytics"."lists"   
  
   ),  
   
 
 renamed_columns as (   
   
    select closed, id as id_list, id_board, "name", pos, soft_limit, subscribed from select_source 
   
   )   
   
   
 select * from renamed_columns