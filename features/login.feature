Feature: Wikipedia login
  @login
  Scenario: User able to login with valid credentials
    Given I land on Today's featured article
    Then I press Navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type "Aleksskela" to login field
    Then I type "root1234" to password field
    And I press on Log in button



