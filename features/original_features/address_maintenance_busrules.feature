@fullregression
@regression2
@provider
Feature: Address Maintenance - Busrules

	As a QA Tester
	I want to test the Address Maintenance page
	so that I know the page is functioning properly.
	
	Scenario: Add Multiple Phone Numbers
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
	When in the "Functions Menu" page I click on "Address"
		And the test pauses for "30" seconds
		And in the "Address Maintenance" page I enter "CA" into the "Reason" image
		And in the "Address Maintenance" page I enter "BP" into the "Phone Type 1" image
		And in the "Address Maintenance" page I enter "1111111111" into the "Phone Number 1" image
		And in the "Address Maintenance" page I enter "HM" into the "Phone Type 2" image
		And in the "Address Maintenance" page I enter "2222222222" into the "Phone Number 2" image
		And in the "Address Maintenance" page I enter "MB" into the "Phone Type 3" image
		And in the "Address Maintenance" page I enter "3333333333" into the "Phone Number 3" image
		And in the "Address Maintenance" page I click on the "Save" image
	Then in the "Address Maintenance" page I should see the "Process Completed" image
		
	Scenario: Add Fax Number
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + N"
		And in the "Provider Maintenance Credentialing" page I enter "a random number" into the "Inst" field
		And in the "Provider Maintenance Credentialing" page I enter "HH" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I enter "123 Test St" into the "Address 1" field
		And in the "Provider Maintenance Credentialing" page I enter "43054" into the "Zip" field
		And I press "Control + S"
		And the test pauses for "30" seconds
		And in the "Provider Maintenance Credentialing" page I should see the "Error Message" element with a value of "Process Completed."
	When in the "Functions Menu" page I click on "Address"
		And in the "Address Maintenance" page I enter "CA" into the "Reason" image
		And in the "Address Maintenance" page I enter "FX" into the "Phone Type 1" image
		And in the "Address Maintenance" page I enter "1111111111" into the "Phone Number 1" image
		And in the "Address Maintenance" page I click on the "Save" image
	Then in the "Address Maintenance" page I should see the "Process Completed" image
	
	Scenario: Additional Address Pages
	Given I sign in to the application
		And in the "Home" page I click on "Provider"
		And the test pauses for "30" seconds
		And in the "Provider" page I click on "Provider Maintenance Credentialing"
		And I press "Control + F"
		And in the "Provider Maintenance Credentialing" page I enter "936649" into the "Prov Number" field
		#And in the "Provider Maintenance Credentialing" page I enter "PY" into the "Provider Type" field
		And in the "Provider Maintenance Credentialing" page I press the "enter" key "1" times
	When in the "Functions Menu" page I click on "Address"
		And the test pauses for "30" seconds
		#And in the "Address Maintenance" page I should see the "End of Default Addresses Press Next for Mailing" image
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
		And I press "F8"