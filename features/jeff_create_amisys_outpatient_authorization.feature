Feature: Create Outpatient from HealthHelp Spreadsheet

	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

	Scenario Outline: Outpatient HealthHelp Jeff Test 05
	Given I sign in to the application

	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "5" seconds
		And in the "Authorizations Medical Management" page I click on "Certification"
		And the test pauses for "5" seconds

		And I press "Control + N"
		And the test pauses for "5" seconds

		And in the "Certification" page I convert "<auth_requested_date>" into the "Req Dates 1" field
		And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
		And in the "Certification" page I enter "<member_id>" into the "Member Number" field
		And in the "Certification" page I enter "HH" into the "Source" field
		And in the "Certification" page I enter "<diagnosis_code>" into the "Primary Diag Dt 1" field
		And in the "Certification" page I enter "<service_code>" into the "Primary Proc Number 1" field
		And in the "Certification" page I use the determination "<status>" to determine what to enter into the "EX" field
    And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
		And I press "Control + S"
	  And the test pauses for "10" seconds

		And in the "Functions Menu" page I click on "Authorized Svcs"
		And I wait until the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window

		And in the "Authorized Services" page I should see the "How Many Requested" element
		And in the "Authorized Services" page I enter "<qty_reqd>" into the "How Many Requested" field
		And in the "Authorized Services" page I save the value of the "How Many Requested" element as "STORED_VALUE(1)"
		And in the "Authorized Services" page I enter "<qty_appr>" into the "How Many Authorized" field
		And in the "Authorized Services" page I save the value of the "How Many Authorized" element as "STORED_VALUE(2)"
		And in the "Authorized Services" page I convert "<auth_requested_date>" into the "Dates Begin Requested" field
		And in the "Authorized Services" page I save the value of the "Dates Begin Requested" element as "STORED_VALUE(3)"
		And in the "Authorized Services" page I convert "<auth_expiration_date>" into the "Dates End Requested" field
		And in the "Authorized Services" page I save the value of the "Dates End Requested" element as "STORED_VALUE(4)"
		And in the "Authorized Services" page I enter "$" into the "Ref Prov Number" field
		And I press "Enter"


		And I wait until the "IQ0200 Provider Search - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "IQ0200 Provider Search - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Provider Search" page I should see the "Prov Number" element
		And in the "Provider Search" page I enter "<requesting_provider_id>" into the "Prov Number" field
		And I press "Enter"


		And in the "Provider Search" page I click on "Prov Affs"
		#And the test pauses for "20" seconds
		#And I need to know the window names
		And I wait until the "PR0004 Provider Affiliation List - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "PR0004 Provider Affiliation List - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Provider Affiliation List" page I enter "HM" into the "PG Search Cell" field
		And I press "Enter"
		And I press tab 7 times
		And in the "Provider Affiliation List" page I enter "<practice_name>" into the "Facility Name Search Cell" field
		And I press "Enter"
		And I press tab 17 times
		And in the "Provider Affiliation List" page I enter "9999" into the "Date Search Cell" field
		And I press "Enter"
		And I press "Control + Alt + R"

		And I wait until the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Authorized Services" page I save the value of the "Ref Prov Number" element as "STORED_VALUE(5)"
		And in the "Authorized Services" page I enter "$" into the "Prov" field
		And I press "Enter"

		And I wait until the "IQ0200 Provider Search - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "IQ0200 Provider Search - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Provider Search" page I should see the "Prov Number" element
		And in the "Provider Search" page I enter "<servicing_provider_id>" into the "Prov Number" field
		And I press "Enter"
		And in the "Provider Search" page I click on "Prov Affs"

		And I wait until the "PR0004 Provider Affiliation List - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "PR0004 Provider Affiliation List - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Provider Affiliation List" page I enter "HM" into the "PG Search Cell" field
		And I press "Enter"
		And I press tab 7 times
		And in the "Provider Affiliation List" page I enter "<facility_name>" into the "Facility Name Search Cell" field
		And I press "Enter"
		And I press tab 3 times
		And in the "Provider Affiliation List" page I enter "M" into the "Hospital or Medical Search Cell" field
		And I press "Enter"
		And I press tab 14 times
		And in the "Provider Affiliation List" page I enter "9999" into the "Date Search Cell" field
		And I press "Enter"
		And I press "Control + Alt + R"

		And I wait until the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And in the "Authorized Services" page I save the value of the "Prov" element as "STORED_VALUE(6)"
		And in the "Authorized Services" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type AR" field
		And in the "Authorized Services" page I save the value of the "Auth Type AR" element as "STORED_VALUE(7)"
		And in the "Authorized Services" page I enter "M" into the "Claim Type CP" field

		And in the "Authorized Services" page I enter "<service_code>" into the "Proc Number" field
		And in the "Authorized Services" page I enter "<diagnosis_code>" into the "Diag Number 2" field

		#And in the "Authorized Services" page I use the determination "<status>" to determine what to enter into the "EX" field
		#And in the "Authorized Services" page I save the value of the "EX" element as "STORED_VALUE(8)"
		And in the "Authorized Services" page I enter "A1" into the "EX" field
		And I press "Control + S"
		And the test pauses for "5" seconds

		And I wait until the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window exists
		And I access the "UA0120 Authorized Services - AMISYS Advance - Rel 7.1 - Acct MOUNT CARMEL HEALTH PLAN" window
		And I input the alternate procedure codes if any are contained in "<alternate_imaging_codes_for_contrast>"

		And the test pauses for "5" seconds
		And I press "F8"
		And the test pauses for "5" seconds

		#And in the "Functions Menu" page I click on "Progress Notes"
		#And the test pauses for "5" seconds
		#And I wait until the "CS0800 Progress Notes - AMISYS Advance" window exists
		#And I access the "CS0800 Progress Notes - AMISYS Advance" window
		#When in the "Progress Notes" page I determine progress notes using "<requesting_provider_name>", "<practice_phone>", "<practice_fax>", "<proccode>", "<rendering_facility_name>", "<reference_number>", and "<essette_number>" and insert it into the "Progress Note Text Field" field

		And I close "Internet Explorer"

		Examples:
		| requested_date      | blank_01 | military_date             | other_reference_#  |	member_id |	member_first_name |	member_last_name  |	practice_name               |	requesting_provider_id  |	requesting_provider_first_name       | requesting_provider_last_name    |	requesting_provider_npi_# |	facility_name                   | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class      |	sub_class_code | type           |	type_code|	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status                    |	health_plan                | source     |	status_reason |  auth_class | blank_03 | blank_04       | auth_type      | auth_status |	auth_number |	diagnosis_code |	diagnosis                                          |	diagnosis_type |	auth_modified_date | blank_05 | blank_06 |  blank_07 | service_code                   | service_description                 | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | type |	type_code  |	auth_requested_date |	auth_authorized_date | auth_expiration_date	 |  blank_20 | blank_21 | blank_22 | alternate_imaging_codes_for_contrast |
