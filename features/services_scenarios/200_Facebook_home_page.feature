Feature: Cucumber failed rerun in code response of Facebook Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@service
Scenario: Facebook Home Page

  Given I am on the "https://www.facebook.com" home page
  Then response code should be "200"
