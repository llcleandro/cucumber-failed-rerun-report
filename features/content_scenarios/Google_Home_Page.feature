Feature: Cucumber failed rerun in content of Google Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

Scenario: Google Home Page 

  Given I acess the "http://www.google.com" home page
  Then I should see "Google"