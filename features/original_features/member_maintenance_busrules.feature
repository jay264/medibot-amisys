#@regression1
#@member
Feature: Member Maintenance - Busrules

	As a QA Tester
	I want to test the Member page
	so that I know the page is functioning properly.
	
	Scenario: MC-MEM-2.2, 2.3, 2.4 Creating and Saving New Members and Enroll Back Three Years
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	#When in the "Contract Maintenance" page I enter "A" into the "Contract Number" field
	#And the test pauses for "10" seconds
	#And in the "Contract Maintenance" page I click on "First"
	#And the test pauses for "10" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		#And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "EF" into the "CY" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "01012000" into the "Eff Date Image" image
		And in the "Member Maintenance" page I enter "01019999" into the "End Date Image" image
		#And in the "Member Maintenance" page I enter "911397" into the "Provider Number Image" image
		And in the "Member Maintenance" page I enter "935675" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Address Maintenance" page I enter "D" into the "Address Type" image
		And in the "Address Maintenance" page I enter "123 Test ST" into the "Address" image
		And in the "Address Maintenance" page I enter "V3" into the "Reason RY" image
		And in the "Address Maintenance" page I enter "New Albany" into the "City" image
		And in the "Address Maintenance" page I enter "OH" into the "State" image
		And in the "Address Maintenance" page I enter "43054" into the "Zip" image
		And in the "Address Maintenance" page I enter "BP" into the "Phone Info 1" image
		And in the "Address Maintenance" page I enter "5550000001" into the "Bus Phon" image
		And in the "Address Maintenance" page I enter "FX" into the "Phone Info 2" image
		And in the "Address Maintenance" page I enter "5550000002" into the "Fax" image
		And in the "Address Maintenance" page I enter "HM" into the "Phone Info 3" image
		And in the "Address Maintenance" page I enter "5550000003" into the "Home" image
		And in the "Address Maintenance" page I enter "email@address.com" into the "EMAIL Address" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + S"
		#then i should see something
		
	Scenario: Changing Plans
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Address Maintenance" page I enter "D" into the "Address Type" image
		And in the "Address Maintenance" page I enter "123 Test ST" into the "Address" image
		And in the "Address Maintenance" page I enter "V3" into the "Reason RY" image
		And in the "Address Maintenance" page I enter "New Albany" into the "City" image
		And in the "Address Maintenance" page I enter "OH" into the "State" image
		And in the "Address Maintenance" page I enter "43054" into the "Zip" image
		And in the "Address Maintenance" page I enter "BP" into the "Phone Info 1" image
		And in the "Address Maintenance" page I enter "5550000001" into the "Bus Phon" image
		And in the "Address Maintenance" page I enter "FX" into the "Phone Info 2" image
		And in the "Address Maintenance" page I enter "5550000002" into the "Fax" image
		And in the "Address Maintenance" page I enter "HM" into the "Phone Info 3" image
		And in the "Address Maintenance" page I enter "5550000003" into the "Home" image
		And in the "Address Maintenance" page I enter "email@address.com" into the "EMAIL Address" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "=STORED_VALUE(1)" into the "Contract Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Contract Maintenance" page I enter "IN9007MEDN" into the "Division Number" field
		And in the "Contract Maintenance" page I enter "=TODAYS_DATE()" into the "Effective Date" field
		And in the "Contract Maintenance" page I enter "CG" into the "RY" field
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And in the "Contract Maintenance" page the "Error Message" element should have a value of "Records posted to database."
		
	Scenario: Terminating and Reinstating a Contract
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Address Maintenance" page I enter "D" into the "Address Type" image
		And in the "Address Maintenance" page I enter "123 Test ST" into the "Address" image
		And in the "Address Maintenance" page I enter "V3" into the "Reason RY" image
		And in the "Address Maintenance" page I enter "New Albany" into the "City" image
		And in the "Address Maintenance" page I enter "OH" into the "State" image
		And in the "Address Maintenance" page I enter "43054" into the "Zip" image
		And in the "Address Maintenance" page I enter "BP" into the "Phone Info 1" image
		And in the "Address Maintenance" page I enter "5550000001" into the "Bus Phon" image
		And in the "Address Maintenance" page I enter "FX" into the "Phone Info 2" image
		And in the "Address Maintenance" page I enter "5550000002" into the "Fax" image
		And in the "Address Maintenance" page I enter "HM" into the "Phone Info 3" image
		And in the "Address Maintenance" page I enter "5550000003" into the "Home" image
		And in the "Address Maintenance" page I enter "email@address.com" into the "EMAIL Address" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "=STORED_VALUE(1)" into the "Contract Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Term"
		And the test pauses for "30" seconds
		And in the "Contract Maintenance" page I enter "=TODAYS_DATE()" into the "End Date" field
		And in the "Contract Maintenance" page I enter "TM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
	Then in the "Contract Maintenance" page the "Error Message" element should have a value of "Records posted to database"
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "History Summary"
		And the test pauses for "30" seconds
		And in the "Contract History Summary" page I enter "IN9000 MEDN" into the "Division Number" field
		And in the "Contract History Summary" page I enter "05012014" into "Effective Date" field
		And in the "Contract History Summary" page I enter "MI" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		
	Scenario: Terminate Member at Time of Death
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "=STORED_VALUE(1)" into the "Contract Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "=TODAYS_DATE()" into the "Death" field
		And I enter "=TODAYS_DATE()" into the "End Date 2" field
		And I enter "10" into the "RY 2" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I should see the text "BLAHBLAHBLAHBLAHBLAH"
		
	Scenario Outline: Terminate Members Due to Various Reasons and Dates
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "=STORED_VALUE(1)" into the "Contract Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "a future current or retroactive termination date" into the "End Date 2" field
		And in the "Member Maintenance" page I enter "<Cancellation Reason>" into the "RY 2" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I should see the text "BLAHBLAHBLAHBLAHBLAH"
		
	Examples:
		| Cancellation Reason		|
		| 19						|
		| TM						|
		| 10						|
		
	Scenario: Update, Term, and Change PCP on a Member
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" image
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex Image" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth Image" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY Image" image
		And in the "Member Maintenance" page I enter "CH" into the "CL Image" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number Image" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "=STORED_VALUE(1)" into the "Contract Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "PCP Summary"
		And the test pauses for "30" seconds
		And in the "PCP History Summary" page I click on the "Append" image
		And in the "PCP History Summary" page I enter "=TODAYS_DATE()" into the "Eff 1" image
		And in the "PCP History Summary" page I enter "01019999" into the "End 1" image
		And in the "PCP History Summary" page I enter "999999" into the "PCP 1" image
		And in the "PCP History Summary" page I enter "TP" into the "RY 1" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "PCP History Summary" page I enter 
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I should see the text "BLAHBLAHBLAHBLAHBLAH"
		
	Scenario: Update, Term, and Change PCP on a Member
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Contract Maintenance"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Contract Maintenance" page I enter "a random number" into the "Contract Number" field
		And in the "Contract Maintenance" page I save the value of the "Contract Number" element as "STORED_VALUE(1)"
		And in the "Contract Maintenance" page I enter "a random first and middle name" into the "First" field
		And in the "Contract Maintenance" page I enter "Q" into the "Middle" field
		And in the "Contract Maintenance" page I enter "a random last name" into the "Last" field
		And in the "Contract Maintenance" page I enter "123 Test St" into the "Address" field
		And in the "Contract Maintenance" page I enter "USA" into the "Country" field
		And in the "Contract Maintenance" page I enter "Jr" into the "Suffix" field
		And in the "Contract Maintenance" page I enter "Mr" into the "Pre" field
		And in the "Contract Maintenance" page I enter "43054" into the "Zip" field
		And in the "Contract Maintenance" page I enter "5550000001" into the "Phone 1" field
		And in the "Contract Maintenance" page I enter "email@address.com" into the "EMAIL Address" field
		And in the "Contract Maintenance" page I enter "IN9000MEDN" into the "Division" field
		And in the "Contract Maintenance" page I enter "NM" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Member Maintenance" page I enter "M" into the "Sex" image
		And in the "Member Maintenance" page I enter "01011955" into the "Birth" image
		And in the "Member Maintenance" page I enter "09" into the "Birth Seq Image" image
		And in the "Member Maintenance" page I enter "NM" into the "RY" image
		And in the "Member Maintenance" page I enter "CH" into the "CL" image
		And in the "Member Maintenance" page I enter "935675      0001" into the "Provider Number" image
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Post"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Remarks"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And in the "Remarks Maintenance" page I enter "This is a test Remark Summary" into the "Remark Summary" image
		And in the "Remarks Maintenance" page I enter "This is a test Remark Text" into the "Remark Text 1" image
		And I press "Control + S"
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I enter "This is a test appended Remark Text" into the "Remark Text 2" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Remarks Maintenance" page I should see the "Process Completed" image
		And in the "Remarks Maintenance" page I should see the "Completed Remark Summary" image
		And in the "Remarks Maintenance" page I click on the "Delete" image
		And in the "Remarks Maintenance" page I click on the "OK Popup" image
		And I press "F8"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Void"
		And the test pauses for "30" seconds 
		And I press "Control + S"
		