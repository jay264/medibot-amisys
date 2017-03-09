@fullregression
@regression1
@provider
Feature: Provider Info - Busrules

	As a QA Tester
	I want to test the Provider Info page
	so that I know the page is functioning properly.

	Scenario: Verify Required Fields
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "937360" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And in the "Provider Maintenance Credentialing" page I click on "Prov Info"
	When in the "Provider Info" page I click on the "Save" image
		And the test pauses for "30" seconds
		And in the "Provider Info" page I click on the "Save" image
	Then in the "Provider Info" page I should see the "No Modifications to Update" image
		And I press "F8"
	
	Scenario: Handicapped Accessible
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "937360" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And in the "Provider Maintenance Credentialing" page I click on "Prov Info"
		And the test pauses for "30" seconds
		#And I press enter graphically
		#And the test pauses for "30" seconds
	When in the "Provider Info" page I enter "Y" into the "Handicapped Access" image
		And I press enter graphically
		And the test pauses for "30" seconds
		#sometimes this first attempt doesn't register
		#And in the "Provider Info" page I enter "Y" into the "Handicapped Access" image
		And I press enter graphically
		And the test pauses for "30" seconds
	Then in the "Provider Info" page I should see the "No Modifications to Update" image
		And in the "Provider Info" page I enter "N" into the "Handicapped Access" image
		And I press enter graphically
		And the test pauses for "30" seconds
		And I press enter graphically
		And the test pauses for "30" seconds
		And in the "Provider Info" page I should see the "No Modifications to Update" image
		And I press "F8"