Feature: Article preview

  @preview
  Scenario: User can move from article preview to full article
    When I search for "Metallica" article
    Then I scroll to "Master of Puppets"
    And I tap on "Master of Puppets"
    Then I tap on Continue To Article button
    And I verify that article contains "Master of Puppets"

  Scenario: User can save Article from Article page ( use adb keyevent for menu)
    When I search for "Metallica" article
    And I open menu

  Scenario: Verify that Article Title and Summary text containing Article name

  Scenario: User can save Article from Preview page