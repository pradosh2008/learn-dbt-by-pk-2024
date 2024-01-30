{{ config(materialized='table') }}
select
    c_mktsegment as market_segment
    , count(c_custkey) as number_of_customers
from {{ source('TPCH_SF1', 'CUSTOMER')}}
group by c_mktsegment