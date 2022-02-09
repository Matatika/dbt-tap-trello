select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select
    count(recent_cards)
from "trello_data"."analytics"."track_cards_snapshot"
where card_id is not null
 having count(recent_cards)  = (select count(name)
                        from "trello_data"."analytics"."trello_cards" where id is not null)
      
    ) dbt_internal_test