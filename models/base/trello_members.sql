with trello_members as (  

  select * from {{ ref('trello_members_snapshot')}}
),

active_members as (

    select
        *
    from trello_members
    where dbt_valid_to is null 

),

deleted_members as (

    select
	    *
    from trello_members tm
    where not exists (select *
                    from  trello_members tm2
                    where tm2.id = tm.id
                    and tm2.dbt_valid_to > tm.dbt_valid_to)
    and id not in (
    select
        id 
    from active_members )
    and dbt_valid_to is not null

),

overall_members as (

    select
        *
    from active_members
    union
    select
        *
    from deleted_members

),

final as (

  select
    full_name
    , id as id_member
    , username
    , id_board
    , case WHEN overall_members.dbt_valid_to is not null then True else False end as is_deleted
  from overall_members 

)   

select * from final
