with trello_users as (  

  select * from {{ ref('trello_users_snapshot')}}
),

active_users as (

    select
        *
    from trello_users
    where dbt_valid_to is null 

),

deleted_users as (

    select
	    *
    from trello_users tu
    where not exists (select *
                    from  trello_users tu2
                    where tu2.id = tu.id
                    and tu2.dbt_valid_to > tu.dbt_valid_to)
    and id not in (
    select
        id 
    from active_users )
    and dbt_valid_to is not null

),

overall_users as (

    select
        *
    from active_users
    union
    select
        *
    from deleted_users

),

final as (

  select
    full_name
    , id as id_user
    , username
    , id_board
    , case WHEN overall_users.dbt_valid_to is not null then True else False end as is_deleted
  from overall_users 

)   

select * from final
