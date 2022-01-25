with select_source as (  
  
      select * from {{ source('trello_test', 'lists') }}   
  
   ),  
   
 
 renamed_columns as (   
   
    select closed, id as id_list, idboard as id_board, "name", pos, softlimit as soft_limit, subscribed from select_source 
   
   )   
   
   
 select * from renamed_columns
