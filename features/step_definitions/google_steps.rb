##################################### Given ###################################

Given /^I'm on the Google Australia homepage$/ do
  visit 'http://www.google.com.au'
end

##################################### When ####################################

When /^I search google for "([^\"]*)"$/ do |search_query|
  on_page_with :google_search do |page|
    page.search_for search_query
  end
end

##################################### Then ####################################

Then /^the first result title should contain the world "([^\"]*)"$/ do |expected_title_fragment|
  on_page_with :google_search_results do |page|
    page.get_results[0].title.downcase.should include expected_title_fragment
  end
end