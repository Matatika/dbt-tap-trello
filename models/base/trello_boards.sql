with all_boards as (   
    SELECT name, id FROM trello_boards.trello_board_table
), 

SELECT * FROM all_boards 
