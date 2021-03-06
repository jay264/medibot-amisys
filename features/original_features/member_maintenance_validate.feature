@fullregression
@regression2
@member
Feature: Member Maintenance - Validate

	As a QA Tester
	I want to validate the Member Maintenance page fields
	so that I know the page is displaying properly.

	Scenario: Validate Member Maintenance Page
	Given I sign in to the application
	When in the "Home" page I click on "Membership Processing"
		And the test pauses for "5" seconds
		And in the "Membership Processing" page I click on "Member Maintenance"
	Then in the "Member Maintenance" page I should see the text "Member Maintenance"
		And in the "Member Maintenance" page I should see the text "Member#"
		And in the "Member Maintenance" page I should see the "Member Number 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Member Number 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Member Number 3" element with a value of "  "
	    And in the "Member Maintenance" page I should see the text "On Review"
		And in the "Member Maintenance" page I should see the "On Review" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Locked by"
		And in the "Member Maintenance" page I should see the "Locked By" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Cond Applicant"
		And in the "Member Maintenance" page I should see the "Cond Applicant" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Custodial Parent"
		And in the "Member Maintenance" page I should see the "Custodial Parent" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Resp Person"
		And in the "Member Maintenance" page I should see the "Resp Person" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Protected Mbr"
		And in the "Member Maintenance" page I should see the "Protected Mbr" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Prefix"
		And in the "Member Maintenance" page I should see the "Prefix" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "First"
		And in the "Member Maintenance" page I should see the "First Name" element
		And in the "Member Maintenance" page I should see the text "Middle"
		And in the "Member Maintenance" page I should see the "Middle Name" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Last"
		And in the "Member Maintenance" page I should see the "Last Name" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Suffix"
		And in the "Member Maintenance" page I should see the "Suffix" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 3" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 4" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 5" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Alt Key 6" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Prior Last Name"
		And in the "Member Maintenance" page I should see the "Prior Last Name" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "SSN#"
		And in the "Member Maintenance" page I should see the "SSN" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "HCFA#"
		And in the "Member Maintenance" page I should see the "HCFA Number" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Record#"
		And in the "Member Maintenance" page I should see the "Record Number" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "AltCov Ver"
		And in the "Member Maintenance" page I should see the "Altcov Ver" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "AltCov Resp"
		And in the "Member Maintenance" page I should see the "AltCov Resp" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Sex"
		And in the "Member Maintenance" page I should see the "Sex" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Birth"
		And in the "Member Maintenance" page I should see the "Birth" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Birth Seq#"
		And in the "Member Maintenance" page I should see the "Birth Seq Number" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Death"
		And in the "Member Maintenance" page I should see the "Death" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Card"
		And in the "Member Maintenance" page I should see the "Card" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "(CR)"
		And in the "Member Maintenance" page I should see the "CR" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "(AA)"
		And in the "Member Maintenance" page I should see the "AA" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Confidential"
		And in the "Member Maintenance" page I should see the "Confidential" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Race/Ethnicity"
		And in the "Member Maintenance" page I should see the "Race Ethnicity 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Race Ethnicity 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Spoken Language"
		And in the "Member Maintenance" page I should see the "Spoken Language 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Spoken Language 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Written Language"
		And in the "Member Maintenance" page I should see the "Written Language 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Written Language 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Other Language"
		And in the "Member Maintenance" page I should see the "Other Language 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Other Language 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Interpreter Reqd"
		And in the "Member Maintenance" page I should see the "Interpreter Reqd" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Unique ID"
		And in the "Member Maintenance" page I should see the "Unique ID" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Assigned"
		And in the "Member Maintenance" page I should see the "Assigned" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Pre-Ex Con"
		And in the "Member Maintenance" page I should see the "Pre-Ex Con" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Tc"
		And in the "Member Maintenance" page I should see the "Tc" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Date"
		And in the "Member Maintenance" page I should see the "Date" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Op#"
		And in the "Member Maintenance" page I should see the "Op Number" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Member Span Information"
		And in the "Member Maintenance" page I should see the text "Eff Date"
		And in the "Member Maintenance" page I should see the "Eff Date 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "End Date"
		And in the "Member Maintenance" page I should see the "End Date 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Division#"
		And in the "Member Maintenance" page I should see the "Division Number 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "RY"
		And in the "Member Maintenance" page I should see the "RY 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Bu"
		And in the "Member Maintenance" page I should see the "Bu 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Pg"
		And in the "Member Maintenance" page I should see the "Pg 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Ca"
		And in the "Member Maintenance" page I should see the "Ca 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Rg"
		And in the "Member Maintenance" page I should see the "Rg 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "GC"
		And in the "Member Maintenance" page I should see the "GC 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Bp"
		And in the "Member Maintenance" page I should see the "Bp 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "CY"
		And in the "Member Maintenance" page I should see the "CY 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "CL"
		And in the "Member Maintenance" page I should see the "CL 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "MS"
		And in the "Member Maintenance" page I should see the "MS 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "NS"
		And in the "Member Maintenance" page I should see the "NS 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "RP"
		And in the "Member Maintenance" page I should see the "RP 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "HS"
		And in the "Member Maintenance" page I should see the "HS 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Ps"
		And in the "Member Maintenance" page I should see the "Ps 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "C9"
		And in the "Member Maintenance" page I should see the "C9 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "TU"
		And in the "Member Maintenance" page I should see the "TU 1" element with a value of "  "
	    And in the "Member Maintenance" page I should see the "Error Field 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Eff Date 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "End Date 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Division Number 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "RY 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "BU 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "PG 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "CA 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "RG 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "GC 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "BP 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "CY 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "CL 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "MS 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "NS 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "RP 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "HS 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "PS 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "C9 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "TU 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "BE"
		And in the "Member Maintenance" page I should see the "BE 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "ME"
		And in the "Member Maintenance" page I should see the "ME 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "MY"
		And in the "Member Maintenance" page I should see the "MY 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Cvg Mo"
		And in the "Member Maintenance" page I should see the "Cvg Mo 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Pre-Exist"
		And in the "Member Maintenance" page I should see the "Pre-Exist 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Eff Date"
		And in the "Member Maintenance" page I should see the "Eff Date 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "End Date"
		And in the "Member Maintenance" page I should see the "End Date 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Provider#"
		And in the "Member Maintenance" page I should see the "Provider Number 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "HT"
		And in the "Member Maintenance" page I should see the "HT" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "CP"
		And in the "Member Maintenance" page I should see the "CP" element with a value of "  "
		And in the "Member Maintenance" page I should see the text " AA"
		And in the "Member Maintenance" page I should see the "AA" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "CX"
		And in the "Member Maintenance" page I should see the "CX" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Type"
		And in the "Member Maintenance" page I should see the "Type" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "RYc"
		And in the "Member Maintenance" page I should see the "RYc" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "F/L Cap"
		And in the "Member Maintenance" page I should see the "FL Cap 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "FL Cap 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "BE 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "ME 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "MY 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Cvg Mo 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Pre-Exist 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Eff Date 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "End Date 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Provider Number 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "AT"
		And in the "Member Maintenance" page I should see the "AT 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "AT 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the "AT 3" element with a value of "  "
		And in the "Member Maintenance" page I should see the "AT 4" element with a value of "  "
		And in the "Member Maintenance" page I should see the "AT 5" element with a value of "  "
		And in the "Member Maintenance" page I should see the "AT 6" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Individual Premium Amt"
		And in the "Member Maintenance" page I should see the "Individual Premium Amt 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "Individual Premium Amt 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "RYb"
		And in the "Member Maintenance" page I should see the "RYb" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "F/L Bill"
		And in the "Member Maintenance" page I should see the "FL Bill 1" element with a value of "  "
		And in the "Member Maintenance" page I should see the "FL Bill 2" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Tc"
		And in the "Member Maintenance" page I should see the "Tc" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Date"
		And in the "Member Maintenance" page I should see the "Date" element with a value of "  "
		And in the "Member Maintenance" page I should see the text "Op#"
		And in the "Member Maintenance" page I should see the "Op Number" element with a value of "  "