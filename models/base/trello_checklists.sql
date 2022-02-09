with select_source as (  
  
     select * from {{ source('trello_data', 'checklists') }}   
  
  ),    
  
 
 renamed as (   
   
     select badges__attachments as badge__attachment, badges__attachments_by_type__trello__board as badge_attachment_by_type_trello_board, badges__attachments_by_type__trello__card as badge_attachment_by_trello_card,
 badges__check_items as badges_check_items, badges__check_items_checked as badges_check_items_checked, badges__check_items_earliest_due as badges__check_itemss_earliest_due, 
 badges__comments as badges_comments, badges__description as badges_description, badges__due as badges_due, badges__due_complete as badges_due_complete,
 badges__fogbugz as badges_fogbugz, badges__location as badges_location, badges__subscribed as badges_subscribed, badges__viewing_member_voted as badges_viewing_member_voted,
 badges__votes as badges_votes, check_item_states, check_items, closed, cover__brightness as cover_brightness, cover__color as cover_color,
cover__id_attachment as cover_id_attachment, cover__id_uploaded_background as cover_id_uploaded_background, cover__size as cover_size,
creation_method, data__board__id as data_board_id, data__board__name as data_board_name, data__board__prefs__permission_level as data_board_prefs_permission_level,
data__board__prefs__self_join as data_board_prefs_self_join, data__board__short_link as data_board_short_link, data__card__closed as data_card_closed,
data__card__due as data_card_due, data__card__due_complete as data_card_due_complete, data__card__id as data_card_id, data__card__id_short as data_card_id_short,
data__card__name as data_card_name, data__card__short_link as data_card_short_link, data__checklist__id as data_checklist_id, data__checklist__name as data_checklist_name, 
data__creation_method as data_creation_method, data__list__id as data_list_id, data__list__name as data_list_name, data__old__closed as data_old_closed, 
data__old__due as data_old_due, data__old__due_complete as data_old_due_complete, data__old__name as data_old_name, data__old__prefs__permission_level, data__old__prefs__self_join as data_old_prefs_self_join,
data__organization__id as data_organization_id, data__organization__name as data_organization_name, "date", date_last_activity, date_last_view, date_plugin_disable, 
"desc", desc_data, due, due_complete, due_reminder, enterprise_owned, full_name, "id", id_attachment_cover, id_board, id_board_source, id_card, id_checklists, id_enterprise, 
id_list, id_member_creator, id_organization, id_short, is_template, ix_update, label_names__black as label_names_black, label_names__blue as label_names_blue, label_names__green as label_names_green, 
label_names__lime as label_names_lime, label_names__orange as label_names_orange, label_names__pink as label_names_pink, label_names__purple as label_names_purple,
label_names__red as label_names_red, label_names__sky as label_names_sky, label_names__yellow as label_names_yellow, limits__check_items__per_checklist__disable_at as limits_check_items_per_checklist_disable_at,
limits__check_items__per_checklist__status, limits__check_items__per_checklist__warn_at, manual_cover_attachment, member_creator__activity_blocked as member_creator_activity_blocked,
member_creator__avatar_hash as member_creator_avatar_hash, member_creator__avatar_url as member_creator_avatar_url, member_creator__full_name as member_creator_full_name, member_creator__id as member_creator_id, 
member_creator__id_member_referrer as member_creator_id_member_referrer, member_creator__initials as member_creator_intials, member_creator__non_public_available as member_creator_non_public_available,
member_creator__username as member_creator_username, memberships, "name", pinned, pos, prefs__background as prefs_background, 
prefs__background_bottom_color as prefs_background_bottom_color, prefs__background_brightness as prefs_background_brightness, 
prefs__background_color as prefs_background_color, prefs__background_image as prefs_background_image, prefs__background_image_scaled 
as prefs_background_image_scaled, prefs__background_tile as prefs_background_tile, prefs__background_top_color as prefs_background_top_color,
prefs__calendar_feed_enabled as prefs_calendar_feed_enabled, prefs__can_be_enterprise as prefs_can_be_enterprise, prefs__can_be_org as prefs_can_be_org,
prefs__can_be_private as prefs_can_be_private, prefs__can_be_public as prefs_can_be_public, prefs__can_invite as prefs_can_invite,
prefs__card_aging as prefs_card_aging, prefs__card_covers as prefs_card_covers, prefs__comments as prefs_comments, prefs__hide_votes as prefs_hide_votes,
prefs__invitations as prefs_invitation, prefs__is_template as prefs_is_template, prefs__permission_level as prefs_permission_level, prefs__self_join as prefs_self_join, 
prefs__voting as prefs_voting, short_link, short_url, soft_limit, starred, subscribed, template_gallery, type, url, username from select_source


   
    )   
    
 select * from renamed 
     


                                                                                                                                                    





