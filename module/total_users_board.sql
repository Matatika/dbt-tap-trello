with all_boards as (

    select name, id from trello_boards.trello_board_table  
), 


specific_board as ( 

    select name, id from all_boards Where name = "Data-Blog"
    
 ),  

 cards as (  

select name as card_name, idBoard as  BoardID, idList as idList_card  from trello_boards.trello_cards_tbl where idBoard =  "61d9326d6997b761f1b2273f" 
),  

stage_board as (  

select name as stage_name, idBoard as Board_number, id as stage_id  from trello_boards.trello_list_tbl 

), 


daily_total as (

select  stage_board.stage_name, stage_board.Board_number, stage_board.stage_id, cards.card_name, cards.idList_card 
from stage_board, cards 
where stage_board.stage_id = cards.idList_card 
)   

select count(card_name) as trello_card from daily_total where stage_name = "Post_Suggestions"  

