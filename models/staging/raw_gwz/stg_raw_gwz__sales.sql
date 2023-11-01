with 

source as (

    select * from {{ source('raw_gwz', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        CAST(revenue AS FLOAT64),
        CAST(quantity AS INt64)

    from source

)



select * from renamed
