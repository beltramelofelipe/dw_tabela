-- import

with source as (
    select 
        "data",
        "symbol",
        "action",
        "quantity"
    from 
        {{ source ('dbsales_8fuk', 'valores') }}

),

renamed as (

    select 
        cast("data" as date) as data,
        "symbol" as simbolo,
        action as acao,
        quantity as quantidade
    from source
)

select * from renamed




