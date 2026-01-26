SEELCT
    *
FROM {{ ref('fct_reviews') }} fr
INNER JOIN {{ ref('dim_listings_cleansed') }} dl
    USING (listing_id)
WHERE
    fr.review_date < dl.created_at
;
