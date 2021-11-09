class RecommendationsPage
    include PageObject

    page_url "https://staging.clark.de/de/app/recommendations"

    link(:recommendation_start, :href => /de\/app\/recommendations\/demandcheck\?/)
    button(:next, :text => "Weiter")
    text_field(:birthday, :data_picker => "date-birthday")
    hidden_radio_button(:male, :value => "male")
    hidden_radio_button(:rented_apartment, :value => "In einer gemieteten Wohnung")
    hidden_radio_button(:no, :value => "Nein")
    hidden_checkbox(:caravan, :id => "Wohnwagen")
    hidden_radio_button(:married, :value => "Ich bin verheiratet")
    hidden_radio_button(:employee, :value => "Angestellter")
    hidden_radio_button(:employee_income_greater, :value => /und verdiene [uü]ber/)
    text_field(:job_title, :placeholder => "Berufsbezeichnung (optional)")
    hidden_checkbox(:travel, :id => "Ich reise sehr viel")
    hidden_checkbox(:sport, :id => "Ich betreibe eine gefährliche Sportart")
    hidden_checkbox(:dog, :id => "Hund")
    text_field(:brutto_salary, :class => "cucumber-text-input")
    button(:save, :text => "Speichern")
    link(:view_recommendation, :href => "/de/app/recommendations")
    button(:assess_personal_situation, :text => "Persönliche Situation bewerten")
    button(:close_dialog, :aria_label => "Schließen")
    button(:private_retirement_planning_card_options, :data_cucumber_ellipses_link => "Private Altersvorsorge")
    button(:add_contract, :data_cucumber_recommendation_card_add_contract => "Private Altersvorsorge")
    div(:dialog_container, :xpath => "//div[@data-test-modal-container]")
end