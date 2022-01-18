with trello_board as (

select name, idOrganization from {{ ref('trello_boards') }}  where name = "Data-Blog"

),

org as (

   select displayName as workspace_name, id as org_id from {{ ref('trello_org') }}

 ),


workspace_agg as (

SELECT  trello_board.name, trello_board.idOrganization, org.workspace_name, org.org_id
FROM trello_board, org
WHERE trello_board.idOrganization = org.org_id
AND trello_board.idOrganization = "60cb278dee2bd765b0cf1933"

)


SELECT COUNT(workspace_name) AS count_workspace FROM workspace_agg WHERE org_id = "60cb278dee2bd765b0cf1933"
