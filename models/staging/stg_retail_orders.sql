select
    order_id,
    customer_id,
    order_status,
    order_total,
    order_date
from
    {{ source('retail', 'orders') }}
