Feature: Cucumber failed rerun in content of Yahoo Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure 

Scenario: Yahoo home page

  Given I acess the "http://uk.yahoo.com" home page 
  Then I should see "Yahoo"