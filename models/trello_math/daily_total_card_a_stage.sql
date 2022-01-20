with all_boards as (

    select name as board_name, id as board_id  from {{ ref('trello_boards') }}
),


specific_board as (

    select board_name, board_id from all_boards 

 ),

 cards as (

select name as card_name, id_board as  BoardID, id_list as id_list_card  from {{ ref('trello_cards') }}
),

stage_board as (

select name as stage_name, idBoard as List_idBoard, id as stage_id  from {{ ref('trello_lists') }}

),


daily_total as (

select  stage_board.stage_name, stage_board.Board_number, stage_board.stage_id, cards.card_name, cards.idList_card
from stage_board, cards
where stage_board.stage_id = cards.idList_card
)

select count(card_name) as total_cards, stage_name from daily_total group by stage_name
