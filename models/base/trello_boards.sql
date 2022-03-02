with trello_boards as  (

   select * from {{ source('trello_source', 'stream_trello_boards') }}

),

final as (

   select
      closed
      , date_closed
      , date_last_activity
      , date_last_view
      , "desc"
      , desc_data
      , enterprise_owned
      , id_enterprise
      , id as id_board
      , id_member_creator
      , id_organization
      , ix_update
      , name
      , power_ups
      , premium_features
      , short_link
      , short_url
   from trello_boards

)

select * from final
