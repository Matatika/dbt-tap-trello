with source_org as  (
  
  select * from {{ source('trello_source', 'org') }}
        ),

  renamed as  (   

     select logoHash as logo_hash, "desc", website, powerUps as power_ups, displayName as display_name, teamType as team_type, products, logoUrl as logo_url, url, name, id as org_id from source_org
 )        
    
select * from renamed 

