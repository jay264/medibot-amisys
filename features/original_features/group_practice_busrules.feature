@fullregression
@regression1
@group
Feature: Group Practice - Busrules

	As a QA Tester
	I want to test the Provider Affiliation page fields
	so that I know the page is functioning properly.
	
	Scenario: Add Group Practice Affiliation - HMO
	Given I sign in to the application
		#create new group
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Group Practice"
		And I press "Control + N"
		And in the "Group Practice" page I save the value of the "Practice" element as "STORED_VALUE(1)"
		And in the "Group Practice" page I enter "HH" into the "Provider Type" field
		And in the "Group Practice" page I enter "a random number" into the "Name" field
		And in the "Group Practice" page I enter "123 Test St" into the "Address 1" field
		And in the "Group Practice" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		#And in the "Group Practice" page I save the value of the "Practice" element as "STORED_VALUE(1)"
		And in the "Group Practice" page I should see the "Error Message" element with a value of "Process Completed."
		#create new provider
		And in the "Header" page I hover on "Credentialing"
		And in the "Header" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(2)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	#create affiliation
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(2)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "Practice Number" field
		And in the "Provider Affiliation" page I enter "PCP" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "M" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PG" into the "Type" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "SQ" into the "Pay Disc" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
	Scenario: Add Group Practice Affiliation - PPO
	Given I sign in to the application
		#create new group
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Group Practice"
		And I press "Control + N"
		And in the "Group Practice" page I save the value of the "Practice" element as "STORED_VALUE(1)"
		And in the "Group Practice" page I enter "HH" into the "Provider Type" field
		And in the "Group Practice" page I enter "a random number" into the "Name" field
		And in the "Group Practice" page I enter "123 Test St" into the "Address 1" field
		And in the "Group Practice" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		#And in the "Group Practice" page I save the value of the "Practice" element as "STORED_VALUE(1)"
		And in the "Group Practice" page I should see the "Error Message" element with a value of "Process Completed."
		#create new provider
		And in the "Header" page I hover on "Credentialing"
		And in the "Header" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(2)"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(2)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	#create affiliation
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(2)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "Practice Number" field
		And in the "Provider Affiliation" page I enter "PCP" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "M" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PG" into the "Type" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "SQ" into the "Pay Disc" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."