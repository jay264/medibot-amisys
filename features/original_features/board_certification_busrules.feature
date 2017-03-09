@fullregression
@regression1
@credentialing
Feature: Board Certification - Busrules

	As a QA Tester
	I want to test the Board Certification page
	so that I know the page is functioning properly.
	
	Scenario: Add New Certification (Code, Eff/End Dates)
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938753" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "5" seconds
		And in the "Functions Menu" page I click on "More"
		And the test pauses for "5" seconds
		And in the "Functions Menu" page I click on "Board Cert"
		And the test pauses for "30" seconds
	When I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Board Certification" page I enter "938753" into the "Prov Number Blank" image
		And in the "Board Certification" page I enter "48" into the "SP Blank" image
		#And in the "Board Certification" page I enter "PODIATRY" into the "Speciality" image
		And in the "Board Certification" page I enter "05/30/2003" into the "Eff Date Blank" image
		And in the "Board Certification" page I enter "05/30/9999" into the "End Date Blank" image
		And in the "Board Certification" page I enter "CV" into the "SO Blank" image
		And in the "Board Certification" page I enter "CR" into the "CE Blank" image
		#And in the "Board Certification" page I enter "CERTIFIED" into the "Cert Status" image
		And in the "Board Certification" page I enter "12345" into the "Cert Number Blank" image
		And in the "Board Certification" page I click on the "Save" image
		And the test pauses for "30" seconds
	Then in the "Board Certification" page I should see the "Process Completed" image
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Board Certification" page I enter "938753" into the "Prov Number Blank" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Board Certification" page I click on the "First Row Checkbox" image
		#And in the "Board Certification" page I click on the "Delete" image
		And I press "Control + S"
		And in the "Board Certification" page I should see the "Process Completed" image
		
	Scenario: Edit Existing Board Certification
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938753" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "5" seconds
		And in the "Functions Menu" page I click on "More"
		And the test pauses for "5" seconds
		And in the "Functions Menu" page I click on "Board Cert"
		And the test pauses for "30" seconds
		#change the values
	When in the "Board Certification" page I enter "48" into the "SP" image
		And in the "Board Certification" page I enter "05/30/2003" into the "Eff Date" image
		And in the "Board Certification" page I enter "05/30/9999" into the "End Date" image
		#And in the "Board Certification" page I enter "B1" into the "SO" image
		And in the "Board Certification" page I enter "CP" into the "CE" image
		And in the "Board Certification" page I enter "54321" into the "Cert Number" image
		And in the "Board Certification" page I click on the "Save" image
		And the test pauses for "30" seconds
	Then in the "Board Certification" page I should see the "Process Completed" image
		And the test pauses for "30" seconds
		#change the values back
		And in the "Board Certification" page I enter "08" into the "SP Alt" image
		And in the "Board Certification" page I enter "07/11/2003" into the "Eff Date Alt" image
		And in the "Board Certification" page I enter "12/31/2013" into the "End Date Alt" image
		#And in the "Board Certification" page I enter "C1" into the "SO Alt" image
		And in the "Board Certification" page I enter "CR" into the "CE Alt" image
		And in the "Board Certification" page I enter "12345" into the "Cert Number Alt" image
		And in the "Board Certification" page I click on the "Save" image
		And the test pauses for "30" seconds
	Then in the "Board Certification" page I should see the "Process Completed" image
		