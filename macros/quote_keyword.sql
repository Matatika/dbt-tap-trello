{% macro default__quote_keyword(keyword) %}
  "{{ keyword }}"
{% endmacro %}

{% macro bigquery__quote_keyword(keyword) %}
  `{{ keyword }}`
{% endmacro %}

{% macro quote_keyword(keyword) %}
  {{ adapter.dispatch('quote_keyword')(keyword) }}
{% endmacro %}
