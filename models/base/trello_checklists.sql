with select_source as (  
  
     select * from {{ source('trello_test', 'checklists') }}   
  
  ),    
  
 
 renamed_columns as (   
   
     select badges, checkitemstates as check_item_states, checkitems as check_items, closed, cover, creationmethod as creation_method, data, "date",
     datelastactivity as date_last_activity, datelastview as date_last_view, dateplugindisable as date_plugin_disable, "desc", descdata as desc_data, 
     due, duecomplete as due_complete, duereminder as due_reminder, enterpriseowned as enterprise_owned, fullname as full_name, id, 
     idattachmentcover as id_attachment_cover, idboard as id_board, idboardsource as id_board_source, idcard as id_card, idchecklists as id_check_lists,
     identerprise as id_enterprise, idlist as id_list, idmembercreator as id_member_creator, idorganization as id_organization, idshort as id_short, istemplate as is_template, 
     ixupdate, labelnames as label_names, limits, manualcoverattachment as manual_cover_attachment, membercreator as member_creator, memberships, "name", pinned, 
     pos, prefs, shortlink as short_link, shorturl as short_url, softlimit as soft_limit, starred, subscribed, templategallery as template_gallery, "type", url, username from 
     select_source 
   
    )   
    
    select * from renamed_columns 
     










