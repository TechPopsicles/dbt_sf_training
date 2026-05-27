with orders as (

    select * from {{ ref('stg_orders') }}

),

lineitems as (

    select * from {{ ref('stg_lineitem') }}

),

joined as (

    select
        o.O_ORDERKEY,
        o.O_CUSTKEY,
        o.O_ORDERSTATUS,
        o.O_ORDERDATE,
        o.O_ORDERPRIORITY,
        O_CLERK,
        O_SHIPPRIORITY,
        O_COMMENT,
        L_ORDERKEY,
        L_PARTKEY,
        L_SUPPKEY,
        L_LINENUMBER,
        L_QUANTITY,
        L_EXTENDEDPRICE,
        L_DISCOUNT,
        L_TAX,
        L_RETURNFLAG,
        L_LINESTATUS,
        L_SHIPDATE,
        L_COMMITDATE,
        L_RECEIPTDATE,
        L_SHIPINSTRUCT,
        L_SHIPMODE,
        {{ net_revenue('li.L_EXTENDEDPRICE', 'li.L_DISCOUNT', 'li.L_TAX') }} as net_revenue,
    from orders o
    inner join lineitems li
        on o.O_ORDERKEY = li.L_ORDERKEY

)

select * from joined
