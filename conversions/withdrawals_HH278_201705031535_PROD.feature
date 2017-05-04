@medibot

Feature: Withdrawals HealthHelp HH278_201705031535_PROD

As an data administrator of Essette UM
I want to process the HealthHelp Scenario Outline feature
So that all of the authorizations can be automatically loaded into Essette

Scenario Outline: Withdrawals_HH278_201705031535_PROD
Given I open "Chrome"
  And I go to the Essette Logon page
  And in the "Logon" page I enter "Medibot" into the "User Name" field
  And in the "Logon" page I enter "br@dley3" into the "Password" field
  And in the "Logon" page I click on "Login"
  And I should check to see if the "<status>" is an Initial Authorization
  And in the "Main" page I enter "Outpatient" into the "Auth Class" field
  And I hit the Enter key
  And there is a "2" second pause
  And with the procedure code of "<proccode>" I input the correct value into the "Auth Subclass" field on the "Main" page
  And I hit the Enter key
  And in the "Main" page I enter "Pre-Service" into the "Auth Type" field
  And I hit the Enter key
  And in the "Main" page I enter "<request_date>" into the "Request Date" field
  And I hit the Enter key

  And in the "Main" page I click on "Member Search"
  And there is a "2" second pause
  And in the "Member Plan Search" page I enter "<member_id>" into the "Member Number" field
  And in the "Member Plan Search" page I click on "Search"
  And there is a "2" second pause
  And in the "Member Plan Search" page I click on "Select Member"
  And there is a "2" second pause

  And in the "Main" page I enter "<reference_number>" into the "Other Reference" field
  And in the "Main" page I enter "Medibot Tester" into the "Assign To" field
  And I hit the Enter key

  And in the "Main" page I click on "Create"
  And there is a "2" second pause

  And in the "Authorization Info" page I click on "Provider Search"
  And I print the Essette Authorization Number
  And there is a "2" second pause
  And in the "Authorization Info" page I should see the "Popup Provider ID" element
  And in the "Authorization Info" page I enter "<requesting_npi>" into the "Popup Provider NPI" field
  And there is a "1" second pause
  And in the "Authorization Info" page I uncheck the "Has Contract" checkbox
  And I hit the Enter key
  And there is a "2" second pause
  And in the "Authorization Info" page I click on "Select Provider"
  And there is a "2" second pause

  And in the "Authorization Info" page I click on "Facility Search"
  And there is a "2" second pause
  And in the "Authorization Info" page I should see the "Popup Provider ID" element
  And in the "Authorization Info" page I enter "<rendering_facility_id>" into the "Popup Provider ID" field
  And there is a "1" second pause
  And in the "Authorization Info" page I uncheck the "Has Contract" checkbox

  And I hit the Enter key
  And there is a "2" second pause
  And in the "Authorization Info" page I click on "Select Provider"
  And there is a "2" second pause

  And in the "Authorization Info" page I enter "Hea" into the "Source of Auth" field
  And I hit the Enter key

  And I enter "<urgent_or_elective>" in the Priority field
  And I hit the Enter key
  And in the "Authorization Info" page I enter "<urgent_or_elective>" into the "Source of Admission" field
  And I hit the Enter key
  And in the "Authorization Info" page I click on "Save"
  And in the "Authorization Info" page I should see the text "Authorization information was successfully updated."
  And I save the "<manual_clinical_notes>" for supplemental quantities

  And in the "Main" page I click on "Diags and Services"
  And in the "Diags And Services" page I enter "<diagnosis_code1>" into the "Add Code Diagnosis" field
  And I hit the Enter key
  And there is a "2" second pause
  And in the "Diags And Services" page I enter "<proccode>" into the "Add Code Services" field
  And I hit the Enter key
	And there is a "2" second pause
  And I enter "<units_cycles_requested>" or the Supplemental Quantity for the "<proccode>" procedure code
  And in the "Diags And Services" page I enter "A" into the "Determination" field if it exists and is visible
  And I hit the Enter key
  And in the "Diags And Services" page I click on "Update Services"
  And there is a "2" second pause

  And I input the "<alternate_imaging_codes_for_contrast>" and the "<units_cycles_requested>" or supplemental quantity
  And in the "Diags And Services" page I click on "Update Services"
  And there is a "2" second pause
  And in the "Diags And Services" page I should see the text "The services update was completed."
	And there is a "2" second pause

	And in the "Main" page I click on "Notes"
	And I enter Manual Clinical Notes if any are contained in "<manual_clinical_notes>"

	And in the "Main" page I click on "Diags and Services"

	And in the "Authorization Info" page I click on "Queue Select Dropdown"
  And there is a "2" second pause
  And I send M
  And there is a "2" second pause
  And I hit the Enter key
  And there is a "2" second pause

  And in the "Authorization Info" page I click on "Status In Process"
  And there is a "2" second pause
  And in the "Authorization Status" page I should see the "Set Status To" element
  And in the "Authorization Status" page I enter "A" into the "Set Status To" field
  And I hit the Enter key
  And in the "Authorization Status" page I enter "M" into the "Select Reason" field
  And I hit the Enter key
  And in the "Authorization Status" page I enter "<end_date>" into the "Approval Date End" field
  And in the "Authorization Status" page I enter "<start_date>" into the "Approval Date Start" field
  And in the "Authorization Status" page I click on "Save and Close"
  And in the "Authorization Status" page I press the "Tab" key "2" times
  And there is a "2" second pause

  And I close "Chrome"

Examples:
| reference_number | start_date  | end_date   | member_id  | member_name | request_date  | decision_date     | diagnosis_code1 | blank03 | urgent_or_elective |requesting_npi    | requesting_provider_id | requesting_provider_name | rendering_facility_id     | rendering_facility_name | rendering_facility_npi | proccode | alternate_imaging_codes_for_contrast  | units_cycles_requested | units_cycles_approved   | manual_clinical_notes | status |
| Q18092565|20170417|20170517|000093153|Anna Taylor|2017-05-03T09:42:11+00:00|2017-05-03T09:42:11+00:00|C182||E|1598784092|555555|DALJEET SINGH|906699|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|71260||1|1||3|
| Q18320976|20170501|20170531|000034063|NATALIA WYMER|2017-05-03T11:20:43+00:00|2017-05-03T11:20:43+00:00|R413||U|1295770469|555555|JOHN DIPIETRA|936416|MOUNT CARMEL EAST HOSPITAL|1982784534|70553||1|1||3|
| Q18323005|20170502|20170601|000077118|Bobby Cantrell|2017-05-02T16:07:18+00:00|2017-05-02T16:07:18+00:00|I714||E|1376594168|936786|DANIEL BADENHOP|936449|MEMORIAL HOSPITAL OF UNION COUNTY|1720159338|74175||1|1||3|
