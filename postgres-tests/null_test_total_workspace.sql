
with null_test as (

select name, idOrganization from trello_boards.trello_board_table where name is not null

)

select * from null_test