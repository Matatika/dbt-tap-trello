
{{ config(materialized='table') }}

with trello_board as (  

select name, idOrganization from trello-13.trello_data.trello_board

),


org as (

   select displayName as workspace_name, id as org_id from trello-13.trello_data.trello_org

 ),

 workspace_agg as (

SELECT  trello_board.name, trello_board.idOrganization, org.workspace_name, org.org_id
FROM trello_board, org
WHERE trello_board.idOrganization = org.org_id 

) 

select count(distinct workspace_name) as number_of_workspace from workspace_agg

