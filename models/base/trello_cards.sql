with board_cards as  (

select IdBoard, name, url, id, idList  from trello_boards.trello_cards_tbl

)   

SELECT * FROM board_cards

