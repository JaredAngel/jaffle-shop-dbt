WITH customers AS (
    SELECT
        *
    FROM
        {{ ref('stg_jaffle_shop__customers') }}
),

orders AS (
    SELECT
        *
    FROM
        {{ ref('stg_jaffle_shop__orders') }}
),

payments AS (
    SELECT
        *
    FROM
        {{ ref('stg_stripe__payments') }}
),

order_payments AS (
    SELECT
        order_id,
        SUM(CASE WHEN payment_status = 'success' THEN payment_amount END) AS amount
    FROM
        payments
    GROUP BY
        order_id
),

final AS (
    SELECT
        o.order_id,
        o.customer_id,
        o.order_date,
        COALESCE(p.amount, 0) AS amount
    FROM
        orders AS o
            LEFT JOIN
        order_payments AS p USING(order_id)
)

SELECT * FROM final