Feature: Cucumber failed rerun in code response of Yahoo Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@service
Scenario: Yahoo home page

  Given I am on the "http://uk.yahoo.com" home page
  Then response code should be "200"
