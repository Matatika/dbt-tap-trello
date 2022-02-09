

  create  table "trello_data"."analytics"."daily_total_cards_each_stage__dbt_tmp"
  as (
    with trello_boards as (

select "id" as board_id, "name" as board_name from "trello_data"."analytics"."trello_boards"

      ),


 trello_lists as (

   select id_list, id_board, "name" as stage_name from "trello_data"."analytics"."trello_lists"

   ) ,


 trello_cards as (

     select id_list, recent_cards from "trello_data"."analytics"."track_cards_snapshot"

   ),


  final as (

 select trello_boards.board_name, trello_lists.stage_name, trello_cards.recent_cards
 from trello_boards, trello_lists, trello_cards
 where trello_boards.board_id = trello_lists.id_board
 and trello_cards.id_list = trello_lists.id_list
   )

 select board_name, stage_name, count(recent_cards) as num_of_cards from final
 group by board_name, stage_name
  );