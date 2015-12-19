@login
Feature: Wikipedia login

  Scenario: User able to login with valid credentials
    Given I land on Today's featured article
    Then I press Navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type "Aleksskela" to login field
    Then I type "root1234" to password field
    Then Log in button should be enabled
    And I press on Log in button
    When I swipe screen to the right direction
    Then I should see "Aleksskela" in log in section
    Then I press on Log in to Wikipedia
    Then I press Log out button
    When I swipe screen to the right direction
    Then I should see "Log in to Wikipedia" in log in section

  Scenario: User should see appropriate error message without internet connection
    Given I land on Today's featured article
    Then I turn Airplane mode on
    Then I press Navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type "Aleksskela" to login field
    Then I type "root1234" to password field
    And I press on Log in button
    Then I should see internet connection error
    Then I turn Airplane mode off

  Scenario: Log in button should be disabled before user type credentials
    Given I land on Today's featured article
    Then I press Navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type "Aleksskela" to login field
    Then Log in button should be disabled






















