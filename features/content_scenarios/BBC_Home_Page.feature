Feature: Cucumber failed rerun in content of BBC Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@content
Scenario: BBC Home Page

  Given I acess the "http://www.bbc.co.uk" home page
  Then I should see "Welcome to BBC.com"
