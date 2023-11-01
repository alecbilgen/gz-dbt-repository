with 

source as (

    select * from {{ source('raw_gwz', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaign_key,
        CAST(ads_cost AS FLOAT64) AS ads_cost,
    from source

)

select * from renamed
