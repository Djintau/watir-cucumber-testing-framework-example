class ContractsPage
    include PageObject

    page_url "https://staging.clark.de/de/app/contracts"

    div(:axa_company, :data_cucumber_company_selection_quick_option => "Axa")
    div(:personal_liability_category, :data_cucumber_category_selection_quick_option => "Privathaftpflicht")
    button(:confirm_selection, :text => "Auswahl bestätigen")
    link(:view_contracts, :href => "/de/app/contracts")
end