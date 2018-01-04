Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-03_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-03_SNF
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
| 11272017 | 2017-11-27T16:56:39+00:00 |  | 000104772-01 | Frederick | Sandusky | HEALTHY ALLIANCE LLC | 900509 | GAVIN P | BAUMGARDNER | 1538265434 | ALTERCARE OF HILLIARD | 908740 | 1649440702 | ALTERCARE OF HILLIARD | 1649440702 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF HILLIARD | 01032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11262017 | 12312017 | Standard |  |  | 2017-11-26 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 15=$3,000.00 TOTAL PAYMENT TO FACILITY=$9,049.81 | 0 | 2017-12-31 |  | 2018-01-02 | 2018-01-02 | 35 | 35 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128054 | S72011A, Z96641 | Presence of right artificial hip joint | ICD10 | 01032018 | 11262017 | 12312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 0 | 9049 |  | 36 | Revenue | RV |  |  |  | 5.0 |
| 12112017 | 2017-12-11T13:19:51+00:00 |  | 000086716-01 | Robert | Ryan | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | MT VERNON ELDERLY SRVS L | 926379 | 1598831869 | MT VERNON ELDERLY SERVICES LLC | 1598831869 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MT VERNON ELDERLY SERVICES LLC | 01032018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 12082017 | 01012018 | Standard |  |  | 2017-12-08 | 17/RVC01= $6306.19 | 0 | 2018-01-01 |  | 2018-01-02 | 2018-01-02 | 24 | 24 | 6306.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211128 | M6281 | Muscle weakness (generalized) | ICD10 | 01032018 | 12082017 | 01012018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 25 | RUGS,HHRG | HP |  |  |  | 4.0 |
| 12282017 | 2017-12-28T17:11:30+00:00 |  | 000074506-01 | James | Chandler | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | OAK HLTH CARE INVESTORS | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 12302017 | Standard |  |  | 2017-12-20 | 6 NONSKILLED DAYS @ $200.00= $1200.00 | 0 | 2017-12-30 |  |  |  | 6 | 0 | 1200.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229005 | R6520 | Severe sepsis without septic shock | ICD10 | 01032018 | 12202017 | 12302017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1200 | 1200 | Approved | 11 | Revenue | RV |  |  |  | 5.0 |
| 12282017 | 2017-12-28T13:21:52+00:00 |  | 000086123-01 | Katherine | Mcabee | GENESIS MEDICAL GRP LLC | 923234 | PAUL D | MUMMA | 1619958121 | ADAMS LANE CARE CENTER | 924190 | 1841288149 | ADAMS LANE CARE CENTER | 1841288149 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ADAMS LANE CARE CENTER | 01032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 12272017 | 12292017 | Standard |  |  | 2017-12-27 | 2 NONSKILLED DAYS @ $200.00= $400.00 | 0 | 2017-12-29 |  |  |  | 2 | 0 | 400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228056 | M5430 | Sciatica, unspecified side | ICD10 | 01032018 | 12272017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 400 | 400 | Approved | 3 | Revenue | RV |  |  |  | 2.0 |
| 11242017 | 2017-11-24T12:21:26+00:00 |  | 000081323-01 | Ruth | Cashdollar | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11212017 | 12122017 | Standard |  |  | 2017-11-21 | 21 DAYS @ $200.00= $4200.00 IV DAPTO. PER INVOICE= $2956.30 IV CEF. PER INVOICE= $469.22 TOTAL; $7625.52 | 0 | 2017-12-12 |  | 2018-01-02 |  | 21 | 21 | 7625.52 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127069 | I87339, J449, J9601, L049 | Acute lymphadenitis, unspecified | ICD10 | 01032018 | 11212017 | 12122017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7625 | 7625 | Approved | 22 | Revenue | RV |  |  |  | 7.0 |
| 12122017 | 2017-12-12T11:44:27+00:00 |  | 000049041-01 | CARL | WALTON | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | NEWARK CARE AND REHABILI | 952419 | 1255854667 | NEWARK CARE AND REHABILITATION | 1255854667 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK CARE AND REHABILITATION | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12072017 | 12242017 | Standard |  |  | 2017-12-07 | 17/RUA01= $3214.76 | 49 | 2017-12-24 |  | 2018-01-02 |  | 17 | 66 | 3214.76 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212052 | E039, E119, E669, I639, J449, J9600, R569 | Unspecified convulsions | ICD10 | 01032018 | 12072017 | 12242017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12112017 | 2017-12-11T16:15:15+00:00 |  | 000109165-01 | Bonnie | Gibson | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | NEWARK HILLS HEALTH & REHABILITATION | 942090 | 1407246200 | NEWARK HILLS HEALTH & REHABILITATION | 1407246200 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | NEWARK HILLS HEALTH & REHABILITATION | 01032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12072017 | 12262017 | Standard |  |  | 2017-12-07 | 17/RUB01= $5813.99 | 0 | 2017-12-26 |  | 2018-01-03 | 2018-01-03 | 19 | 19 | 5813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211160 | I2510, I160 | HYPERTENSIVE URGENCY | ICD10 | 01032018 | 12072017 | 12262017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 12212017 | 2017-12-21T15:18:00+00:00 |  | 000096682-01 | Shirley | Moore | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12202017 | 12292017 | Standard |  |  | 2017-12-20 | Swing Bed Daily Rate x 9 SNF Days | 0 | 2017-12-29 |  |  | 2017-12-28 | 9 | 9 | Swing Bed Daily Rate x 9 SNF Days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221081 | Z5189 | Encounter for other specified aftercare | ICD10 | 01032018 | 12202017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 10 | Revenue | RV |  |  |  | 2.0 |
| 12212017 | 2017-12-21T16:07:03+00:00 |  | 000108900-01 | Donald | Hance | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 01032018 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 12202017 | 01012018 | Standard |  |  | 2017-12-20 | Per Diem: $200.00/day x 12 SNF Days = $2,400.00 | 0 | 2018-01-01 |  | 2018-01-02 | 2018-01-02 | 12 | 12 | 2400.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222004 | R0602 | Shortness of breath | ICD10 | 01032018 | 12202017 | 01012018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2400 | 2400 | Approved | 13 | Revenue | RV |  |  |  | 12.0 |
| 12222017 | 2017-12-22T14:14:33+00:00 |  | 000078644-01 | James | Sheets | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY FRANCISCAN AT WEST PARK | 922575 | 1821054859 | MERCY FRANCISCAN AT WEST PARK | 1821054859 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY FRANCISCAN AT WEST PARK | 01032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 12212017 | 12292017 | Standard |  |  | 2017-12-21 | Contract/RUG: 16/RVA (Per MDS) = $2,689.71 | 0 | 2017-12-29 |  | 2018-01-02 | 2018-01-02 | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222066 | Z471, Z96651 | Presence of right artificial knee joint | ICD10 | 01032018 | 12212017 | 12292017 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 9 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 12182017 | 2017-12-18T12:13:53+00:00 |  | 000115560-01 | KATHRYN | PACK | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | SCIOTO RETIREMENT COMMUNITY | 926528 | 1932452398 | SCIOTO RETIREMENT COMMUNITY | 1932452398 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SCIOTO RETIREMENT COMMUNITY | 01032018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12162017 | 12302017 | Standard |  |  | 2017-12-16 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 | 0 | 2017-12-30 |  | 2018-01-02 | 2018-01-02 | 14 | 14 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218147 | I10, I951, R296, R55 | Syncope and collapse | ICD10 | 01032018 | 12162017 | 12302017 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 15 | RUGS,HHRG | HP |  |  |  | 14.0 |
| 10242017 | 2017-10-24T09:33:03+00:00 |  | 000008707-01 | MARLENE | HAY | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10212017 | 12082017 | Standard |  |  | 2017-10-21 | 17/RUC01=$6,049.81 PER DIEM RATE OF $200.00/DAY X 28= $5,600.00 TOTAL PAYMENT TO FACILITY=$11,649.81 | 0 | 2017-12-08 |  | 2018-01-03 | 2018-01-03 | 48 | 48 | 11649.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024027 | I259, I4891, I639 | Cerebral infarction, unspecified | ICD10 | 01032018 | 10212017 | 12082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved Skilled | 49 | Revenue | RV |  |  |  | 1.0 |
| 11292017 | 2017-11-29T12:54:01+00:00 |  | 000004066-01 | ROBERT | BOYD | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11252017 | 12292017 | Standard |  |  | 2017-11-25 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 14=$3,500.00 TOTAL PAYMENT TO FACILITY=$9,549.81 | 0 | 2017-12-29 |  | 2018-01-03 | 2018-01-03 | 34 | 34 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130001 | I639, R030 | Elevated blood-pressure reading, w/o diagnosis of htn | ICD10 | 01032018 | 11252017 | 12292017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9549 | 9549 | Approved Skilled | 35 | Revenue | RV |  |  |  | 4.0 |
| 12072017 | 2017-12-07T14:45:32+00:00 |  | 000049146-01 | JOHN | SPURGEON | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 12172017 | Standard |  |  | 2017-12-05 | 17/RUC01=$6049.81 | 0 | 2017-12-17 |  | 2018-01-03 | 2018-01-03 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207068 | G20, I10, M6281 | Muscle weakness (generalized) | ICD10 | 01032018 | 12052017 | 12172017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 12182017 | 2017-12-18T13:30:20+00:00 |  | 000012525-01 | BILLY | FARMER | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | YORKLAND HEALTH CARE INC | 902108 | 1578567475 | MCNAUGHTEN POINTE | 1578567475 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MCNAUGHTEN POINTE | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12152017 | 12272017 | Standard |  |  | 2017-12-15 | 16/RUC01=$7,333.11 | 0 | 2017-12-27 |  | 2018-01-03 | 2018-01-03 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218154 | E860, R1312, R2689, R4182, R531 | Weakness | ICD10 | 01032018 | 12152017 | 12272017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 12072017 | 2017-12-07T14:48:30+00:00 |  | 000043976-01 | RICHARD | WITTEMAN | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12052017 | 12162017 | Standard |  |  | 2017-12-05 | 17/RUC01=$6,049.81 | 0 | 2017-12-16 |  | 2018-01-03 | 2018-01-03 | 11 | 11 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207069 | E119, I4891, J449, R55 | Syncope and collapse | ICD10 | 01032018 | 12052017 | 12162017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 12 | RUGS,HHRG | HP |  |  |  | 11.0 |
| 12182017 | 2017-12-18T13:44:56+00:00 |  | 000031217-01 | KENNETH | SCHOOLEY | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 01032018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12142017 | 12272017 | Standard |  |  | 2017-12-14 | 17/RUA01=$3,214.76 | 0 | 2017-12-27 |  | 2018-01-03 | 2018-01-03 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218155 | I6502, Z7901 | Long term (current) use of anticoagulants | ICD10 | 01032018 | 12142017 | 12272017 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
