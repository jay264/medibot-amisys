Feature: Test One at a Time for Urgent
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Test One at a Time for Urgent
Given I save the auth class "<auth_class>" to a variable
Given I sign in to the application
And the test pauses for "3" seconds
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
And the test pauses for "3" seconds
And I press "Control + S"

And in the "certification" page I should see the "medibots" image
And the test pauses for "3" seconds

And in the "Functions Menu" page I click on "Hospital Svcs"
And the test pauses for "3" seconds
And in the "hospital_services" page I should see the "est_admit" image
And the test pauses for "3" seconds
And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
And the test pauses for "3" seconds

And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

And in the "hospital_services" page I enter "$" into the "facility_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And the test pauses for "3" seconds
And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
And I press ENTER graphically
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And I determine whether something is PAR or NONPAR
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds

And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And the test pauses for "3" seconds
And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I copy the provider number to the clipboard and save the variable
And the test pauses for "3" seconds
And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
And the test pauses for "3" seconds
And in the "hospital_services" page I click on the "save" image
And the test pauses for "5" seconds
And I press "F8"
And the test pauses for "5" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "5" seconds
And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "5" seconds
And in the "authorized_services" page I should see the "amounts_and_dates" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
And the test pauses for "2" seconds

And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
And the test pauses for "2" seconds
And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
And the test pauses for "2" seconds

#And I use the sub class "<sub_class>" to determine what location to enter into the location image
And in the "authorized_services" page I enter "21" into the "location" image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "AD" into the "count" image

And the test pauses for "2" seconds
And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And in the "authorized_services" page I click on the "save" image
And the test pauses for "10" seconds

And I press "F8"
And the test pauses for "3" seconds
And I press ENTER graphically
And the test pauses for "3" seconds
And I press "F8"
And the test pauses for "3" seconds

And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
And I press "Control + S"
And the test pauses for "3" seconds

And in the "Functions Menu" page I click on "Remarks"
And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
And the test pauses for "3" seconds
And I press "Control + N"
And the test pauses for "3" seconds
And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
And the test pauses for "4" seconds
And I press "Tab"
And I enter the "<other_reference_#>" text
And in the "remarks_maintenance" page I click on the "save" image
And the test pauses for "4" seconds
And I press "F8"
And the test pauses for "4" seconds

And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

And I press "Control + Q"
And the test pauses for "5" seconds
And I press ENTER graphically
And the test pauses for "5" seconds
And I close "Internet Explorer"

	Examples:
	| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
	| 01302018 | 2018-01-30T09:59:03+00:00 |  | 000108444-01 | James | Potter | MIAMI VALLEY HSPISTS GRP | 919535 | SUDHIR D | DHOBALE | 1124294988 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 03162018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180206155295.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130069 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03162018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
