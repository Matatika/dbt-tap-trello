with select_source as  (  
  
      select * from {{ source('trello_test', 'boards') }}   
  
   ),
   
   
   renamed_columns as (   
    
    select closed as board_closed, creationmethod as creation_method, datelastactivity as date_last_activity, datelastview as date_last_view, dateplugindisable as date_plugin_disable, "desc", descdata as desc_data, enterpriseowned as enterprise_owned, id as board_id, idboardsource as id_board_source, identerprise as id_enterprise, idorganization as id_organization, idtags as id_tags, ixupdate as ix_update, labelnames as label_names, limits, memberships, name, pinned, powerups, prefs, premiumfeatures as premium_features, shortlink as short_link, shorturl as short_url, starred, subscribed, templategallery as template_gallery, url from
     select_source
    
    )   
    
    select * from renamed_columns 
