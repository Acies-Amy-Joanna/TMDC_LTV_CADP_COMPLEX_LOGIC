SELECT
    session_id,
    Visit_id,
    user_id,
    unique_id,
    device_id,
    cookie_id,
    device,
    entry_channel,
    CASE 
        WHEN user_country IN ('UK', 'U.K.', 'Britain') THEN 'United Kingdom'
        ELSE user_country
    END AS user_country,
    entry_page,
    number_of_page_viewed,
    number_of_attraction_page_viewed,
    number_of_hotels_page_viewed,
    number_of_other_page_viewed,
    visit_datetime
FROM
    LTV.VISIT_COPY_DV
