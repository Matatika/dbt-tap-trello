select * from  ( 

 select name, id from {{ ref(trello_boards) }}  Where name = {{ t_boards }} is not null
    
 ) null_test_checking_for_board_tbl   
 

select * from (
 
 select name as card_name, idBoard as  BoardID, idList_card as ListID  from {{ ref('trello_cards') }} where idBoard = {{ id_Board }} is not null 

)  null_test_chechking_for_trello_cards



 
 
