with source_lists (

SELECT * from {{ source('trello_source', 'trello_lists') }}

)   


with renamed (   

    select pos, name as stage_name, idBoard as List_idBoard, closed, id as stage_id from source_lists

)     

select * from renamed
