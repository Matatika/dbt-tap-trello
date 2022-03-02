with trello_checklists as (  

     select * from {{ source('trello_source', 'stream_trello_checklists') }}

),

final as (

    select
        check_items
        , id as id_checklists
        , id_board
        , id_card
        , name
        , pos
    from trello_checklists

)

select * from final
