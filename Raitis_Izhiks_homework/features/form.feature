@create_account
Feature: I want to create an account
    Background:
        Given I am on the create account page

@debug
Scenario: Create account form positive test case
    When I fill the First Name input field
    And I fill the Last Name input field
    And I fill the E-mail input field
    And I fill the Address 1 input field
    And I fill the City input field with "Riga"
    And I select Country "Latvia"
    And I select Region "Riga"
    And I fill the ZIP Code input field with "LV-5422"
    And I fill the Login Name input field
    And I fill the Password input field with "P@ssw0rd"
    And I fill the Password Confirmation input field with "P@ssw0rd"
    And I select Privacy Policy checkbox
    And I press Continue
    And I check that I created new account