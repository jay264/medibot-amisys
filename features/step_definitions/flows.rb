Given /^I sign in to the application$/ do
  steps %{
    And the test pauses for "5" seconds
    When in the "Login" page I enter "#{$execution['username']}" into the "User Name" field
	  And in the "Login" page I enter "#{$execution['password']}" into the "Password" field
	  And in the "Login" page I click on "Submit"
	  And the test pauses for "5" seconds
	  And I click "OK" in the popup
    And the test pauses for "3" seconds
	  Then in the "Header" page I should see the "Quit" element
    }
end

Given /^I sign out of the application$/ do
    #steps %{
	#And I navigate to the Home page
	#}
  $browser.send_keys(:control, 'q')
	sleep 3
	$browser.driver.execute_script("window.top.open('', '_self', '');window.top.close();")
	$browser.alert.ok if $browser.alert.exists?
  $browser.alert.ok
end

Given /^I navigate to the Home page$/ do
	if $browser.title.include?("AMISYS Advance Welcome")
	else
    $browser.send_keys(:control, 'm')
	$browser.alert.ok if $browser.alert.exists?
    $browser.send_keys(:enter)
	end
end
