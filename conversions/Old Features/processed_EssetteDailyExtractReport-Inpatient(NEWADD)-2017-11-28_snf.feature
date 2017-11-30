Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-28_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<auth_admission_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

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

	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
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
	And the test pauses for "5" seconds
	And in the "hospital_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds

  And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "3" seconds

	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<service_code>" into the "proc_number" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page if the "<service_code>" equals R0022 I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
	And the test pauses for "3" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"
	And I input the final reimbursement amount if any is contained in "<final_reimb_amt>"
	And I input the drug doses "<add_drug_doses>" and drug reimbursement "<add_drug_reimb>" if they exist
	And I input the discharge date "<dischrg_date>" and final reimbursement amount two "<final_reimb_amt_2>" if they exist
	And I input the per diem level one "<per_diem_lvl_1>" and per diem level two "<per_diem_lvl_2>" and total days "<total_days>" and total per diem "<total_per_diem>" if they exist


	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 11012017 | 2017-11-01T16:56:55+00:00 |  | 000110806-01 | Willard | Miller | BARNESVILLE FAM HLTH CTR | 904682 | HIMALAYA | PATCHA | 1578516951 | ASTORIA PLACE OF BARNESVILLE | 931637 | 1982955357 | ASTORIA PLACE OF BARNESVILLE | 1982955357 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF BARNESVILLE | 11282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11012017 | 11252017 | Standard |  |  | 2017-11-01 | 17/RUA01=$3,214.76 | 24 | 2017-11-25 |  | 2017-11-21 | 2017-11-27 | 20 | 24 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102011 | E119, I10, R55 | Syncope and collapse | ICD10 | 11282017 | 11012017 | 11252017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 11132017 | 2017-11-13T13:20:28+00:00 |  | 000007182-01 | RUBY | MILLER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11092017 | 11162017 | Standard |  |  | 2017-11-09 | UNSKILLED RATE OF $200.00/DAY X 7 DAYS=$1,400.00 | 0 | 2017-11-16 |  | 2017-11-24 |  | 7 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113077 | K567, R0602 | Shortness of breath | ICD10 | 11282017 | 11092017 | 11162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1400 | 1400 | Approved Skilled | 8 | Revenue | RV |  |  |  | 7.0 |
| 10232017 | 2017-10-23T12:14:56+00:00 |  | 000052190-01 | RUTH | PELPHREY | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10202017 | 11162017 | Standard |  |  | 2017-10-20 | 17/RVB01=$5,411.86 PER DIEM RATE OF $200.00/DAY X 7 DAYS=$1,400.00 TOTAL PAYMENT=$6,811.86 | 0 | 2017-11-16 |  | 2017-11-17 | 2017-11-17 | 27 | 27 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023123 | G9340, Z950 | Presence of cardiac pacemaker | ICD10 | 11282017 | 10202017 | 11162017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6811 | 6811 | Approved Skilled | 28 | Revenue | RV |  |  |  | 7.0 |
| 10132017 | 2017-10-13T17:14:16+00:00 |  | 000086793-01 | Phillip | Swisher | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 11282017 | Approved | THE TIMKEN COMPANY | Fax | SNF | Inpatient | 10112017 | 10282017 | Standard |  |  | 2017-10-11 | 16/RVB01= $3350.20 PLEURX SUPPLIES PER INVOICE= $999.18 TOTAL: $4349.38 | 0 | 2017-10-28 |  | 2017-11-06 | 2017-11-06 | 13 | 13 | 4349.18 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016017 | C259, J90, R0902 | Hypoxemia | ICD10 | 11282017 | 10112017 | 10282017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4349 | 4349 | Approved | 18 | Revenue | RV |  |  |  | 10.0 |
| 11102017 | 2017-11-10T12:18:43+00:00 |  | 000040701-01 | RICHARD | LONG | MR. CHOO Y RHEE MD | 937376 | CHOO Y | RHEE | 1336218510 | SHG WHITEHALL HOLDINGS L | 900250 | 1841551488 | THE MANOR AT WHITEHALL | 1871693846 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE MANOR AT WHITEHALL | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 11142017 | Standard |  |  | 2017-11-08 | 17/HB101=$3,448.45 | 0 | 2017-11-14 |  | 2017-11-22 |  | 6 | 6 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110057 | N179, R296, Z9181 | History of falling | ICD10 | 11282017 | 11082017 | 11142017 | HB101 | SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 11032017 | 2017-11-03T14:03:15+00:00 |  | 000011630-01 | ROSE | SWAGLER | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10312017 | 11142017 | Standard |  |  | 2017-10-31 | 16/RVB01=$3,350.20 | 0 | 2017-11-14 |  | 2017-11-24 | 2017-11-10 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106055 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11282017 | 10312017 | 11142017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 11062017 | 2017-11-06T15:49:21+00:00 |  | 000104640-01 | Dorothy | Nyswaner | FRIENDSHIP VILLAGE DUBLI | 900154 |  | FRIENDSHIP VILLAGE DUBLIN | 1891778536 | FRIENDSHIP VILLAGE DUBLI | 900154 | 1891778536 | FRIENDSHIP VILLAGE DUBLIN | 1891778536 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE DUBLIN | 11282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11032017 | 11222017 | Standard |  |  | 2017-11-03 | 17/RVB01=$5,411.86 | 0 | 2017-11-22 |  | 2017-11-16 | 2017-11-21 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107012 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 11282017 | 11032017 | 11222017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 11082017 | 2017-11-08T11:15:16+00:00 |  | 000106016-01 | Michelle | Damon | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 11282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 10092017 | 11182017 | Standard |  |  | 2017-10-09 | 17/RVC01=$6,306.19 PER DIEM RATE OF $200.00/DAY X 20 DAYS=$4,000.00 TOTAL PAYMENT=$10,306.19 | 55 | 2017-11-18 |  | 2017-11-22 | 2017-11-22 | 40 | 95 | 10306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113095 | N19 | Unspecified kidney failure | ICD10 | 11282017 | 10092017 | 11182017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 41 | Revenue | RV |  |  |  | 20.0 |
| 10312017 | 2017-10-31T13:58:48+00:00 |  | 000076813-01 | Donald | Batteiger | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 11282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 10292017 | 12252017 | Standard |  |  | 2017-10-29 | 17/RVB01= $5411.86 | 0 | 2017-11-25 |  | 2017-11-28 | 2017-11-28 | 27 | 27 | 5411.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031085 | E119, H8149, I10, I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 11282017 | 10292017 | 11252017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 58 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 11142017 | 2017-11-14T13:32:02+00:00 |  | 000087540-01 | Lucille | Mitchell | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 11282017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11102017 | 11222017 | Standard |  |  | 2017-11-10 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 35 | 2017-11-22 |  | 2017-11-27 |  | 12 | 47 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115027 | K5641 | Fecal impaction | ICD10 | 11282017 | 11102017 | 11222017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 10252017 | 2017-10-25T15:00:39+00:00 |  | 000111713-01 | Dora | Smailes | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 11282017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 10232017 | 11222017 | Standard |  |  | 2017-10-23 | 17/RUC01= $6049.81 10 DAYS @ $200.00= $2000.00 TOTAL: $8049.81 | 0 | 2017-11-22 |  | 2017-11-28 | 2017-11-28 | 30 | 30 | 8049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025069 | R579, T7840XA | Allergy, unspecified, initial encounter | ICD10 | 11282017 | 10232017 | 11222017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 8049 | 8049 | Approved | 31 | Revenue | RV |  |  |  | 2.0 |
| 11102017 | 2017-11-10T13:23:52+00:00 |  | 000042333-01 | MARY | PLACE | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11082017 | 11182017 | Standard |  |  | 2017-11-08 | 16/RVA01= $2689.71 | 0 | 2017-11-18 |  | 2017-11-27 | 2017-11-27 | 10 | 10 | 2689.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110063 | J189 | Pneumonia, unspecified organism | ICD10 | 11282017 | 11082017 | 11182017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 11 | RUGS,HHRG | HP |  |  |  | 10.0 |
| 11062017 | 2017-11-06T16:09:16+00:00 |  | 000052378-01 | ROBERT | MASSEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 11282017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11032017 | 11102017 | Standard |  |  | 2017-11-03 | 16/RHC01=$3,133.29 | 0 | 2017-11-10 |  | 2017-11-27 | 2017-11-27 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107019 | N390 | Urinary tract infection, site not specified | ICD10 | 11282017 | 11032017 | 11102017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 11072017 | 2017-11-07T16:31:25+00:00 |  | 000110832-01 | Robert | Ramsey | SYAMOQ ELDERCARE INC | 921419 | SYED A | MOQEETH | 1669448171 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 920758 | 1760427462 | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 1760427462 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND WOODRIDGE OF FAIRFIELD OH | 11282017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11282017 | 12052017 | Standard |  |  | 2017-11-04 | Contract/RUG: 17/RUB (Per MDS) =$5,813.99 | 0 | 2017-11-13 |  | 2017-11-22 | 2017-11-22 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108003 | I739 | Peripheral vascular disease, unspecified | ICD10 | 11282017 | 11042017 | 11132017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11172017 | 2017-11-17T15:38:17+00:00 |  | 000076493-01 | Harry | Nickols | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | STERLING TRANSITIONAL SUITES | 923893 | 1285902098 | STERLING TRANSITIONAL SUITES | 1285902098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | STERLING TRANSITIONAL SUITES | 11282017 | Approved | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 11162017 | 11252017 | Standard |  |  | 2017-11-16 | 17/RVA01= $3586.28 | 0 | 2017-11-25 |  | 2017-11-28 | 2017-11-28 | 9 | 9 | 3586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117088 | Z471, Z96652 | Presence of left artificial knee joint | ICD10 | 11282017 | 11162017 | 11252017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
