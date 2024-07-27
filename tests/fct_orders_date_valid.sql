select
    *
from
    {{ ref('fct_orders') }}
where
    order_date > CURRENT_DATE()
    or order_date < '2000-01-01'
