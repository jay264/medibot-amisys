@fullregression
@regression2
@login
Feature: Login - Validate

	As a QA Tester
	I want to validate the Login page fields
	so that I know the page is displaying properly.

	Scenario: Validate Login Page
	When I go to the "Login" page
	Then in the "Login" page I should see the "User Name" element which is empty
		And in the "Login" page I should see the text "User Name:"
		And in the "Login" page I should see the text "Password:"
		And in the "Login" page I should see the "Password" element which is empty
		And in the "Login" page I should see the "Submit" element
		And in the "Login" page I should see the "Clear" element
		And in the "Login" page I should see the text "Warning - Authorized users Only"
