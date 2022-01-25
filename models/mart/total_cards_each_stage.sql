
   
 with  board_table as (   
    
       select board_id, "name" as board_name from {{ ref('trello_boards') }}  
       
        ),
    
  stage_table as (  
    
       select id_list as list_id, id_board, "name" as stage_name from {{ ref('trello_lists') }} 
    
      ),  
      
 card_table as (  
   
       select "id", url as card_url, id_board, id_list as idlist_card, "name" from {{ ref('trello_cards') }}
   
         ), 
         
  
  total_cards as  (
      
 select board_table.board_name, card_table.name, card_url, stage_table.stage_name
 from board_table, card_table, stage_table
  where board_table.board_id = card_table.id_board 

  and card_table.idlist_card = stage_table.list_id 
    
    ),   
    
  
  final as (  
    
  select * from total_cards
 
     )   
     
  select  board_name, count(distinct "name") as total_num_cards, stage_name from "final"
  group by stage_name, board_name
      
  
 





 
 





