{% macro quote_keyword(keyword) %}
  {%- if target.type == 'bigquery' -%}
    `{{ keyword }}`
  {%- else -%}
    "{{ keyword }}"
  {%- endif -%}
{% endmacro %}
