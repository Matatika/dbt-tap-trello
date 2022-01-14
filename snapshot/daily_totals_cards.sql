{{% snapshot daily_total_cards %}}

with board_cards as  (

select IdBoard, name, url, id, idList from {{ ref(trello_cards.sql) }} 

)   

SELECT * from board_cards

{{% endsnapshot %%}}   
