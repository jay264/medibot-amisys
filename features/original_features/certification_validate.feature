@fullregression
@regression1
@authorizations
Feature: Certification - Validate

	As a QA Tester
	I want to validate the Certification page fields
	so that I know the page is displaying properly.
	
	Scenario: Verify Certification Page - Certification Tab
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
	Then in the "Certification" page I should see the text "Certification"
		And in the "Certification" page I should see the text "Req Dates"
		And in the "Certification" page I should see the "Req Dates 1" element
		And in the "Certification" page I should see the "Req Dates 2" element
		And in the "Certification" page I should see the "Req Dates 3" element
		And in the "Certification" page I should see the "Req Dates 4" element
		And in the "Certification" page I should see the text "Case#"
		And in the "Certification" page I should see the "Case Number" element
		And in the "Certification" page I should see the text "Member#"
		And in the "Certification" page I should see the "Member Number" element
		And in the "Certification" page I should see the text "Auth#"
		And in the "Certification" page I should see the "Auth Number" element
		And in the "Certification" page I should see the text "Trans Src"
		And in the "Certification" page I should see the "Trans Src" element
		And in the "Certification" page I should see the text "Source (SR)"
		And in the "Certification" page I should see the "Source" element
		And in the "Certification" page I should see the text "Episode#"
		And in the "Certification" page I should see the "Episode Number" element
		And in the "Certification" page I should see the text "Auth-by"
		And in the "Certification" page I should see the "Auth-by" element
		And in the "Certification" page I should see the text "Auth Dt"
		And in the "Certification" page I should see the "Auth Dt" element
		And in the "Certification" page I should see the text "Initial Date"
		And in the "Certification" page I should see the "Initial Date" element
		And in the "Certification" page I should see the text "Accident Date"
		And in the "Certification" page I should see the "Accident Date" element
		And in the "Certification" page I should see the text "Admit Diag/Dt"
		And in the "Certification" page I should see the "Admit Diag Dt 1" element
		And in the "Certification" page I should see the "Admit Diag Dt 2" element
		And in the "Certification" page I should see the "Admit Diag Dt 3" element
		And in the "Certification" page I should see the text "Alt Opn Req"
		And in the "Certification" page I should see the "Alt Opn Req 1" element
		And in the "Certification" page I should see the "Alt Opn Req 2" element
		And in the "Certification" page I should see the "Alt Opn Req 3" element
		And in the "Certification" page I should see the "Primary Diag Dt 1" element
		And in the "Certification" page I should see the "Primary Diag Dt 2" element
		And in the "Certification" page I should see the "Primary Diag Dt 3" element
		And in the "Certification" page I should see the "Primary Proc Number 1" element
		And in the "Certification" page I should see the "Primary Proc Number 2" element
		And in the "Certification" page I should see the text "Illness (CI)"
		And in the "Certification" page I should see the "Illness" element
		And in the "Certification" page I should see the text "Status"
		And in the "Certification" page I should see the "Status" element
		And in the "Certification" page I should see the text "EX"
		And in the "Certification" page I should see the "EX" element
		And in the "Certification" page I should see the text "Ext of Care (AS)"
		And in the "Certification" page I should see the "Ext of Care" element
		And in the "Certification" page I should see the text "Auth Type (AR)"
		And in the "Certification" page I should see the "Auth Type" element
		And in the "Certification" page I should see the text "Auth Follow-up (AU)"
		And in the "Certification" page I should see the "Auth Follow-Up" element
		And in the "Certification" page I should see the text "AT"
		And in the "Certification" page I should see the "AT" element
		And in the "Certification" page I should see the text "H"
		And in the "Certification" page I should see the "H" element
		And in the "Certification" page I should see the text "A"
		And in the "Certification" page I should see the "A" element
		And in the "Certification" page I should see the text "O"
		And in the "Certification" page I should see the "O" element
		And in the "Certification" page I should see the text "Note"
		And in the "Certification" page I should see the "Note" element
		And in the "Certification" page I should see the text "Vendor Auth#"
		And in the "Certification" page I should see the "Vendor Auth Number" element
		And in the "Certification" page I should see the text "Vendor ID"
		And in the "Certification" page I should see the "Vendor ID" element
		And in the "Certification" page I should see the "Member Info 1" element
		And in the "Certification" page I should see the "Member Info 2" element
		And in the "Certification" page I should see the "Member Info 3" element
		And in the "Certification" page I should see the "Member Info 4" element
		And in the "Certification" page I should see the "Member Info 5" element
		And in the "Certification" page I should see the "Member Info 6" element
		And in the "Certification" page I should see the "Member Info 7" element
		And in the "Certification" page I should see the "Member Info 8" element
		And in the "Certification" page I should see the "Member Info 9" element
		And in the "Certification" page I should see the text "Trans Code"
		And in the "Certification" page I should see the "Trans Code" element
		And in the "Certification" page I should see the text "Date"
		And in the "Certification" page I should see the "Date" element
		And in the "Certification" page I should see the text "Op#"
		And in the "Certification" page I should see the "Op Number" element
		
	Scenario: Verify Certification Page - 278 Request Tab
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And in the "Authorizations Medical Management" page I click on "Certification"
		And in the "Certification" page I click on "Request"
	Then in the "Certification" page I should see the text "Member#"
		And in the "Certification" page I should see the "Member Number 2" element
		And in the "Certification" page I should see the text "Auth#"
		And in the "Certification" page I should see the "Auth Number 2" element
		And in the "Certification" page I should see the text "Auth Trans#"
		And in the "Certification" page I should see the "Auth Trans Number" element
		And in the "Certification" page I should see the text "Trace#"
		And in the "Certification" page I should see the "Trace Number" element
		And in the "Certification" page I should see the text "Trace Entity"
		And in the "Certification" page I should see the "Trace Entity" element
		And in the "Certification" page I should see the text "Trace Additional"
		And in the "Certification" page I should see the "Trace Additional" element
		And in the "Certification" page I should see the text "Request Category"
		And in the "Certification" page I should see the "Request Category" element
		And in the "Certification" page I should see the text "Service Type(SY)"
		And in the "Certification" page I should see the "Service Type" element
		And in the "Certification" page I should see the text "Level of Service"
		And in the "Certification" page I should see the "Level of Service" element
		And in the "Certification" page I should see the text "Admission Type"
		And in the "Certification" page I should see the "Admission Type" element
		And in the "Certification" page I should see the text "Facility Code"
		And in the "Certification" page I should see the "Facility Code" element
		And in the "Certification" page I should see the text "Place of Service(LC)"
		And in the "Certification" page I should see the "Place of Service" element
		And in the "Certification" page I should see the text "Health Condition"
		And in the "Certification" page I should see the "Health Condition" element
		And in the "Certification" page I should see the text "Prognosis"
		And in the "Certification" page I should see the "Prognosis" element
		And in the "Certification" page I should see the text "Patient Status(DS)"
		And in the "Certification" page I should see the "Patient Status" element
		And in the "Certification" page I should see the text "Nursing Home Status"
		And in the "Certification" page I should see the "Nursing Home Status" element
		And in the "Certification" page I should see the text "Delay Reason"
		And in the "Certification" page I should see the "Delay Reason" element
		And in the "Certification" page I should see the text "Release Info"
		And in the "Certification" page I should see the "Release Info" element
		And in the "Certification" page I should see the text "Military Status"
		And in the "Certification" page I should see the "Military Status" element
		
		