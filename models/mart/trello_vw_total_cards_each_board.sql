with trello_cards as (

  select * from {{ ref('trello_cards') }}

),

trello_boards as (

  select * from {{ ref('trello_boards') }}

),

most_recent_card_data as (
    select
        *
    from trello_cards
    where dbt_valid_to is null 
),

final as (

  select
    count(distinct(id_card))
    , trello_boards.name
  from most_recent_card_data
  left join trello_boards on trello_boards.id_board = most_recent_card_data.id_board
  group by trello_boards.name

)

select * from final