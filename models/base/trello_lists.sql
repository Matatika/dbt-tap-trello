with source_lists (

SELECT * from {{ source('trello_source', 'cards') }}

)   


with renamed (   

    select pos, name as stage_name, idBoard as List_idBoard, closed, id as stage_id from source_lists

)     

select * from renamed
