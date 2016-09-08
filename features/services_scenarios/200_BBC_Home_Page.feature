Feature: Cucumber failed rerun in code response of BBC Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@service
Scenario: BBC Home Page

  Given I am on the "http://www.bbc.co.uk" home page
  Then response code should be "200"
