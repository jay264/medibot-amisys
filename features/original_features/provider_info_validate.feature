@fullregression
@regression2
@provider
Feature: Provider Info - Validate

	As a QA Tester
	I want to test the Provider Info page
	so that I know the page is displaying properly.

	Scenario: Validate Provider Info Page
	Given I sign in to the application
	When in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "5" seconds
		And in the "Provider Maintenance Credentialing" page I click on "Prov Info"
		And the test pauses for "5" seconds
	Then in the "Provider Info" page I should see the "Provider Information Text" image
		And in the "Provider Info" page I should see the "ID Type 1" image
		And in the "Provider Info" page I should see the "ID Type 2" image
		And in the "Provider Info" page I should see the "ID Type 3" image
		And in the "Provider Info" page I should see the "Name" image
		And in the "Provider Info" page I should see the "Practice Hours" image
		And in the "Provider Info" page I should see the "Handicapped Access" image
		And in the "Provider Info" page I should see the "Answering Service" image
		And in the "Provider Info" page I should see the "Pre-Admission Assessment" image
		And in the "Provider Info" page I should see the "After Hours Phone Availability" image
		And in the "Provider Info" page I should see the "After Hour Phone Number Primary" image
		And in the "Provider Info" page I should see the "After Hour Phone Number Secondary" image
		And in the "Provider Info" page I should see the "Trans Code" image
		And in the "Provider Info" page I should see the "Date" image
		And in the "Provider Info" page I should see the "OP Number" image