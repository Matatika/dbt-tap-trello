
      update "trello_data"."analytics"."invited_users_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "invited_users_snapshot__dbt_tmp065933220659" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "trello_data"."analytics"."invited_users_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "trello_data"."analytics"."invited_users_snapshot".dbt_valid_to is null;

    insert into "trello_data"."analytics"."invited_users_snapshot" ("user_id", "board_id", "user_name", "full_name", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."user_id",DBT_INTERNAL_SOURCE."board_id",DBT_INTERNAL_SOURCE."user_name",DBT_INTERNAL_SOURCE."full_name",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "invited_users_snapshot__dbt_tmp065933220659" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  