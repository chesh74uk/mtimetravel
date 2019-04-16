Feature: Timeline
  
  In order to be able to keep track of my timelines
  As a user
  I should be able to keep a list of my timelines
  

  Scenario:
    Given I have populated my timeline with several timelines
    When I visit the homepage
    Then I should see a list of my timelines
    