Feature: Test gestures actions
  @swipe
  Scenario: User able to swipe screen to see Navigation menu
    Given I land on Today's featured article
    When I swipe screen to the right direction
    Then I should see Navigation menu
    When I swipe screen to the left direction
    Then I should not see Navigation menu