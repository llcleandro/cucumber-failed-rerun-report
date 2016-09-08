Feature: Cucumber failed rerun in code response of Apple Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@service
Scenario: Apple Home Page

  Given I am on the "http://www.apple.co.uk" home page
  Then response code should be "500"
