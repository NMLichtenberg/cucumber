Given /^I am on "([^"]*)"$/ do |arg1|
  visit(arg1)
end

When /^I search for "([^"]*)"$/ do |arg1|
  @search_phrase = arg1
  fill_in "lst-ib", with: @search_phrase
  find("[name=btnG]").click
end

Then /^I should see results containing the phrase$/ do
  expect(page).to have_content(@search_phrase)
end