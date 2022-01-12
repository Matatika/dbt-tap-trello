select * from ( 

select name, idOrganization from {{ ref('trello_boards') }}  where name = {{ board_name }} is not null 

) null_testing_workspaces
