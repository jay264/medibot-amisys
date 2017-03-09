@fullregression
@regression1
@provider
Feature: Provider Affiliation - Validate

	As a QA Tester
	I want to validate the Provider Affiliation page fields
	so that I know the page is displaying properly.
	
	Scenario: Verify Required Provider Affiliation Fields
	Given I sign in to the application
	When in the "Home" page I click on "Provider"
		And in the "Provider" page I click on "Provider Affiliation"
	Then in the "Provider Affiliation" page I should see the text "Provider Affiliation"
		And in the "Provider Affiliation" page I should see the text "Provider"
		And in the "Provider Affiliation" page I should see the "ID 1" element
		And in the "Provider Affiliation" page I should see the "ID 2" element
		And in the "Provider Affiliation" page I should see the "Name" element
		And in the "Provider Affiliation" page I should see the text "Title"
		And in the "Provider Affiliation" page I should see the "Title" element
		And in the "Provider Affiliation" page I should see the text "Degr"
		And in the "Provider Affiliation" page I should see the "Degr" element
		And in the "Provider Affiliation" page I should see the text "On Review"
		And in the "Provider Affiliation" page I should see the "On Review" element
		And in the "Provider Affiliation" page I should see the text "Eff-Dates"
		And in the "Provider Affiliation" page I should see the "Eff Date 1" element
		And in the "Provider Affiliation" page I should see the "Eff Date 2" element
		And in the "Provider Affiliation" page I should see the text "Busn Unit"
		And in the "Provider Affiliation" page I should see the "Busn Unit" element
		And in the "Provider Affiliation" page I should see the text "Program#"
		And in the "Provider Affiliation" page I should see the "Program Number" element
		And in the "Provider Affiliation" page I should see the text "Carrier#"
		And in the "Provider Affiliation" page I should see the "Carrier Number" element
		And in the "Provider Affiliation" page I should see the text "Region"
		And in the "Provider Affiliation" page I should see the "Region" element
		And in the "Provider Affiliation" page I should see the text "Sub Prog#"
		And in the "Provider Affiliation" page I should see the "Sub Prog Number" element
		And in the "Provider Affiliation" page I should see the text "EFT"
		And in the "Provider Affiliation" page I should see the "EFT" element
		And in the "Provider Affiliation" page I should see the text "Office#"
		And in the "Provider Affiliation" page I should see the "Office Number" element
		And in the "Provider Affiliation" page I should see the text "Practice#"
		And in the "Provider Affiliation" page I should see the "Practice Number" element
		And in the "Provider Affiliation" page I should see the text "CAP Status (CF)"
		And in the "Provider Affiliation" page I should see the "CAP Status" element
		And in the "Provider Affiliation" page I should see the text "HAT Code (HT)"
		And in the "Provider Affiliation" page I should see the "HAT Code" element
		And in the "Provider Affiliation" page I should see the text "Claim Type (CP)"
		And in the "Provider Affiliation" page I should see the "Claim Type" element
		And in the "Provider Affiliation" page I should see the text "Cred Stat (CS)"
		And in the "Provider Affiliation" page I should see the "Cred Stat 1" element
		And in the "Provider Affiliation" page I should see the "Cred Stat 2" element
		And in the "Provider Affiliation" page I should see the text "Payto"
		And in the "Provider Affiliation" page I should see the "Payto" element
		And in the "Provider Affiliation" page I should see the text "Type (PR)"
		And in the "Provider Affiliation" page I should see the "Type" element
		And in the "Provider Affiliation" page I should see the text "Class (PC)"
		And in the "Provider Affiliation" page I should see the "Class" element
		And in the "Provider Affiliation" page I should see the text "Status (PS)"
		And in the "Provider Affiliation" page I should see the "Status" element
		And in the "Provider Affiliation" page I should see the text "Spec (SP)"
		And in the "Provider Affiliation" page I should see the "Spec" element
		And in the "Provider Affiliation" page I should see the text "County (CN)"
		And in the "Provider Affiliation" page I should see the "County" element
		And in the "Provider Affiliation" page I should see the text "Area (AA)"
		And in the "Provider Affiliation" page I should see the "Area" element
		And in the "Provider Affiliation" page I should see the text "Accept (CC)"
		And in the "Provider Affiliation" page I should see the "Accept" element
		And in the "Provider Affiliation" page I should see the text "LOS Region"
		And in the "Provider Affiliation" page I should see the "LOS Region" element
		And in the "Provider Affiliation" page I should see the text "Pay Disc (PD)"
		And in the "Provider Affiliation" page I should see the "Pay Disc" element
		And in the "Provider Affiliation" page I should see the text "Ptnt Load"
		And in the "Provider Affiliation" page I should see the "Ptnt Load" element
		And in the "Provider Affiliation" page I should see the text "# Active"
		And in the "Provider Affiliation" page I should see the "Number Active" element
		And in the "Provider Affiliation" page I should see the text "Override Key"
		And in the "Provider Affiliation" page I should see the "Override Key" element
		And in the "Provider Affiliation" page I should see the text "Excpt Fee"
		And in the "Provider Affiliation" page I should see the "Excpt Fee" element
		And in the "Provider Affiliation" page I should see the text "Pay Class"
		And in the "Provider Affiliation" page I should see the "Pay Class" element
		And in the "Provider Affiliation" page I should see the text "Scale Class"
		And in the "Provider Affiliation" page I should see the "Scale Class" element
		And in the "Provider Affiliation" page I should see the text "Fund Class"
		And in the "Provider Affiliation" page I should see the "Fund Class" element
		And in the "Provider Affiliation" page I should see the text "Lag"
		And in the "Provider Affiliation" page I should see the "Lag" element
		And in the "Provider Affiliation" page I should see the text "CAP Method"
		And in the "Provider Affiliation" page I should see the "CAP Method" element
		And in the "Provider Affiliation" page I should see the text "CAP Key"
		And in the "Provider Affiliation" page I should see the "CAP Key" element
		And in the "Provider Affiliation" page I should see the text "CAP Cycle (CX)"
		And in the "Provider Affiliation" page I should see the "CAP Cycle" element
		And in the "Provider Affiliation" page I should see the text "CAP Type"
		And in the "Provider Affiliation" page I should see the "CAP Type" element
		And in the "Provider Affiliation" page I should see the text "Pool Class"
		And in the "Provider Affiliation" page I should see the "Pool Class" element
		And in the "Provider Affiliation" page I should see the text "Period Table#"
		And in the "Provider Affiliation" page I should see the "Period Table Number" element
		And in the "Provider Affiliation" page I should see the text "Remit EOP"
		And in the "Provider Affiliation" page I should see the "Remit EOP" element
		And in the "Provider Affiliation" page I should see the text "Remit EOP TPID"
		And in the "Provider Affiliation" page I should see the "Remit EOP TPID 1" element
		And in the "Provider Affiliation" page I should see the "Remit EOP TPID 2" element
		And in the "Provider Affiliation" page I should see the text "Fee-Zip"
		And in the "Provider Affiliation" page I should see the "Fee-Zip" element
		And in the "Provider Affiliation" page I should see the text "NPI"
		And in the "Provider Affiliation" page I should see the "NPI" element
		And in the "Provider Affiliation" page I should see the text "IRS# (AQ)"
		And in the "Provider Affiliation" page I should see the "IRS Number 1" element
		And in the "Provider Affiliation" page I should see the "IRS Number 2" element
		And in the "Provider Affiliation" page I should see the text "Medicare"
		And in the "Provider Affiliation" page I should see the "Medicare" element
		And in the "Provider Affiliation" page I should see the text "License#"
		And in the "Provider Affiliation" page I should see the "License Number" element
		And in the "Provider Affiliation" page I should see the text "DEA#"
		And in the "Provider Affiliation" page I should see the "DEA Number" element
		And in the "Provider Affiliation" page I should see the text "Serv.Call Dt"
		And in the "Provider Affiliation" page I should see the "Serv Call" element
		And in the "Provider Affiliation" page I should see the text "AT"
		And in the "Provider Affiliation" page I should see the "AT" element
		And in the "Provider Affiliation" page I should see the text "Trans Code"
		And in the "Provider Affiliation" page I should see the "Trans Code" element
		And in the "Provider Affiliation" page I should see the text "Date"
		And in the "Provider Affiliation" page I should see the "Date" element
		And in the "Provider Affiliation" page I should see the text "Op#"
		And in the "Provider Affiliation" page I should see the "Op Number 1" element
		And in the "Provider Affiliation" page I should see the "Op Number 2" element
		And in the "Provider Affiliation" page I should see the "Op Number 3" element
		