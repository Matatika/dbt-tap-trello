with trello_stage_names as  ( 

select * from trello_boards.trello_list_tbl

)    

select  name, idBoard, id from trello_stage_names
