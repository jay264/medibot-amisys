@fullregression
@regression1
@provider
Feature: Provider Credentialing - Validate

	As a QA Tester
	I want to validate the Provider page fields
	so that I know the page is displaying properly.

	Scenario: Validate Provider Credentialing Page
	Given I sign in to the application
	When in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Credentialing"
	Then in the "Provider Credentialing" page I should see the text "Provider Credentialing"
		And in the "Provider Credentialing" page I should see the text "ID Type"
		And in the "Provider Credentialing" page I should see the "ID Type" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "ID Type 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "ID Type 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "POR"
		And in the "Provider Credentialing" page I should see the "POR" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Provider Type"
		And in the "Provider Credentialing" page I should see the "Provider Type 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Provider Type 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Group Practice"
		And in the "Provider Credentialing" page I should see the "Group Practice" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Specialty (SP)"
		And in the "Provider Credentialing" page I should see the "Speciality 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Speciality 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Speciality 3" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Speciality 4" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Speciality 5" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Speciality 6" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Application Date"
		And in the "Provider Credentialing" page I should see the "Application Date" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "IRS#"
		And in the "Provider Credentialing" page I should see the "IRS Number" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Credential Stat(CS)"
		And in the "Provider Credentialing" page I should see the "Credential Stat 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Credential Stat 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Credential Stat 3" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Re-cred Date"
		And in the "Provider Credentialing" page I should see the "Re-Credentialing" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "In Process Stat"
		And in the "Provider Credentialing" page I should see the "In Process Stat 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "In Process Stat 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "In Process Stat 3" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Next Review"
		And in the "Provider Credentialing" page I should see the "Next Review" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Malp Ins"
		And in the "Provider Credentialing" page I should see the "Malp Ins" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Malp Ins End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Liab Ins"
		And in the "Provider Credentialing" page I should see the "Liab Ins" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Liab Ins End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Monitor (PA)"
		And in the "Provider Credentialing" page I should see the "Monitor" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Monitor Veri" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "DEA/CDS"
		And in the "Provider Credentialing" page I should see the "DEA CDS" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "DEA CDS End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Site Review"
		And in the "Provider Credentialing" page I should see the "Site Review" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Site Review Veri" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "License (St)"
		And in the "Provider Credentialing" page I should see the "License" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "License End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Sanction"
		And in the "Provider Credentialing" page I should see the "Sanction" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Sanction End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "School (ET)"
		And in the "Provider Credentialing" page I should see the "School" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "School Veri" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Hospital(HP)"
		And in the "Provider Credentialing" page I should see the "Hospital" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Hospital End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Brd Cert (SP)"
		And in the "Provider Credentialing" page I should see the "Brd" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Brd End" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Malp Claim(MA)"
		And in the "Provider Credentialing" page I should see the "Malp Claim" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "Malp Claim Veri" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Pers Info"
		And in the "Provider Credentialing" page I should see the "Pers Info" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Continue Ed"
		And in the "Provider Credentialing" page I should see the "Continue Ed" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "AT Codes"
		And in the "Provider Credentialing" page I should see the "AT Codes 1" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "AT Codes 2" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "AT Codes 3" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "AT Codes 4" element with a value of "  "
		And in the "Provider Credentialing" page I should see the "AT Codes 5" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Trans Code"
		And in the "Provider Credentialing" page I should see the "Trans Code" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Date"
		And in the "Provider Credentialing" page I should see the "Date" element with a value of "  "
		And in the "Provider Credentialing" page I should see the text "Op#"
		And in the "Provider Credentialing" page I should see the "Op Number" element with a value of "  "