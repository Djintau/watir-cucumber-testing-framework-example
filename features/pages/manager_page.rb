class ManagerPage
    include PageObject

    page_url "https://staging.clark.de/de/app/manager"

    button(:add_contract, :class => "cucumber-add-button")
    button(:axa_personal_liability_contract_card, :xpath => '//button[@data-test-contract-card and contains(.,"Axa") and contains(.,"Privathaftpflicht")]')
end