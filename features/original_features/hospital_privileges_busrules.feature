@fullregression
@regression1
@hospital
Feature: Hospital Privileges - Busrules

	As a QA Tester
	I want to test the Hospital Privileges page
	so that I know the page is functioning properly.
	
	Scenario: Verify Hospital Privileges Required Fields
	Given I sign in to the application
	When in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And I press "Control + F"
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938437" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Privileges"
		And the test pauses for "30" seconds
	When I press "Control + N"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		
	Then in the "Hospital Privileges" page I should see the "Error Required Fields Image" image
	
	
	Scenario: Enter New Hospital Privileges
	Given I sign in to the application
	When in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And I press "Control + F"
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938437" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Privileges"
		And the test pauses for "30" seconds
		And in the "Hospital Privileges" page I click on the "New Image" image
		And the test pauses for "30" seconds
	When in the "Hospital Privileges" page I enter "936207" into the "Prov Number Red Image" image
	#And in the "Hospital Privileges" page I enter "902572" into the "Hospital ID Number Image" image
		And in the "Hospital Privileges" page I enter a random hospital into the "Hospital ID Number Image" image
		And in the "Hospital Privileges" page I enter "01/01/2014" into the "Date of Appointment Image" image
		And in the "Hospital Privileges" page I enter "NO" into the "HP 1 Image" image
		And in the "Hospital Privileges" page I enter "02022014" into the "Eff Date 1 Image" image
		And in the "Hospital Privileges" page I enter "03032014" into the "End Date 1 Image" image
		And in the "Hospital Privileges" page I enter "04042014" into the "Verification Date Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Privileges" page I should see the "Process Completed Image" image
		#And I press "F8"
		#And the test pauses for "30" seconds
		#And I press "Control + F"
		#And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		#And in the "Provider Credentialing" page I enter "938437" into the "ID Type 2" field
		#And in the "Provider Credentialing" page I press the "enter" key "1" times
		#And in the "Functions Menu" page I click on "Hospital Privileges"
		#And the test pauses for "30" seconds
		#And in the "Hospital Privileges" page I click on the "New" image
		#And the test pauses for "30" seconds
	#When in the "Hospital Privileges" page I enter "936207" into the "Prov Number Red" image
		#And in the "Hospital Privileges" page I enter a random hospital into the "Hospital ID Number Image" image
		And in the "Hospital Privileges" page I enter "01/01/2013" into the "Date of Appointment Image" image
		And in the "Hospital Privileges" page I enter "YS" into the "HP 1 Image" image
		And in the "Hospital Privileges" page I enter "02022013" into the "Eff Date 1 Image" image
		And in the "Hospital Privileges" page I enter "03032013" into the "End Date 1 Image" image
		And in the "Hospital Privileges" page I enter "04042013" into the "Verification Date Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Hospital Privileges" page I should see the "Process Completed Image" image