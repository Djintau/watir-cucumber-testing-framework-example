Given("a user goes through recommendation funnel") do
    visit BasePage do |page|
        page.close_cookie_banner
        page.recommendation_nav_item
    end
    on RecommendationsPage do |page|
        page.recommendation_start
        page.birthday_element.when_present.set "03.05.2001"
        page.next
        page.select_male
        page.select_rented_apartment
        page.select_no
        page.check_caravan
        page.next
        page.select_married
        page.select_no
        page.select_employee
        page.select_employee_income_greater
        page.job_title = "Software developer"
        page.next
        page.check_travel
        page.check_sport
        page.next
        page.check_dog
        page.next
        page.brutto_salary = "123456"
        page.save
    end
end

When("that user creates an account") do
    on RegistrationPage do |page|
        page.login_with
    end
end

Then("that user is able to add an existing insurance") do
    on RecommendationsPage do |page|
        page.view_recommendation
        page.close_dialog_element.when_present.click
        page.dialog_container_element.when_not_present do
            @browser.scroll.to :bottom
        end
        page.private_retirement_planning_card_options
        page.add_contract
    end
    on ContractsPage do |page|
        page.axa_company_element.when_present.click
        page.personal_liability_category_element.when_present.click
        page.axa_company_element.click
        page.confirm_selection
        page.view_contracts
    end
    on ManagerPage do |page|
        page.add_contract_element.when_present do
            page.axa_personal_liability_contract_card_element.visible?
        end
    end
end