Feature: Cucumber failed rerun in content of Facebook Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@content
Scenario: Facebook Home Page

  Given I acess the "https://www.facebook.com" home page
  Then I should see "XXXXX-Failure-To-Rerun"
