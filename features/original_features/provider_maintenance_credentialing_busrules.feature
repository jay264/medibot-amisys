@fullregression
@regression2
@provider
Feature: Provider Maintenance Credentialing - Busrules

	As a QA Tester
	I want to test the Provider Maintenance Credentialing page fields
	so that I know the page is functioning properly.
	
	Scenario: Verify Required Fields
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
	When I press "Control + N"
		And the test pauses for "30" seconds
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the text "Error: Required field(s) must be entered;ADDRESS1,PROV_CAT"
	
	Scenario Outline: Add New Provider
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And the test pauses for "30" seconds
	When I press "Control + N"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "<provider type>" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "Test" into the "First Name" field
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Last Name" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		
	Examples:
	| provider type |
	| AS 			|
	| DN 			|
	| DA 			|
	| DM 			|
	| HH 			|
	| HS 			|
	| HP 			|
	| LB 			|
	| NF 			|
	| RX 			|
	| PY 			|
	| PG 			|
	| TR 			| 
	
	
	Scenario: Edit Existing Provider
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
	When I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		
		#verify original values
		
		And in the "Provider Maintenance Credentialing" page I should see the "Prov Number" element with a value of "938437"
		And in the "Provider Maintenance Credentialing" page I should see the "Provider Type" element with a value of "HH"
		And in the "Provider Maintenance Credentialing" page I should see the "Inst" element with a value of "BLAKE'S TEST INSTITUTION"
		And in the "Provider Maintenance Credentialing" page I should see the "Address 1" element with a value of "123 TEST STREET"
		And in the "Provider Maintenance Credentialing" page I should see the "City" element with a value of "NEW ALBANY"
		And in the "Provider Maintenance Credentialing" page I should see the "St" element with a value of "OH"
		And in the "Provider Maintenance Credentialing" page I should see the "Zip" element with a value of "43054"
		And in the "Provider Maintenance Credentialing" page I should see the "County" element with a value of "FRANKLIN COUNTY"
		
		#edit values
		
		And in the "Provider Maintenance Credentialing" page I enter "Test Institution" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "789 Testing Lane" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "Reynoldsburg" into the "City" field
		And in the "Provider Maintenance Credentialing" page I enter "43068" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And I navigate to the Home page
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "938499" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		
		#verify new values
		
		And in the "Provider Maintenance Credentialing" page I should see the "Prov Number" element with a value of "938499"
		And in the "Provider Maintenance Credentialing" page I should see the "Provider Type" element with a value of "HH"
		And in the "Provider Maintenance Credentialing" page I should see the "Inst" element with a value of "TEST INSTITUTION"
		And in the "Provider Maintenance Credentialing" page I should see the "City" element with a value of "REYNOLDSBURG"
		And in the "Provider Maintenance Credentialing" page I should see the "St" element with a value of "OH"
		And in the "Provider Maintenance Credentialing" page I should see the "Zip" element with a value of "43068"
		And in the "Provider Maintenance Credentialing" page I should see the "County" element with a value of "FRANKLIN COUNTY"
		
		#change values back
		
		And in the "Provider Maintenance Credentialing" page I enter "Blake's Test Institution" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test Street" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "New Albany" into the "City" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
	
		
	Scenario: Add New NPI
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "1609849264" into the "NPI" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed. Warning:Prov# 900008 already on file with this NPI."
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element which is not empty
	
	
	Scenario: Edit Existing NPI Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element with a value of "  "
	When in the "Provider Maintenance Credentialing" page I enter "1609849264" into the "NPI" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed. Warning:Prov# 900008 already on file with this NPI."
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element with a value of "1609849264"
		And in the "Provider Maintenance Credentialing" page I enter "  " into the "NPI" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element with a value of "  "
	
	
	Scenario: Add New Provider Speciality
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "CA" into the "Spec 1" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Spec 1" element with a value of "CA"
	
	
	Scenario: Edit Existing Provider Speciality 
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element with a value of "  "
	When in the "Provider Maintenance Credentialing" page I enter "CA" into the "Spec 1" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Spec 1" element with a value of "CA"
		And in the "Provider Maintenance Credentialing" page I enter "  " into the "Spec 1" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Spec 1" element with a value of "  "
	
	
	Scenario: Add New Language
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "99" into the "Language 1" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Language 1" element with a value of "99"
	
	
	Scenario: Edit Existing Language
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "NPI" element with a value of "  "
	When in the "Provider Maintenance Credentialing" page I enter "99" into the "Language 1" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Language 1" element with a value of "99"
		And in the "Provider Maintenance Credentialing" page I enter "  " into the "Language 1" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Language 1" element with a value of "  "	
	
	
	Scenario: Add New Gender
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I click on "Sex"
		And in the "Provider Maintenance Credentialing" page I select "M - Male" from the "Sex Select" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Sex" element with a value of "M"
	
	
	Scenario: Edit Existing Gender
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Sex" element with a value of "M"
	When in the "Provider Maintenance Credentialing" page I click on "Sex"
		And in the "Provider Maintenance Credentialing" page I select "F - Female" from the "Sex Select" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Sex" element with a value of "F"
		And in the "Provider Maintenance Credentialing" page I click on "Sex"
		And in the "Provider Maintenance Credentialing" page I select "M - Male" from the "Sex Select" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Sex" element with a value of "M"
		
	
	Scenario: Add New Birth Date
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "01/01/1970" into the "Birth Date" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Birth Date" element with a value of "01/01/1970"
	
	
	Scenario: Edit Existing Birth Date
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Birth Date" element with a value of "  "
	When in the "Provider Maintenance Credentialing" page I enter "01/01/1970" into the "Birth Date" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Birth Date" element with a value of "01/01/1970"
		And in the "Provider Maintenance Credentialing" page I enter "  " into the "Birth Date" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Birth Date" element with a value of "  "	
	
	
	Scenario: Add New Title
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "M.D." into the "Title" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Title" element with a value of "M.D."
	
	
	Scenario: Edit Existing Title
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Title" element with a value of ""
	When in the "Provider Maintenance Credentialing" page I enter "M.D." into the "Title" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Title" element with a value of "M.D."
		And in the "Provider Maintenance Credentialing" page I enter "  " into the "Title" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Title" element with a value of "  "
	
	
	Scenario: Add New First/Middle Name
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "PY" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "a random first and middle name" into the "First Name" field
		And in the "Provider Maintenance Credentialing" page I save the value of the "First Name" element as "STORED_VALUE(1)"
		And in the "Provider Maintenance Credentialing" page I enter "a random last name" into the "Last Name" field
		And I press "Control + S"
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "First Name" element with a value of "=STORED_VALUE(1)"
	
	
	Scenario: Edit Existing First/Middle Name
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I enter "PY" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "First Name" element with a value of "JAMES JOHN"
	When in the "Provider Maintenance Credentialing" page I enter "John James" into the "First Name" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "First Name" element with a value of "JOHN JAMES"
		And in the "Provider Maintenance Credentialing" page I enter "James John" into the "First Name" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "First Name" element with a value of "JAMES JOHN"
	
	
	Scenario: Add New Last Name
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Provider Maintenance Credentialing" page I enter "PY" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And in the "Provider Maintenance Credentialing" page I enter "James" into the "First Name" field
		And in the "Provider Maintenance Credentialing" page I enter "a random last name" into the "Last Name" field
		And in the "Provider Maintenance Credentialing" page I save the value of the "Last Name" element as "STORED_VALUE(1)"
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Last Name" element with a value of "=STORED_VALUE(1)"
	
	
	Scenario: Edit Existing Last Name
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I enter "PY" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Last Name" element with a value of "BOND"
	When in the "Provider Maintenance Credentialing" page I enter "Bondsies" into the "Last Name" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
	Then in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Last Name" element with a value of "BONDSIES"
		And in the "Provider Maintenance Credentialing" page I enter "Bond" into the "Last Name" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
		And in the "Provider Maintenance Credentialing" page I should see the "Last Name" element with a value of "BOND"
	
	
	Scenario: Additional Addresses
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I enter "938437" into the "Prov Number" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
		And the test pauses for "10" seconds
		And in the "Functions Menu" page I click on "Address"
		And the test pauses for "30" seconds
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Default Addresses Press Next For Mailing" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Default Addresses Press Next for Mailing Subtypes" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Mailing Subtype Addresses Press Next For Financial" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Financial Addresses Press Next For Financial Subtypes" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Financial Subtype Addresses Press Next For Office" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Office Addresses Press Next For Office Subtypes" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Office Subtype Addresses Press Next For Paypoint" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Paypoint Addresses Press Next for Billpoint" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of  Billpoint Addresses Press Next for Subtype Address" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Subtype Address Press Next For Protected Addresses" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Protected Addresses Press Next For Claim Contact" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of  Claim Contact Press Next For Technical Contact" image	
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Technical Contact Press Next For Custodial Parent Addresses" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Custodial Parent Addresses Press Next For Responsible Person Addresses" image
		And in the "Address Maintenance" page I click on the "Next  Record" image
	Then in the "Address Maintenance" page I should see the "End of Responsible Person Addresses Press Next" image
	
	
	