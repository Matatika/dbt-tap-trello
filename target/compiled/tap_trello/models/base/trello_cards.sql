with select_source as (

     select * from  "trello_data"."analytics"."cards"

 ),


renamed as (

   select badges__attachments as badges_attachment , check_item_states as check_item_states, closed, cover__brightness as cover_brightness, cover__color as cover_color, cover__id_attachment as cover_id_attachment, cover__id_uploaded_background as cover_id_uploaded_background, cover__size as cover_size, custom_field_items, date_last_activity, "desc", due, due_complete,  due_reminder, id,
    id_attachment_cover,  id_board, id_checklists as id_check_lists, id_labels, id_list,  id_members, id_members_voted, id_short, is_template, labels,  manual_cover_attachment, "name", pos, short_link, short_url, "start", subscribed, url
   from select_source

  )

  select * from renamed