Feature: Old Clark beta recommendation funnel

    In order to increase the number of clients on the platform
    As a potential client
    I want to be able to go through the recommendation funnel
    that leads me through account creation and finally adding of an existing insurance

Scenario: User goes through the recommendations funnel, creates an account and adds existing contract
    Given a user goes through recommendation funnel
    When that user creates an account
    Then that user is able to add an existing insurance