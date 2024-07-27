select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.order_total,
    {{ calculate_discount('o.order_total', '10') }} as discount_amount
from
    {{ ref('stg_retail_orders') }} as o
join
    {{ ref('stg_retail_customers') }} as c
on
    o.customer_id = c.customer_id
order by
    o.order_date
