# dbt-tap-trello
This dbt package contains data models for tap-trello.

The main focus of this package is to generate insights for the following goals:  

-  What is the total number of cards currently in each stage of my board?
-  What is the daily total number of cards for a stage in my board?
-  What is the total number of users invited to my board?
-  What is the total number of workspaces in my Trello account?

This package along with the [Analyze Bundle](..................) are designed intended to work together to provide instant insights on the [Matatika Platform](https://www.matatika.com/).


## Models   

| Models | Description |  
|--------|-------------|  
| num_cards | This model lists the number of cards in each stage of a trello board | 
| daily_total_cards | This model is similar to the preceding model but checks the total number of cards in each stage of a trello board daily |  
| total_workspaces | This model lists the number of workspaces in a user's trello account |  
| total_users_board | This model lists the total number of users invited to a trello board | 


## Installation Instructions  

Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.  

```yaml
packages:
  
  - package: Matatika/tap-trello
    version: ["0.1.0"]
  
  - package: re-data/re_data
    version: 0.5.1
```

### One time setup (after creating a python virtual environment)

```
pip install dbt
dbt deps
```
    
### development

```
dbt test
```
