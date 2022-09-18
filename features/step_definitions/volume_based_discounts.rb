require 'pry'
require 'rspec'

Given('I am on the everlywell homepage') do
  page_title = 'Everlywell - Innovative at-home Health Testing'
  @browser.goto 'https://www.everlywell.com/'
  expect(@browser.title).to eq page_title
end

Given('I add five Food Sensitivity Comprehensive Tests to my cart') do
  @browser.p(text: 'Food Sensitivity Comprehensive Test').click
  binding.pry
end

Given('I dismiss any popups that appear') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click Proceed to Checkout') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a volume based discount') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('my total should be equal to that of one Food Sensitivity Comprehensive Test') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should not see a volume based discount') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('my total should be equal to that of four Food Sensitivity Comprehensive Tests') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I should see a volume based discount') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('my total should be equal to that of one Food Sensitivity Comprehensive Test') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I change the cart quantity to four') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter the twenty percent off discount code') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see my twenty percent off coupon applied successfully') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('my total should be equal to that of one Food Sensitivity Comprehensive Test minus twenty%') do
  pending # Write code here that turns the phrase above into concrete actions
end