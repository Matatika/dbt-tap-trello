
{{ config(materialized='view') }}


{% set t_board = " " %}
                   
{% set id_Board = " " %}

{% set stage_name = [" ", " ", " ", " "]

with all_boards as (   
    SELECT name, id from {{ ref('trello_boards') }}  
), 


specific_board as ( 

    select name, id from all_boards Where name = {{ t_boards }}
    
 ),  

 cards as (  

SELECT name AS card_name, idBoard AS  BoardID, idList as ListID  FROM {{ ref('trello_cards') }} WHERE idBoard = {{ id_Board }} 
),  

stage_board as (  

SELECT name AS stage_name, idBoard as Board_number, id as stage_id  FROM {{ ref('trello_list') }}

),

 num_cards_stage as (

select cards.card_name, cards.ListID, stage_board.stage_name

from cards 

inner join stage_board 

on cards.ListID = stage_board.stage_id

 ),

 Post_Completed_Cards as (

SELECT count(card_name) as Post_Completed_Cards 

FROM num_cards_stage 

WHERE stage_name = {{ stage_name[] }}
 ),

Post_Suggestions_Cards as (

SELECT count(card_name) as Post_Suggestions_Cards 

FROM num_cards_stage 

WHERE stage_name = {{ stage_name[] }}

),

Post_Draft as (  

SELECT count(card_name) as Post_Draft_Cards 

FROM num_cards_stage 

WHERE stage_name = {{ stage_name[] }}

 ),

Post_Introduction as ( 

SELECT count(card_name) as Post_Introduction_Cards 

FROM num_cards_stage 

WHERE stage_name = {{ stage_name[] }}

 ) 

