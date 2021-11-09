class BasePage
    include PageObject

    page_url "https://staging.clark.de/de/app/contracts?cv=2"

    button(:close_cookie_banner, :class => "cucumber-cookie-banner-close-btn")
    link(:recommendation_nav_item, :href => "/de/app/recommendations")
end