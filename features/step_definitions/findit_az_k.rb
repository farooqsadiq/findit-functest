require "watir"
require "dotenv/load"
#require "headless"
require "rspec/expectations"

Given /^I go to FindIt A\-Z K page$/ do
  @browser ||= Watir::Browser.new
  @browser.goto ENV['FINDIT_URL']
  #puts "Load Time: #{browser.performance.summary[:response_time]/1000} seconds."
end

Then /^I should see 1228 results$/ do
  expect(@browser.div(:class => "umlaut-az")).to exist 
:wa
end
