{{% set stage_name = " " %}}  

{{% set idBoard_value= " " %}}

with all_boards as (

    select name, id from {{ ref(trello_boards) }}  
), 


specific_board as ( 

    select name, id from all_boards Where name = {{ board_title }}
    
 ),  

 cards as (  

select name as card_name, idBoard as  BoardID, idList as idList_card  from {{ ref(trello_cards) }} where idBoard =  {{ idBoard_value }}
),  

stage_board as (  

select name as stage_name, idBoard as Board_number, id as stage_id  from {{ ref(trello_list) }}

), 


daily_total as (

select  stage_board.stage_name, stage_board.Board_number, stage_board.stage_id, cards.card_name, cards.idList_card 
from stage_board, cards 
where stage_board.stage_id = cards.idList_card 
)   

select count(card_name) as trello_card from daily_total where stage_name = {{ stage_name }} 


