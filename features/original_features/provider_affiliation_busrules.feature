@fullregression
@regression1
@provider
Feature: Provider Affiliation - Busrules

	As a QA Tester
	I want to test the Provider Affiliation page fields
	so that I know the page is functioning properly.
	
	Scenario: Verify Required Provider Affiliation Fields
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Affiliation"
	When I press "Control + N"
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the text "Error: Required field(s) must be entered;SRCH_PROV,YMDEFF,BUSINESS_UNIT,PAYTO,PAYCLASS,PROG_NBR,HAT_CODE,CLAIM_TYPE,STATUS_X"
	
	Scenario: Select Provider HMO
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "HM" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
	Scenario: Select Provider PPO
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
	
	Scenario: Pay to Group and Link Financial Tax Data
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "A934" into the "Practice Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "G" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And in the "Provider Affiliation" page I enter "24" into the "IRS Number 1" field
		And in the "Provider Affiliation" page I enter "123456" into the "IRS Number 2" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
	
	Scenario Outline: Add New Patient Indicator Status
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "<status>" into the "Accept" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| status |
		| YS     |
		| NO     |
	
	Scenario Outline: Edit New Patient Indicator Status
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Affiliation"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "938437" into the "ID 1" field
		And in the "Provider Affiliation" page I press the "enter" key "1" times
	When in the "Provider Affiliation" page I enter "<status>" into the "Accept" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| status |
		| YS     |
		| NO     |
	
	Scenario: Add New Medicare Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
		And the test pauses for "30" seconds
	When I press "Control + N"
	And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And in the "Provider Affiliation" page I enter "BA4069781" into the "Medicare" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
	
	Scenario Outline: Edit Medicare Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Affiliation"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "938437" into the "ID 1" field
		And in the "Provider Affiliation" page I press the "enter" key "1" times
	When in the "Provider Affiliation" page I enter "<number>" into the "Medicare" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| number    |
		| =BLANK()  |
		| BA4069781 |
	
	Scenario: Add New License Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
	And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And in the "Provider Affiliation" page I enter "938437" into the "License Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
	
	
	Scenario Outline: Edit License Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Affiliation"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "938437" into the "ID 1" field
		And in the "Provider Affiliation" page I press the "enter" key "1" times
	When in the "Provider Affiliation" page I enter "<number>" into the "License Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| number    |
		| =BLANK()  |
		| 12345 	|	
		| 54321	    |
	
	Scenario: Add New DEA Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
	And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And in the "Provider Affiliation" page I enter "938437" into the "DEA Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
	
	
	Scenario Outline: Edit DEA Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Affiliation"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "938437" into the "ID 1" field
		And in the "Provider Affiliation" page I press the "enter" key "1" times
	When in the "Provider Affiliation" page I enter "<number>" into the "DEA Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| number    |
		| =BLANK()  |
		| 12345 	|
		| 54321		|

	Scenario Outline: Add New Acting as PCP/Specialist Provider
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
	When I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "<code>" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "PA" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| code |
		| PC   |
		| SP   |	
	
	Scenario Outline: Add New Network/Non-Network Provider
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I save the value of the "Prov Number" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Header" page I hover on "Provider"
		And in the "Header" page I click on "Provider Affiliation"
		And the test pauses for "30" seconds
	When I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Affiliation" page I enter "=STORED_VALUE(1)" into the "ID 1" field
		And in the "Provider Affiliation" page I enter "02/01/1997" into the "Eff Date 1" field
		And in the "Provider Affiliation" page I enter "02/01/9999" into the "Eff Date 2" field
		And in the "Provider Affiliation" page I enter "MC" into the "Busn Unit" field
		And in the "Provider Affiliation" page I enter "PP" into the "Program Number" field
		And in the "Provider Affiliation" page I enter "PC" into the "Hat Code" field
		And in the "Provider Affiliation" page I enter "M" into the "Claim Type" field
		And in the "Provider Affiliation" page I enter "P" into the "Payto" field
		And in the "Provider Affiliation" page I enter "<code>" into the "Status" field
		And in the "Provider Affiliation" page I enter "HOSP100" into the "Pay Class" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Affiliation" page I should see the "Error Message" element with a value of "Process Completed."
		
		Examples:
		| code |
		| PA   |
		| NP   |	
	
	Scenario: Existing Affiliation Remarks (Provider Attributes) 
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	When in the "Functions Menu" page I click on "Alternate Identifiers"
		And the test pauses for "30" seconds
		And in the "Alternate Identifier Definition" page I enter "AF" into the "AMISYS Reference Id 1" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		#And in the "Alternate Identifier Definition" page I enter "938437" into the "AMISYS Reference Id 2" image
		#And I press "Control + S"
	Then in the "Alternate Identifier Definition" page I should see the "Alternate Identifier Definition Row 1" image
		And I press "F8"
		
	Scenario: New Affiliation Remarks (Provider Attributes) 
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	When in the "Functions Menu" page I click on "Alternate Identifiers"
		And the test pauses for "30" seconds
		And in the "Alternate Identifier Definition" page I click on the "New" image
		And the test pauses for "30" seconds
		And in the "Alternate Identifier Detail Maintenance" page I click on the "AMISYS Reference Id 1" image
		And the test pauses for "10" seconds
		And in the "Alternate Identifier Detail Maintenance" page I click on the "AF Affiliation Unselected" image
		And the test pauses for "10" seconds
		And in the "Alternate Identifier Detail Maintenance" page I enter "938437" into the "AMISYS Reference Id 2" image
		And in the "Alternate Identifier Detail Maintenance" page I enter "SN" into the "External Id 1" image
		And in the "Alternate Identifier Detail Maintenance" page I enter "TEST 3" into the "External Id 2" image
		And in the "Alternate Identifier Detail Maintenance" page I enter "03011999" into the "Effective Date" image
		And in the "Alternate Identifier Detail Maintenance" page I enter "04021999" into the "Ending Date" image
		#And I press "Control + S"
	#Then in the "Alternate Identifier Detail Maintenance" page I should see the "Process Completed" image
		#And I press "F8"
		#And in the "Alternate Identifier Definition" page I should see the "Alternate Identifier Recently Added Row" image
		
		# void the alternate identifier and clean up
		
		#And in the "Alternate Identifier Definition" page I click on the "Test Identifier Radio" image
		#And in the "Alternate Identifier Definition" page I click on the "View Detail" image
		#And in the "Alternate Identifier Detail Maintenance" page I click on the "Void" image
		#And in the "Alternate Identifier Detail Maintenance" page I enter "Y" into the "Do You Want to Void" image
		#And I press "Control + S"
		And I press "F8"
		And the test pauses for "10" seconds
		And I press enter graphically
		And I press "F8"
		
		
		
	
		