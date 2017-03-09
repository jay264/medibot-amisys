@fullregression
@regression1
@login
Feature: Login - Busrules
	
	As a QA Tester
	I want to verify the Login page functionality
	so that users can access the application.

	Background:
	Given I go to the "Login" page
	
	Scenario: Blank User Name and Password
	When in the "Login" page I click on "Submit"
	Then I click "OK" in the popup if it exists
		And I close "Internet Explorer"
		
	Scenario: Valid User Name and Blank Password
	When in the "Login" page I enter "BRLUSENH" into the "User Name" field
		And in the "Login" page I click on "Submit"
	Then I click "OK" in the popup if it exists
		And I close "Internet Explorer"
	
	Scenario: Valid Logon Combinations
	When in the "Login" page I enter "BRLUSENH" into the "User Name" field
		And in the "Login" page I enter "Jasmine1" into the "Password" field
		And in the "Login" page I click on "Submit"
	Then I click "OK" in the popup if it exists
		And in the "Home" page I should see the "Authorizations Medical Management" element