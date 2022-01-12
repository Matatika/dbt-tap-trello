with board_cards as  (

select IdBoard, name, url, id as card_id, idList as idList_card from trello_boards.trello_cards_tbl

)   

SELECT * FROM board_cards


