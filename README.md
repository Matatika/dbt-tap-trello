# dbt-tap-trello
This dbt package contains models for Matatika's [tap-trello](https://github.com/Matatika/tap-trello).

The main focus of the package is to transform stream `tap-trello` data into usable analytics models.

This package along with the [Analyze Bundle](https://github.com/Matatika/analyze-trello) are designed intended to work together to provide instant insights on the [Matatika Platform](https://www.matatika.com).

| **model**              | **description** |
| ---------------------- | ------------------------------------------------------------- |
| [trello_actions](models/base/trello_actions.sql) | Trello actions data (Card creation, edits, moves) |
| [trello_boards](models/base/trello_boards.sql) | Trello boards data |
| [trello_cards](models/base/trello_cards.sql) | Trello cards data |
| [trello_checklists](models/base/trello_checklists.sql) | Trello checklists data (Checklists on cards) |
| [trello_lists](models/base/trello_lists.sql) | Trello lists data (Columns in boards) |
| [trello_members](models/base/trello_members.sql) | Trello members data |
| [trello_vw_active_members](models/mart/trello_vw_active_members.sql) | View of all active members from all boards |
| [trello_vw_total_cards_each_board](models/mart/trello_vw_total_cards_each_board.sql) | View of count of cards in each board |


## Installation Instructions
Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

Include in your `packages.yml`
```yaml
packages:
  - git: https://github.com/Matatika/dbt-tap-trello.git
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

## Database Support
This package has been tested on Postgres and Snowflake.

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

---

Copyright &copy; 2022 Matatika
