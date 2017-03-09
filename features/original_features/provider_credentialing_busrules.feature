@fullregression
@regression2
@credentialing
@provider
Feature: Provider Credentialing - Busrules

	As a QA Tester
	I want to test the Provider Credentialing page
	so that I know the page is functioning properly.
	
	Scenario: Add DEA Expiration Date
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And I press "Control + F"
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938437" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "DEA CDS"
		And the test pauses for "5" seconds
	When I press "Control + N"
		And in the "DEA CDS Monitoring" page I enter "R1" into the "RX" image
		And in the "DEA CDS Monitoring" page I enter "BB7796076" into the "Certificate Number" image
		And in the "DEA CDS Monitoring" page I enter "02/01/1997" into the "Eff Date" image
		And in the "DEA CDS Monitoring" page I enter "07/31/2014" into the "End Date" image
		And in the "DEA CDS Monitoring" page I enter "CV" into the "SO" image
		And I press "Control + S"
	Then in the "DEA CDS Monitoring" page I should see the "Process Completed" image
		#And in the "DEA CDS Monitoring" page I click on the "First Row Checkbox" image
		And in the "DEA CDS Monitoring" page I click on the "Delete" image
		And in the "DEA CDS Monitoring" page I click on the "OK Popup" image
		And in the "DEA CDS Monitoring" page I should see the "Process Completed" image
	
	Scenario: Add Credentialing Effective and End Dates
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
		And I press "Control + F"
		And in the "Provider Credentialing" page I enter "P" into the "ID Type" field
		And in the "Provider Credentialing" page I enter "938437" into the "ID Type 2" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
	When in the "Provider Credentialing" page I enter "01/01/2010" into the "Credential Stat 2" field
		And in the "Provider Credentialing" page I enter "12/31/9999" into the "Credential Stat 3" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
	Then in the "Provider Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Credentialing" page I should see the "Credential Stat 2" element with a value of "01/01/2010"
		And in the "Provider Credentialing" page I should see the "Credential Stat 3" element with a value of "12/31/9999"
		And in the "Provider Credentialing" page I enter " " into the "Credential Stat 2" field
		And in the "Provider Credentialing" page I enter " " into the "Credential Stat 3" field
		And in the "Provider Credentialing" page I press the "enter" key "1" times
		And in the "Provider Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Credentialing" page I should see the "Credential Stat 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Credential Stat 3" element with a value of "  "
		
	
		