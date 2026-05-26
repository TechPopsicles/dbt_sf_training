select 
    PS_PARTKEY,
    PS_SUPPKEY,
    PS_AVAILQTY,
    PS_SUPPLYCOST,
    PS_COMMENT,
    _LOADED_AT
from {{ source('SF_SAMPLE_DATA', 'partsupp')}}