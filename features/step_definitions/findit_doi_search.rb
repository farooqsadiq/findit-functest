require "watir"
require "dotenv/load"
#require "headless"
require "rspec/expectations"

Given /^I go to FindIt Home page$/ do
  @browser ||= Watir::Browser.new
  @browser.goto ENV['FINDIT_URL']
  #puts "Load Time: #{browser.performance.summary[:response_time]/1000} seconds."
end

Then /^I enter "([^"]*)" into the doi field$/ do |doi|
  @browser.text_field(:name => "rft_id_value").set doi
end

When /^I click "([^"]*)"$/ do |button_name|
  @browser.button.click
end

Then /^I should see "([^"]*)" page$/ do |item_title|
  @browser.body.wait_until_present
  expect(@browser.body.text).to include(item_title) 
  sleep 3
end

When /^I click on the Online Link "([^"]*)"$/ do |link_text|
  @browser.link(:text => link_text ).when_present.click
  sleep 3
end 

Then /^you should be on "([^"]*)"$/ do |site|
  expect(@browser.windows.last.use.url).to include(site)
end
 
And /^the article title "([^"]*)" is shown$/ do |item_title|
  expect(@browser.windows.last.use..body.text).to include(item_title) 
  sleep 3
end


Given /$I go to ([^"]*)"$/ do |url|
  @browser.goto url
end

