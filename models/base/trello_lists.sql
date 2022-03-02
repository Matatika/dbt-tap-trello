with trello_lists as (

  select * from {{ source('trello_source', 'stream_trello_lists') }}

),  

final as (

  select
    closed
    , id as id_list
    , id_board
    , name
  from trello_lists 

)   
   
 select * from final
