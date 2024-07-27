select
    *
from
    {{ ref('fct_orders') }}
where
    total_discount < 0
