
## -------- Content steps --------------------------##

Given(/^I acess the "([^"]*)" home page$/) do |page|
 visit(page)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end


## -------- Services steps --------------------------##

Given(/^I am on the "([^"]*)" home page$/) do |page|
 @last_response = HTTParty.get("http://www.apple.co.uk")
end

Then(/^response code should be "([^"]*)"$/) do |code|  
  @last_response.code.to_s.should == code
end