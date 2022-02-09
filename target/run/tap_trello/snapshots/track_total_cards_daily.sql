
      update "trello_data"."analytics"."track_cards_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "track_cards_snapshot__dbt_tmp065933226491" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "trello_data"."analytics"."track_cards_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "trello_data"."analytics"."track_cards_snapshot".dbt_valid_to is null;

    insert into "trello_data"."analytics"."track_cards_snapshot" ("card_id", "recent_cards", "id_list", "date_last_activity", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."card_id",DBT_INTERNAL_SOURCE."recent_cards",DBT_INTERNAL_SOURCE."id_list",DBT_INTERNAL_SOURCE."date_last_activity",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "track_cards_snapshot__dbt_tmp065933226491" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  