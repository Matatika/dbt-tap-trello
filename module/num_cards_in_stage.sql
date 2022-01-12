
{{ config(materialized='table') }}


{% set t_board = " " %}
                   
{% set id_Board = " " %}

{% set stage_name = [" ", " ", " ", " "]

with all_boards as (   
    select name, id from {{ ref('trello_boards') }}  
), 


specific_board as ( 

    select name, id from all_boards Where name = {{ t_boards }}
    
 ),  

 cards as (  

select name as card_name, idBoard as  BoardID, idList_card as ListID  from {{ ref('trello_cards') }} where idBoard = {{ id_Board }} 
),  

stage_board as (  

select name as stage_name, idBoard as Board_number, id as stage_id  from {{ ref('trello_list') }}

),

 num_cards_stage as (

select cards.card_name, cards.ListID, stage_board.stage_name

from cards 

inner join stage_board 

on cards.ListID = stage_board.stage_id

 ),

 Post_Completed_Cards as (

select count(card_name) as Post_Completed_Cards 

from num_cards_stage 

where stage_name = {{ stage_name[] }}
 ),

Post_Suggestions_Cards as (

select count(card_name) as Post_Suggestions_Cards 

from num_cards_stage 

where stage_name = {{ stage_name[] }}

),

Post_Draft as (  

select count(card_name) as Post_Draft_Cards 

from num_cards_stage 

where stage_name = {{ stage_name[] }}

 ),

Post_Introduction as ( 

select count(card_name) as Post_Introduction_Cards 

from num_cards_stage 

where stage_name = {{ stage_name[] }}

 ) 

