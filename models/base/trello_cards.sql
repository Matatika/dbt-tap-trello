with select_source as (

     select * from  {{ source('trello_test', 'cards') }}

 ),


renamed_columns as (

   select badges, checkitemstates as check_item_states, closed, cover, customfielditems as custom_field_items, datelastactivity as date_last_activity, "desc", descdata as desc_data, due, duecomplete as due_complete, duereminder as due_reminder, id,
   idattachmentcover as id_attachment_cover, idboard as id_board, idchecklists as id_check_lists, idlabels as id_labels, idlist as id_list, idmembers as id_members, idmembersvoted as id_members_voted, idshort as id_short, istemplate as is_template, labels, manualcoverattachment as manual_cover_attachement, "name", pos, shortlink as short_link, shorturl as short_url, "start", subscribed, url
   from select_source

  )

  select * from renamed_columns
  
