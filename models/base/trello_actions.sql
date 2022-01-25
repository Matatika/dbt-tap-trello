with select_source as (  
  
      select * from {{ source('trello_test', 'actions') }}   
  
  ),
  
  
 renamed_columns as (   
   
   select data as actions_data, date as action_date, id as action_id, idmembercreator as id_member_creator, limits, member as member_creator, type as action_type
   from select_source
   )   
   
 
 select * from renamed_columns
