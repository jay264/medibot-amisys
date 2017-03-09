@fullregression
@regression2
@credentialing
Feature: Board Certification - Validate

	As a QA Tester
	I want to test the Board Certification page
	so that I know the page is displaying properly.
	
	Scenario: Validate Board Certification Page
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And I press "Control + F"
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "937360" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And in the "Functions Menu" page I click on "More"
		And the test pauses for "5" seconds
	When in the "Functions Menu" page I click on "Board Cert"
	And the test pauses for "30" seconds
	Then in the "Board Certification" page I should see the "Full Screen" image
	#Then in the "Board Certification" page I should see the "Prov Number" image
		#And in the "Board Certification" page I should see the "Name" image
		#And in the "Board Certification" page I should see the "SP" image
		#And in the "Board Certification" page I should see the "Speciality Empty" image
		#And in the "Board Certification" page I should see the "Eff Date Blank" image
		#And in the "Board Certification" page I should see the "End Date Empty" image
		#And in the "Board Certification" page I should see the "Pri Reg Empty" image
		#And in the "Board Certification" page I should see the "OP Number Empty" image
		#And in the "Board Certification" page I should see the "Verification Date Empty" image
		#And in the "Board Certification" page I should see the "SO Empty" image
		#And in the "Board Certification" page I should see the "CE Empty" image
		#And in the "Board Certification" page I should see the "Cert Status Empty" image
		#And in the "Board Certification" page I should see the "Cert Number Empty" image
		#And in the "Board Certification" page I should see the "AT Empty" image
		And I press "F8"