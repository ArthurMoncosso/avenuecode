@create_task

Feature: Create new task, and validate if it was created

Scenario: Create a new task
When I create a new task
Then I validate if the task was created