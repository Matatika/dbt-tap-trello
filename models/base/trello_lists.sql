with trello_lists as (

  select * from {{ source('trello_source', 'stream_trello_lists') }}

),  

final as (

  select
    _sdc_batched_at
    , _sdc_deleted_at
    , _sdc_extracted_at
    , closed
    , id as id_list
    , id_board
    , name
  from trello_lists 

)   
   
 select * from final
