{% macro quote(identifier) %}
  {{ adapter.dispatch('quote')(identifier) }}
{% endmacro %}

{% macro bigquery__quote(identifier) %}
  `{{ identifier }}`
{% endmacro %}

{% macro default__quote(identifier) %}
  "{{ identifier }}"
{% endmacro %}
