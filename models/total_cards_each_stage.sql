with all_boards as (

    select name as board_name, id as board_id  from {{ ref('trello_board') }}
),


specific_board as (

    select board_name, board_id from all_boards 

 ),

 cards as (

select name as card_name, idBoard as  BoardID, idList as idList_card  from {{ ref('trello_cards') }}
),

stage_board as (

select name as stage_name, idBoard as Board_number, id as stage_id  from {{ ref('trello_lists') }}

),


total_cards_stage as (

select  stage_board.stage_name, stage_board.Board_number, stage_board.stage_id, cards.card_name, cards.idList_card
from stage_board, cards
where stage_board.stage_id = cards.idList_card
)

select count(card_name) as total_cards, stage_name from total_cards_stage group by stage_name
