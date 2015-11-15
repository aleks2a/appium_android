@search
Feature: Wikipedia search

  Scenario: As Wikipedia user, I would like to perform search
    Given I land on Today's featured article
    When I click on Search textfield
    Then I type "Metallica" into search field
    Then I see that 1 search result include "Metallica"
    When I tap on 1 search result on search result screen
    And I verify that article contains "Metallica"



