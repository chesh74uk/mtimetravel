Feature: Timeline
  
  In order to be able to manage my timelines
  As a user
  I should be able to see a list of my timelines
  And create a new timeline
  

  Scenario:
    Given I have populated my timeline with several timelines
    When I visit the homepage
    Then I should see a list of my timelines
  
  Scenario:
    Given I am at the homepage
    When I click new
    Then I should be able to add a new timeline