with source_members as ( 

select * from {{ source('trello_source', 'trello_board_members') }} 

)



with renamed (
 
  select 

   memberships, 
   
   shorturl as url,

   premiumFeatures as premium_Features, 

   templateGallery as template_gallery,

   dateLastView as date_last_view,  

   idTags as id_tags,

    prefs, 
    
    idEnterprise as id_enterprise, 
    
    starred, 
    
    idMemberCreator as id_member_creator, 
    
    idBoardSource as id_board_source, 
    
    labelNames as label_names, 
    
    enterpriseOwned as enterprise_owned, 
    
    ixUpdate as ix_update, 
    
    creationMethod as creation_method, id, 
    
    powerUps as power_ups, 
    
    dateLastActivity as date_last_activity, 
    
    pinned, 
    
    url, 
    
    idOrganization as id_organization, 
    
    subscribed, 
    
    descData as desc_data, 
    
    shortLink as short_link, 
    
    limits, 
    
    dateClosed as date_closed, 
    
    closed, 
    
    "desc", 
    
    datePluginDisable as date_plugin_disable, 
    
    name

from  source_members
  )  
  
 select * from renamed 
