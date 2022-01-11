
{{ config(materialized='view') }}


with trello_board as (  

SELECT name, idOrganization FROM trello_boards.trello_board_table where name = "Data-Blog" 

),   

org as (

   SELECT displayName AS workspace_name, id AS org_id FROM trello_boards.trello_org

 ),   


workspace_agg as (

SELECT  trello_board.name, trello_board.idOrganization, org.workspace_name, org.org_id
FROM trello_board, org
WHERE trello_board.idOrganization = org.org_id 
AND trello_board.idOrganization = "60cb278dee2bd765b0cf1933" 

)   


SELECT COUNT(workspace_name) AS count_workspace FROM workspace_agg WHERE org_id = "60cb278dee2bd765b0cf1933"

