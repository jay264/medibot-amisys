@fullregression
@regression1
@authorizations
Feature: Hospital Services - Validate

	As a QA Tester
	I want to validate the Hospital Services page fields
	so that I know the page is displaying properly.
	
	Scenario: Verify Hospital Services Page
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And I press "Control + F"
		And in the "Certification" page I press the "enter" key "1" times
		And the test pauses for "30" seconds
		And in the "Functions Menu" page I click on "Hospital Svcs"
		And the test pauses for "30" seconds
		And I press "Control + N"
		And the test pauses for "30" seconds
	#Then in the "Hospital Services" page I should see the "Hospital Services Termed" image
		And in the "Hospital Services" page I should see the "Auth Number" image
		And in the "Hospital Services" page I should see the "Member Number" image
		And in the "Hospital Services" page I should see the "DPID Number 1" image
		And in the "Hospital Services" page I should see the "DPID Number 2" image
		And in the "Hospital Services" page I should see the "Discharge Planning" image
		And in the "Hospital Services" page I should see the "Case" image
		And in the "Hospital Services" page I should see the "Other Management" image
		And in the "Hospital Services" page I should see the "Record Number" image
		And in the "Hospital Services" page I should see the "Cert Type Alternate" image
		And in the "Hospital Services" page I should see the "Level of Serv" image
		And in the "Hospital Services" page I should see the "Rel Info" image
		And in the "Hospital Services" page I should see the "Location" image
		And in the "Hospital Services" page I should see the "Est Admit Unselected" image
		And in the "Hospital Services" page I should see the "Est Discharge" image
		And in the "Hospital Services" page I should see the "Facility Number" image
		And in the "Hospital Services" page I should see the "Att Prov Number 1" image
		And in the "Hospital Services" page I should see the "Att Prov Number 2" image
		And in the "Hospital Services" page I should see the "POR 1" image
		And in the "Hospital Services" page I should see the "POR 2" image
		And in the "Hospital Services" page I should see the "Admit Id Number" image
		And in the "Hospital Services" page I should see the "Ref Prov Number 1" image
		And in the "Hospital Services" page I should see the "Ref Prov Number 2" image
		And in the "Hospital Services" page I should see the "Diag Number 1" image
		And in the "Hospital Services" page I should see the "Diag Number 2" image
		And in the "Hospital Services" page I should see the "Diag Number 3" image
		And in the "Hospital Services" page I should see the "Diag Number 4" image
		And in the "Hospital Services" page I should see the "Diag Number 5" image
		And in the "Hospital Services" page I should see the "Diag Number 6" image
		And in the "Hospital Services" page I should see the "Diag Number 7" image
		And in the "Hospital Services" page I should see the "Proc Number 1" image
		And in the "Hospital Services" page I should see the "Proc Number 2" image
		And in the "Hospital Services" page I should see the "Proc Number 3" image
		And in the "Hospital Services" page I should see the "Newborn Weight" image
		And in the "Hospital Services" page I should see the "Proc Number 4" image
		And in the "Hospital Services" page I should see the "Proc Number 5" image
		And in the "Hospital Services" page I should see the "Proc Number 6" image
		And in the "Hospital Services" page I should see the "Proc Number 7" image
		And in the "Hospital Services" page I should see the "Req Days" image
		And in the "Hospital Services" page I should see the "Auth Days" image
		And in the "Hospital Services" page I should see the "Est Amt" image
		And in the "Hospital Services" page I should see the "Auth Amt" image
		And in the "Hospital Services" page I should see the "Admit Type" image
		And in the "Hospital Services" page I should see the "Extent of Care" image
		And in the "Hospital Services" page I should see the "Auth Type" image
		And in the "Hospital Services" page I should see the "Compliance" image
		And in the "Hospital Services" page I should see the "DRG Number" image
		And in the "Hospital Services" page I should see the "MDC Number" image
		And in the "Hospital Services" page I should see the "Treatment Type" image
		And in the "Hospital Services" page I should see the "Proc Class" image
		And in the "Hospital Services" page I should see the "Room Approved" image
		And in the "Hospital Services" page I should see the "Phys Approv" image
		And in the "Hospital Services" page I should see the "Date 1" image
		And in the "Hospital Services" page I should see the "Reviewed By" image
		And in the "Hospital Services" page I should see the "Date 2" image
		And in the "Hospital Services" page I should see the "Next Review" image
		And in the "Hospital Services" page I should see the "Transfer" image
		And in the "Hospital Services" page I should see the "Date 3" image
		And in the "Hospital Services" page I should see the "Follow-Up" image
		And in the "Hospital Services" page I should see the "AT" image
		And in the "Hospital Services" page I should see the "Response" image
		And in the "Hospital Services" page I should see the "Status" image
		And in the "Hospital Services" page I should see the "EX" image
		And in the "Hospital Services" page I should see the "Alt Opinion" image
		And in the "Hospital Services" page I should see the "Status 2" image
		And in the "Hospital Services" page I should see the "EX 2" image
		And in the "Hospital Services" page I should see the "Denial Effective Date" image
		And in the "Hospital Services" page I should see the "Trans Source" image
		And in the "Hospital Services" page I should see the "Auth Trans Number" image
		And in the "Hospital Services" page I should see the "Auth Detail Trans Number" image
		And in the "Hospital Services" page I click on the "Denial Effective Date" image
		And in the "Hospital Services" page I press the "tab" key "1" times
		And in the "Hospital Services" page I should see the "Trans Code" image
		And in the "Hospital Services" page I should see the "Date" image
		And in the "Hospital Services" page I should see the "Op Number" image