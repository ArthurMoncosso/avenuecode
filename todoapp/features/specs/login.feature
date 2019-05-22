#language :en

@log_in

Feature: Log in successfully and check if user is logged in

Scenario: Log in successfully
When I access the system with a valid username and password
Then I check if I am logged into the system


