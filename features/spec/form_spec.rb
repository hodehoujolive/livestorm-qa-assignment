  When /^I?\s?fill in "([^"]*)" with "([^"]*)"$/ do |input, data|
    fill_in input, :with => data
  end
  
  When /^I?\s?check "([^"]*)"$/ do |checkbox|
    check checkbox
  end
  
  When /^I?\s?uncheck "([^"]*)"$/ do |checkbox|
    uncheck checkbox
  end
  
  When /^I?\s?select "([^"]*)" from "([^"]*)"$/ do |value, selectbox|
    select value, :from => selectbox
  end
  
  When /^I?\s?unselect "([^"]*)"$/ do |selectbox|
    unselect selectbox
  end
  
  When /^I?\s?attach the file "([^"]*)" to "([^"]*)"$/ do |path, input|
    attach_file(input, path) 
  end
  
  Then /^"([^"]*)" should be checked$/ do |arg1|
    has_checked_field?(arg1).should be_true
  end