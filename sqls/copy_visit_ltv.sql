SELECT
    session_id,
    Visit_id,
    user_id,
    unique_id,
    device_id,
    cookie_id,
    device,
    entry_channel,
    user_country,
    entry_page,
    number_of_page_viewed,
    number_of_attraction_page_viewed,
    number_of_hotels_page_viewed,
    number_of_other_page_viewed,
    CAST(DATE_PARSE(visit_datetime, '%d-%m-%Y %H:%i') AS DATE) AS visit_datetime
FROM
    LTV.VISIT