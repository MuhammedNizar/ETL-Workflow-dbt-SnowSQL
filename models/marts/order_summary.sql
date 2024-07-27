select
    order_id,
    sum(order_total) as total_sales,
    sum(discount_amount) as total_discount
from
    {{ ref('int_order_details') }}
group by
    order_id
