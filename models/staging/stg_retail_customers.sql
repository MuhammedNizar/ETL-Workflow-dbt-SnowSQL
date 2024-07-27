select
    customer_id,
    customer_name,
    customer_email,
    customer_since
from
    {{ source('retail', 'customers') }}
