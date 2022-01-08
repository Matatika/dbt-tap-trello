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

## Cloud hosting and SaaS
Deploy on the Matatika Platform within minutes. [www.matatika.com](https://www.matatika.com)

## Contributions

Additional contributions to this package are very welcome! Please create issues
or open PRs against `master`. Check out 
[this post](https://discourse.getdbt.com/t/contributing-to-a-dbt-package/657) 
on the best workflow for contributing to a package.

## Resources:
- Have questions, feedback, or need help? Please email us at support@matatika.com
- Find all of Matatika's pre-built dbt packages in our [dbt hub](https://hub.getdbt.com/Matatika/)
- Learn how to orchestrate [dbt transformations with Matatika](https://www.matatika.com/docs/getting-started/)
- Learn more about Matatika [in our docs](https://www.matatika.com/docs/introduction)
- Learn more about dbt [in the dbt docs](https://docs.getdbt.com/docs/introduction)

## License
You are granted use of this library under the [AGPLv3 License](https://github.com/Matatika/dbt-tap-solarvista/blob/master/LICENSE) terms.

This license grants you the freedom to use the software without any warranties, but requires you to open source your platform with the same terms if you distribute or host a service using any part of this library.  Contact us for a commercial embedded license to remove this restriction.

---

Copyright &copy; 2020 Matatika


