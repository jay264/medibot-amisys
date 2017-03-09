@fullregression
@regression2
@authorizations
Feature: Inpatient Data Consolidation - Validate

	As a QA Tester
	I want to validate the Inpatient Data Consolidation page fields
	so that I know the page is displaying properly.
	
	Scenario: Verify Inpatient Data Consolidation Page
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
		And the test pauses for "5" seconds
		And in the "Authorizations Medical Management" page I click on "Inpatient Data Consolidation"
	Then in the "Inpatient Data Consolidation" page I should see the text "Inpatient Data Consolidation"
		And in the "Inpatient Data Consolidation" page I should see the text "Post to Census?"
		And in the "Inpatient Data Consolidation" page I should see the "Post to Census" element
		And in the "Inpatient Data Consolidation" page I should see the text "Late"
		And in the "Inpatient Data Consolidation" page I should see the "Late" element
		And in the "Inpatient Data Consolidation" page I should see the text "Census Date"
		And in the "Inpatient Data Consolidation" page I should see the "Census Date" element
		And in the "Inpatient Data Consolidation" page I should see the text "Member#"
		And in the "Inpatient Data Consolidation" page I should see the "Member Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "MRN"
		And in the "Inpatient Data Consolidation" page I should see the "MRN" element
		And in the "Inpatient Data Consolidation" page I should see the text "Auth#"
		And in the "Inpatient Data Consolidation" page I should see the "Auth Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "Seg"
		And in the "Inpatient Data Consolidation" page I should see the "Seg 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Seg 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Seg 3" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Date/Time"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Date" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Time" element
		And in the "Inpatient Data Consolidation" page I should see the text "Auth Type (AR)"
		And in the "Inpatient Data Consolidation" page I should see the "Auth Type" element
		And in the "Inpatient Data Consolidation" page I should see the text "Prov Status (PS)"
		And in the "Inpatient Data Consolidation" page I should see the "Prov Status" element
		And in the "Inpatient Data Consolidation" page I should see the text "Member Name"
		And in the "Inpatient Data Consolidation" page I should see the "Member Name" element
		And in the "Inpatient Data Consolidation" page I should see the text "Sex"
		And in the "Inpatient Data Consolidation" page I should see the "Sex" element
		And in the "Inpatient Data Consolidation" page I should see the text "DOB"
		And in the "Inpatient Data Consolidation" page I should see the "DOB" element
		And in the "Inpatient Data Consolidation" page I should see the text "Member Div"
		And in the "Inpatient Data Consolidation" page I should see the "Member Div" element
		And in the "Inpatient Data Consolidation" page I should see the "Phone Type" element
		And in the "Inpatient Data Consolidation" page I should see the "Phone Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "Auth By"
		And in the "Inpatient Data Consolidation" page I should see the "Auth By" element
		And in the "Inpatient Data Consolidation" page I should see the text "Member PCP"
		And in the "Inpatient Data Consolidation" page I should see the "Member PCP 1" element
		And in the "Inpatient Data Consolidation" page I should see the text "Prov"
		And in the "Inpatient Data Consolidation" page I should see the "Prov" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Facility"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Facility" element
		And in the "Inpatient Data Consolidation" page I should see the text "Spec"
		And in the "Inpatient Data Consolidation" page I should see the "Spec" element
		And in the "Inpatient Data Consolidation" page I should see the text "City"
		And in the "Inpatient Data Consolidation" page I should see the text "State"
		And in the "Inpatient Data Consolidation" page I should see the "City" element
		And in the "Inpatient Data Consolidation" page I should see the "State" element
		And in the "Inpatient Data Consolidation" page I should see the "Facility Phone Type" element
		And in the "Inpatient Data Consolidation" page I should see the "Facility Phone Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "SP"
		And in the "Inpatient Data Consolidation" page I should see the "SP" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Doctor"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Doctor" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Doctor 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Doctor Phone Type" element
		And in the "Inpatient Data Consolidation" page I should see the "Doctor Phone Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "Attending Prov"
		And in the "Inpatient Data Consolidation" page I should see the "Attending Prov" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Diag"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 3" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 4" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 5" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Diag 6" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Codes (AD)"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Codes 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Codes 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Admit Codes 3" element
		And in the "Inpatient Data Consolidation" page I should see the text "Admit Cmts"
		And in the "Inpatient Data Consolidation" page I should see the "Admit Cmts" element
		And in the "Inpatient Data Consolidation" page I should see the text "ALOS"
		And in the "Inpatient Data Consolidation" page I should see the "ALOS" element
		And in the "Inpatient Data Consolidation" page I should see the text "Procedures"
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 3" element
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 4" element
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 5" element
		And in the "Inpatient Data Consolidation" page I should see the "Procedures 6" element
		And in the "Inpatient Data Consolidation" page I should see the text "Disch Diag"
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 3" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 4" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 5" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Diag 6" element
		And in the "Inpatient Data Consolidation" page I should see the text "Disch Codes (DS)"
		And in the "Inpatient Data Consolidation" page I should see the "Disch Codes 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Codes 2" element
		And in the "Inpatient Data Consolidation" page I should see the "Disch Codes 3" element
		And in the "Inpatient Data Consolidation" page I should see the text "Disch Cmts"
		And in the "Inpatient Data Consolidation" page I should see the "Disch Cmts" element
		And in the "Inpatient Data Consolidation" page I should see the text "Est. Disch"
		And in the "Inpatient Data Consolidation" page I should see the "Est Disch" element
		And in the "Inpatient Data Consolidation" page I should see the text "Discharge Date"
		And in the "Inpatient Data Consolidation" page I should see the "Discharge Date" element
		And in the "Inpatient Data Consolidation" page I should see the text "LOS"
		And in the "Inpatient Data Consolidation" page I should see the "LOS" element
		And in the "Inpatient Data Consolidation" page I should see the text "In ICU"
		And in the "Inpatient Data Consolidation" page I should see the "In ICU" element
		And in the "Inpatient Data Consolidation" page I should see the text "Ext of Care (AS)"
		And in the "Inpatient Data Consolidation" page I should see the "Ext of Care" element
		And in the "Inpatient Data Consolidation" page I should see the text "Discharge Provider"
		And in the "Inpatient Data Consolidation" page I should see the "Discharge Provider 1" element
		And in the "Inpatient Data Consolidation" page I should see the "Discharge Provider 2" element
		And in the "Inpatient Data Consolidation" page I should see the text "OA Info Referring Doctor"
		And in the "Inpatient Data Consolidation" page I should see the "OA Info Referring Doctor" element
		And in the "Inpatient Data Consolidation" page I should see the text "Reported By (SR)"
		And in the "Inpatient Data Consolidation" page I should see the "Reported By" element
		And in the "Inpatient Data Consolidation" page I should see the text "Name"
		And in the "Inpatient Data Consolidation" page I should see the "Name" element
		And in the "Inpatient Data Consolidation" page I should see the text "Status"
		And in the "Inpatient Data Consolidation" page I should see the "Status" element
		And in the "Inpatient Data Consolidation" page I should see the text "EX"
		And in the "Inpatient Data Consolidation" page I should see the "EX 1" element
		And in the "Inpatient Data Consolidation" page I should see the "EX 2" element
		And in the "Inpatient Data Consolidation" page I should see the text "Comments"
		And in the "Inpatient Data Consolidation" page I should see the "COmments" element
		And in the "Inpatient Data Consolidation" page I should see the text "Template#"
		And in the "Inpatient Data Consolidation" page I should see the "Template Number" element
		And in the "Inpatient Data Consolidation" page I should see the text "Trans Code"
		And in the "Inpatient Data Consolidation" page I should see the "Trans Code" element
		And in the "Inpatient Data Consolidation" page I should see the text "Date"
		And in the "Inpatient Data Consolidation" page I should see the "Date" element
		And in the "Inpatient Data Consolidation" page I should see the text "Op#"
		And in the "Inpatient Data Consolidation" page I should see the "Op Number" element
		#And in the "Inpatient Date Consolidation" page I click on the "OK" image