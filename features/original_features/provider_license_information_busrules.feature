@fullregression
@regression1
@credentialing
@provider
Feature: Provider License Information - Busrules

	As a QA Tester
	I want to test the Provider License Information page
	so that I know the page is functioning properly.
	
	Scenario: Add License Number and Effective/Exp Dates
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Credentialing"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938753" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "5" seconds
		And in the "Functions Menu" page I click on "More"
		#And in the "Functions Menu" page I click on "More"
		And in the "Functions Menu" page I click on "License"
		And the test pauses for "30" seconds
	When I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider License Information" page I press the "tab" key "10" times
		And in the "Provider License Information" page I enter "O" into the "State" image
		And in the "Provider License Information" page I press the "enter" key "1" times
		And in the "Provider License Information" page I enter "35080389" into the "License Number" image
		And in the "Provider License Information" page I enter "11/23/2001" into the "Eff Date" image
		And in the "Provider License Information" page I enter "07/01/2015" into the "Exp Date" image
		And in the "Provider License Information" page I enter "FP" into the "LI" image
		And in the "Provider License Information" page I press the "tab" key "4" times
		And in the "Provider License Information" page I enter "CV" into the "SO" image
		And in the "Provider License Information" page I click on the "Save" image
		And in the "Provider License Information" page I click on the "Save" image
		And the test pauses for "30" seconds
	#Then in the "Provider License Information" page I should see the "Error No Record Found" image
		And in the "Provider License Information" page I click on the "Delete" image
		And the test pauses for "30" seconds
		And in the "Provider License Information" page I click on the "OK Popup" image
		And the test pauses for "30" seconds
		And in the "Provider License Information" page I should see the "Process Completed" image