with select_source as (

      select * from {{ source('trello_data', 'actions') }}

  ),


 renamed as (

         select data__board__id as data_board_id, data__board__name as data_board_name, data__board__prefs__background as data_board_pref_background, data__board__short_link as data_board_short_link, data__card__closed as data_card_closed, data__card__desc as data_card_desc,
         data__card__id as data_card_id, data__card__id_list as data_card_id_list, data__card__id_members as data_card_id_members, data__card__id_short as data_card_id_short, data__card__name as data_card_name, data__card__pos as data_card_pos, data__card__short_link as data_card_short_link,
         data__deactivated as data_deactivated, data__id_member as data_id_member, data__id_member_added as data_id_member_added,  data__id_member_inviter as data_id_member_inviter, data__list__closed as data_list_closed, data__list__id as data_list_id, data__list__name as data_list_name,
         data__list__pos as data_list_pos, data__list_after__id as data_list_after_id, data__list_after__name as data_list_after_name, data__list_before__id as data_list_before_id, data__list_before__name as data_list_before_name, data__member__id as data_member_id, data__member__name as data_member_name,
         data__member_type as data_member_type, data__method as data_method, data__old__closed as data_old_closed, data__old__desc as data_old_desc, data__old__id_list as data_old_id_list, data__old__id_members as data_old_id_members, data__old__name as data_old_name, data__old__pos,
         data__old__prefs__background as data_old_pref_background, data__organization__id as data_org_id, data__organization__name as data_org_name, data__text as data_text, date as action_date, id as action_id, id_member_creator,
         limits__reactions__per_action__disable_at as limit_reaction_action_disable, limits__reactions__per_action__status as limit_reaction_action_status, limits__reactions__per_action__warn_at as limit_reaction_action_warn, limits__reactions__unique_per_action__disable_at as limit_reaction_unique_action_disable,
         limits__reactions__unique_per_action__status as limit_reaction_unique_action_status, limits__reactions__unique_per_action__warn_at as limit_reaction_unique_action_warn, member__activity_blocked as member_activity_blocked, member__avatar_hash as member_avatar_hash, member__full_name as member_full_name,
         member__id as member_id, member__id_member_referrer as member_id_member_referrer, member__initials as member_initials, member__non_public_available as member_non_public_available, member__username as member_username, member_creator__activity_blocked as member_creator_activity_blocked,
         member_creator__avatar_hash as member_creator_avatar_hash, member_creator__full_name as member_creator_full_name, member_creator__id as member_creator_id, member_creator__id_member_referrer as member_creator_id_member_referrer, member_creator__initials as member_creator_initials,
         member_creator__non_public_available as member_creator_non_public_available, member_creator__username as member_creator_username from select_source

),


final as (

        select * from renamed

)

select * from final
~                                                         
