{% macro calculate_discount(order_total, discount_rate, scale=2) %}
    ({{order_total}} * {{discount_rate}} / 100)::decimal(16, {{ scale }})
{% endmacro %}
