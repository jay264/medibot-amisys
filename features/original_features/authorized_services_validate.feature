@fullregression
@regression2
@authorizations
Feature: Authorized Services - Validate

	As a QA Tester
	I want to validate the Authorized Services page fields
	so that I know the page is displaying properly.
	
	Scenario: Verify Authorized Services Page
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + F"
		And in the "Certification" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Authorized Svcs"
		And the test pauses for "5" seconds 
		And I press "Control + N"
		And the test pauses for "30" seconds
	#Then in the "Authorized Services" page I should see the "Authorized Services Termed" image
		And in the "Authorized Services" page I should see the "Authorized Services Tab" image
		And in the "Authorized Services" page I should see the "Request Tab" image
		And in the "Authorized Services" page I should see the "Auth Number" image
		And in the "Authorized Services" page I should see the "Member Number" image
		And in the "Authorized Services" page I should see the "DPID Number 1" image
		And in the "Authorized Services" page I should see the "DPID Number 2" image
		And in the "Authorized Services" page I should see the "Discharge Plan" image
		And in the "Authorized Services" page I should see the "Case" image
		And in the "Authorized Services" page I should see the "Other Management" image
		And in the "Authorized Services" page I should see the "Record Number" image
		And in the "Authorized Services" page I should see the "Original 1" image
		And in the "Authorized Services" page I should see the "Original 2" image
		And in the "Authorized Services" page I should see the "Original 3" image
		And in the "Authorized Services" page I should see the "Original 4" image
		And in the "Authorized Services" page I should see the "Received" image
		And in the "Authorized Services" page I should see the "Amt Allow" image
		And in the "Authorized Services" page I should see the "Amt Pended" image
		And in the "Authorized Services" page I should see the "Template Number" image
		And in the "Authorized Services" page I should see the "How Many Requested" image
		And in the "Authorized Services" page I should see the "Amount Requested" image
		And in the "Authorized Services" page I should see the "Dates 1 Requested" image
		And in the "Authorized Services" page I should see the "Dates 2 Requested" image
		And in the "Authorized Services" page I should see the "Count" image
		And in the "Authorized Services" page I should see the "How Many Authorized" image
		And in the "Authorized Services" page I should see the "Amount Authorized" image
		And in the "Authorized Services" page I should see the "Dates 1 Authorized" image
		And in the "Authorized Services" page I should see the "Dates 2 Authorized" image
		And in the "Authorized Services" page I should see the "Ref Prov Number 1" image
		And in the "Authorized Services" page I should see the "Ref Prov Number 2" image
		And in the "Authorized Services" page I should see the "POR" image
		And in the "Authorized Services" page I should see the "Claim Type" image
		And in the "Authorized Services" page I should see the "Prov 1" image
		And in the "Authorized Services" page I should see the "Prov 2" image
		And in the "Authorized Services" page I should see the "SP" image
		And in the "Authorized Services" page I should see the "Prov Status" image
		And in the "Authorized Services" page I should see the "Group Prac Number" image
		And in the "Authorized Services" page I should see the "Office Number" image
		And in the "Authorized Services" page I should see the "Location" image
		And in the "Authorized Services" page I should see the "Diag Number 1" image
		And in the "Authorized Services" page I should see the "Diag Number 2" image
		And in the "Authorized Services" page I should see the "Alt Op" image
		And in the "Authorized Services" page I should see the "Treat Type" image
		And in the "Authorized Services" page I should see the "Proc Class" image
		And in the "Authorized Services" page I should see the "ML/TS" image
		And in the "Authorized Services" page I should see the "More" image
		And in the "Authorized Services" page I should see the "Proc Number" image
		And in the "Authorized Services" page I should see the "End Procedure" image
		And in the "Authorized Services" page I should see the "Alt Op 2" image
		And in the "Authorized Services" page I should see the "M1" image
		And in the "Authorized Services" page I should see the "M2" image
		And in the "Authorized Services" page I should see the "Extent of Care" image
		And in the "Authorized Services" page I should see the "Auth Type" image
		And in the "Authorized Services" page I should see the "Phys Approv" image
		And in the "Authorized Services" page I should see the "Phys Approv Date" image
		And in the "Authorized Services" page I should see the "Transfer" image
		And in the "Authorized Services" page I should see the "Transfer Date" image
		And in the "Authorized Services" page I should see the "Reviewed By" image
		And in the "Authorized Services" page I should see the "Reviewed By Date" image
		And in the "Authorized Services" page I should see the "Auth Follow Up" image
		And in the "Authorized Services" page I should see the "AT" image
		And in the "Authorized Services" page I should see the "Response" image
		And in the "Authorized Services" page I should see the "Avoidance" image
		And in the "Authorized Services" page I should see the "Days" image
		And in the "Authorized Services" page I should see the "Status" image
		And in the "Authorized Services" page I should see the "EX" image
		And in the "Authorized Services" page I should see the "Alt Opin Stat" image
		And in the "Authorized Services" page I should see the "Coord Number" image
		And in the "Authorized Services" page I should see the "Denial Effective Date" image
		And in the "Authorized Services" page I click on the "Denial Effective Date" image
		And in the "Authorized Services" page I press the "tab" key "1" times
		And in the "Authorized Services" page I should see the "Trans Source" image
		And in the "Authorized Services" page I should see the "Auth Trans Number" image
		And in the "Authorized Services" page I should see the "Auth Detail Trans Number" image
		And in the "Authorized Services" page I should see the "Trans Code" image
		And in the "Authorized Services" page I should see the "Date" image
		And in the "Authorized Services" page I should see the "OP Number" image