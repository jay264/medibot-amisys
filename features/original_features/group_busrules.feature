@fullregression
@regression2
@group
Feature: Group - Busrules

	As a QA Tester
	I want to test the Group page fields
	so that I know the page is functioning properly.
	
	Scenario Outline: For IN, MC-MEM-1.1, 1.5, 1.6, 1.7, Add New Group, MC-MEM-1.3, Terminate an Existing Group Record, MC-MEM-1.2, Reinstate a Terminated Group Record
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Group"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Group" page I enter "a random IN number" into the "Group Number" field
		And the test pauses for "30" seconds
		And in the "Group " page I save the value of the "Group Number" element as "STORED_VALUE(1)"
		And in the "Group" page I enter "311471229" into the "EIN" field
		And in the "Group" page I enter "<Group Name>" into the "Name" field
		And in the "Group" page I enter "6150 East Broad St" into the "Address" field
		And in the "Group" page I enter "EE320" into the "Address 2" field
		And in the "Group" page I enter "a random zip code" into the "Zip" field
		And the test pauses for "30" seconds
		And in the "Group" page I click on "Contact"
		And the test pauses for "30" seconds
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I enter "6145463132" into the "Phone" field
		And in the "Group" page I enter "0" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "HM" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "CP" into the "Type" field
		And in the "Group" page I enter "3" into the "Bill Method" field
		And in the "Group" page I enter "1" into the "Bill Format" field
		And in the "Group" page I enter "1234" into the "Grp ID" field
		#clicking blank space to get out of the text field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "30" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "<Various Months>" into the "Eff Date" field
		And the test pauses for "30" seconds
		And in the "Group" page I enter "AG" into the "RY" field
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Group Billing" page I enter "NO" into the "Billing Cycle" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		And in the "Functions Menu" page I click on "Term"
		#clicking blank space to get out of the text field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "10" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And the test pauses for "30" seconds
		And in the "Group" page I enter "<Term Date>" into the "End Date 2 Unselected" image
		And the test pauses for "30" seconds
		And in the "Group" page I enter "TG" into the "RY Term" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		And I press "Control + F"
		And the test pauses for "10" seconds
		And in the "Group" page I enter "=STORED_VALUE(1)" into the "Group Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Reinstate"
		And the test pauses for "30" seconds
		And in the "Group" page I click on the "Blank Space" image
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "<Eff Date 2>" into the "Eff Date 2" image
		And the test pauses for "30" seconds
		And in the "Group" page I enter "GI" into the "RY 2" image
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		
	Examples:
		| Group Number			| Group Name					| Every Zip		| Various Months		|  Eff Date 2			| Term Date			|
		| IN1300				| Classic Preferred (HMO)		| 43001			|  01312010				|  04012012				|  02282013			|  
		| IN1300				| Essential Care (HMO)			| 43002			|  02282010				|  05012012				|  05012012			|    
		| IN1300				| Value Choice (PPO)			| 43003			|  03312010				|  06012012				|  06012012			|    
		| EG1300				| Classic Preferred (HMO)		| 43004			|  04302010				|  07012012				|  07012012			|     
		| EG1300				| Essential Care (HMO)			| 43005 		|  05302010				|  08012012				|  08012012			|   
		| EG1300				| Value Choice (PPO)			| 43006    		|  06302010				|  09012012				|  09012012			|
	
	
	Scenario Outline: For EG, MC-MEM-1.1, 1.5, 1.6, 1.7, Add New Group, MC-MEM-1.3, Terminate an Existing Group Record, MC-MEM-1.2, Reinstate a Terminated Group Record
	Given I sign in to the application
		And the test pauses for "30" seconds
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Group"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Group" page I enter "a random EG number" into the "Group Number" field
		And in the "Group " page I save the value of the "Group Number" element as "STORED_VALUE(1)"
		And in the "Group" page I enter "311471229" into the "EIN" field
		And in the "Group" page I enter "<Group Name>" into the "Name" field
		And in the "Group" page I enter "6150 East Broad St" into the "Address" field
		And in the "Group" page I enter "EE320" into the "Address 2" field
		And in the "Group" page I enter "a random zip code" into the "Zip" field
		And in the "Group" page I click on "Contact"
		And the test pauses for "30" seconds
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I enter "6145463132" into the "Phone" field
		And in the "Group" page I enter "0" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "HM" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "CP" into the "Type" field
		And in the "Group" page I enter "3" into the "Bill Method" field
		And in the "Group" page I enter "1" into the "Bill Format" field
		And in the "Group" page I enter "1234" into the "Grp ID" field
		#clicking blank space to get out of the text field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "30" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "<Various Months>" into the "Eff Date" field
		And the test pauses for "30" seconds
		And in the "Group" page I enter "AG" into the "RY" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Group Billing" page I enter "NO" into the "Billing Cycle" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Term"
		And the test pauses for "30" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And the test pauses for "30" seconds
		And in the "Group" page I enter "<Term Date>" into the "End Date 2" image
		And the test pauses for "30" seconds
		And in the "Group" page I enter "TG" into the "RY Term" image
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		And I press "Control + F"
		And the test pauses for "10" seconds
		And in the "Group" page I enter "=STORED_VALUE(1)" into the "Group Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Reinstate"
		And the test pauses for "10" seconds
		#clicking blank space to get out of the text field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "30" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "<Eff Date 2>" into the "Eff Date 2" image
		And the test pauses for "30" seconds
		And in the "Group" page I enter "GI" into the "RY 2" image
		And the test pauses for "30" seconds
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		
	Examples:
		| Group Number			| Group Name					| Every Zip		| Various Months		|  Eff Date 2			| Term Date			|
		| IN1300				| Classic Preferred (HMO)		| 43001			|  01312010				|  04012012				|  02282013			|  
		| IN1300				| Essential Care (HMO)			| 43002			|  02282010				|  05012012				|  05012012			|    
		| IN1300				| Value Choice (PPO)			| 43003			|  03312010				|  06012012				|  06012012			|    
		| EG1300				| Classic Preferred (HMO)		| 43004			|  04302010				|  07012012				|  07012012			|     
		| EG1300				| Essential Care (HMO)			| 43005 		|  05302010				|  08012012				|  08012012			|   
		| EG1300				| Value Choice (PPO)			| 43006    		|  06302010				|  09012012				|  09012012			|
	
	@test		
	Scenario: Update and Maintain Fields
	Given I sign in to the application
		And the test pauses for "30" seconds
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Group"
		And the test pauses for "30" seconds
		And I press "Control + F"
		And the test pauses for "30" seconds
		And in the "Group" page I enter "IN3538" into the "Group Number" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	When in the "Group" page I enter "a random 9 digit number" into the "EIN" field
		And in the "Group" page I enter "a random first and middle name" into the "Name" field
		And in the "Group" page I enter "a random first and middle name" into the "Contact" field
		And in the "Group" page I enter "AR" into the "CD" field
		And in the "Group" page I enter "a random first and middle name" into the "Marketing Rep" field
		And in the "Group" page I enter "7150 East Broad St" into the "Address" field
		And in the "Group" page I enter "FF320" into the "Address 2" field
		And in the "Group" page I enter "43002" into the "Zip" field
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I enter "6145463133" into the "Phone" field
		And in the "Group" page I enter "1" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "HM" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "EC" into the "Type" field
		And in the "Group" page I enter "1" into the "Bill Method" field
		And in the "Group" page I enter "2" into the "Bill Format" field
		And in the "Group" page I enter "a random number" into the "Grp ID" field
		And I press "Control + S"
		And the test pauses for "30" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed. Warning: Changing the Group Category could affect Premium Rates if GC is used as part of the Rate."
		And in the "Group" page I enter "311471229" into the "EIN" field
		And in the "Group" page I enter "Classic Preferred (HMO)" into the "Name" field
		And in the "Group" page I enter "Contact Name" into the "Contact" field
		And in the "Group" page I enter "AD" into the "CD" field
		And in the "Group" page I enter "Marketing Rep" into the "Marketing Rep" field
		And in the "Group" page I enter "6150 East Broad St" into the "Address" field
		And in the "Group" page I enter "EE320" into the "Address 2" field
		And in the "Group" page I enter "43055" into the "Zip" field
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I enter "6145463132" into the "Phone" field
		And in the "Group" page I enter "0" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "PP" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "CP" into the "Type" field
		And in the "Group" page I enter "3" into the "Bill Method" field
		And in the "Group" page I enter "1" into the "Bill Format" field
		And in the "Group" page I enter "4321" into the "Grp ID" field
		And I press "Control + S"
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed. Warning: Changing the Group Category could affect Premium Rates if GC is used as part of the Rate."
	
	Scenario Outline: MC-MEM-1.6-5 Additional Phone Numbers
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Group"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Group" page I enter "a random number" into the "Group Number" field
		And in the "Group" page I enter "Marc Maron" into the "Name" field
		And in the "Group" page I enter "6150 East Broad St" into the "Address" field
		And in the "Group" page I enter "EE320" into the "Address 2" field
		And in the "Group" page I enter "a random zip code" into the "Zip" field
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I click on "PI"
		And in the "Code File Lookup" page I click on the "<Types of Phone Numbers>" image
		And in the "Code File Lookup" page I click on the "Return Lookup Values" image
		And in the "Group" page I enter "<Phone Numbers>" into the "Phone" field
		And in the "Group" page I enter "0" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "HM" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "CP" into the "Type" field
		And in the "Group" page I enter "3" into the "Bill Method" field
		And in the "Group" page I enter "1" into the "Bill Format" field
		And in the "Group" page I enter "1234" into the "Grp ID" field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "10" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "01012014" into the "Eff Date" field
		And the test pauses for "10" seconds
		And in the "Group" page I enter "AG" into the "RY" field
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Group Billing" page I enter "NO" into the "Billing Cycle" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Group" page I should see the "Status Message" element with a value of "Process Completed."
		
	Examples:
		| Types of Phone Numbers	| Phone Numbers			|
		| BP BUSINESS PHONE			| 6145550000			|
		| EM EMAIL					| marc@maron.com		|    
		| FX FAX NUMBER				| 6145550003			|    
		| HM HOME PHONE				| 6145550004			|     
		| MB MOBILE	PHONE			| 6145550005			|   
		| OT OTHER PHONE NUMBER		| 6145550006			| 
		| PH PHONE NUMBER			| 6145555007			|
		| P TEST PHONE CODE			| 6145555008			|
	
	
	Scenario: MC-MEM-1.6-10 Enter Group Remarks
	Given I sign in to the application
		And in the "Home" page I click on "Membership Processing"
		And the test pauses for "30" seconds
		And in the "Membership Processing" page I click on "Group"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	When in the "Group" page I enter "a random number" into the "Group Number" field
		And in the "Group" page I enter "Marc Maron" into the "Name" field
		And in the "Group" page I enter "6150 East Broad St" into the "Address" field
		And in the "Group" page I enter "EE320" into the "Address 2" field
		And in the "Group" page I enter "a random zip code" into the "Zip" field
		And in the "Group" page I enter "USA" into the "Country" field
		And in the "Group" page I enter "0" into the "Adv Notification" field
		And in the "Group" page I enter "MC" into the "Business Unit" field
		And in the "Group" page I enter "HM" into the "Program Number" field
		And in the "Group" page I enter "MA" into the "Carrier Field" field
		And in the "Group" page I enter "CP" into the "Type" field
		And in the "Group" page I enter "3" into the "Bill Method" field
		And in the "Group" page I enter "1" into the "Bill Format" field
		And in the "Group" page I enter "1234" into the "Grp ID" field
		#clicking Term to get out of the text field
		And in the "Group" page I click on the "Blank Space" image
		And the test pauses for "10" seconds
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And I press "Arrow Down"
		And in the "Group" page I enter "01012014" into the "Eff Date" field
		And the test pauses for "10" seconds
		And in the "Group" page I enter "AG" into the "RY" field
		And the test pauses for "10" seconds
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Group Billing" page I enter "NO" into the "Billing Cycle" image
		And I press "Control + S"
		And the test pauses for "30" seconds 
		And in the "Functions Menu" page I click on "Remarks Alternate"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And in the "Remarks Maintenance" page I enter "This is a test remark summary" into the "Remark Summary" image
		And I press "Control + S"
		And the test pauses for "10" seconds
		And in the "Remarks Maintenance" page I click on the "Append" image
		And in the "Remarks Maintenance" page I enter "This is a test remark text" into the "Remark Text 1" image
		And I press "Control + S"
		And the test pauses for "10" seconds
	Then in the "Remarks Maintenance" page I should see the "Process Completed" image
		