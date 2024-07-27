select
    o.*,
    s.total_sales,
    s.total_discount
from
    {{ ref('stg_retail_orders') }} as o
join
    {{ ref('order_summary') }} as s
on
    o.order_id = s.order_id
order by
    o.order_date
