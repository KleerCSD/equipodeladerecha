Given /^I open the web app$/ do
  visit '/'
end

Given /^I open the web juego$/ do
  visit '/juego'
end

Given /^I open punete$/ do
  visit '/punete'
end

Given /^I open principal$/ do
  visit '/principal'
end

Given /^I post to the web app$/ do
  visit '/', :post, "field_name=value"
end

When /^I click on "(.*)"$/ do |text|
  click_link(text)
end

Then /^I should see "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^I fill "(.*)" with "(.*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I select "(.*)" with "(.*)"$/ do |field, value|
  select value, :from =>field
end

When /^I press "(.*)"$/ do |name|
  click_button(name)
end

Then(/^I should see the image "(.*?)"$/) do |image_name|
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end
