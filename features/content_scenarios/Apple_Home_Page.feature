
Feature: Cucumber failed rerun in content of Apple Home
  In order to expolre execution do rerun
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's a genuine failure

@content
Scenario: AOL Home Page

  Given I acess the "http://www.apple.co.uk" home page
  Then I should see "Apple"
