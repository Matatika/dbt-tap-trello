
{{ config(materialized='table') }}

{{% board_name = " " %}}

{{% id_org = " " %}}

with trello_board as (  

select name, idOrganization from {{ ref('trello_boards') }}  where name = {{ board_name }}

),   

org as (

   select displayName as workspace_name, id as org_id from {{ ref(trello_org) }} 

 ),   


workspace_agg as (

SELECT  trello_board.name, trello_board.idOrganization, org.workspace_name, org.org_id
FROM trello_board, org
WHERE trello_board.idOrganization = org.org_id 
AND trello_board.idOrganization = {{ id_org }} 

)   


SELECT COUNT(workspace_name) AS count_workspace FROM workspace_agg WHERE org_id = {{ id_org }} 

