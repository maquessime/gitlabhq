Feature: Project Commits Mark Reviewed
  Background:
  	Given I sign in as a user 
  	And I own a project
  	And I visit my project's commits page

  Scenario: I mark as reviewed a commit
    Given I click on commit link
    When I click mark as reviewed button
    Then I see mark as unreviewed button