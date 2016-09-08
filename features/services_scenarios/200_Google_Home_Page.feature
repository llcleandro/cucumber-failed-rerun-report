Feature: Cucumber failed rerun in code response of Google Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@service
Scenario: Google Home Page

  Given I am on the "http://www.google.com" home page
  Then response code should be "200"
