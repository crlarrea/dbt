{% macro to_celsius(farenheit_column, decimal_places=1) %}
ROUND(({{farenheit_column}} -32) * 5/9, {{decimal_places}})
{% endmacro%}