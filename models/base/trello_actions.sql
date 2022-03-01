with trello_actions as (

    select * from {{ source('trello_source', 'stream_trello_actions') }}
    
),

final as (

    select
        _sdc_batched_at
        , _sdc_deleted_at
        , _sdc_extracted_at
        , app_creator
        , data__board__id as data_board_id
        , data__board__name as data_board_name
        , data__board__short_link as data_board_short_link
        , data__card__id as data_card_id
        , data__card__name as data_card_name
        , data__card__desc as data_card_desc
        , data__card__id_list as data_card_is_list
        , data__card__id_short as data_card_id_short
        , data__card__short_link as data_card_short_link
        , data__check_item__id as data_check_item_id
        , data__check_item__name as data_check_item_name
        , data__check_item__state as data_check_item_state
        , data__checklist__id as data_checklist_id
        , data__checklist__name as data_checklist_name
        , data__list__id as data_list_id
        , data__list__name as data_list_name
        , data__list_after__id as data_list_after_id
        , data__list_after__name as data_list_after_name
        , data__list_before__id as data_list_before_id
        , data__list_before__name as data_list_before_name
        , data__old__desc as data_old_desc
        , data__old__id_list as data_old_id_list
        , data__old__name as data_old_name
        , date
        , id as id_action
        , id_member_creator
        , member_creator__activity_blocked as member_creator_activity_blocked
        , member_creator__id as member_creator_id
        , member_creator__username as member_creator_username
        , member_creator__full_name as member_creator_full_name
        , type
    from trello_actions

)

select * from final
