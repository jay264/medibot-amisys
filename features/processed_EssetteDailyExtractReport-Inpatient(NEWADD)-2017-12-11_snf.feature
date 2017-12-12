Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-11_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-11_SNF
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
| 10122017 | 2017-10-12T15:49:08+00:00 |  | 000066397-01 | ROBERT | HORN | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 10102017 | 10312017 | Standard |  |  | 2017-10-10 | 17/RUC01=$6,049.81 PER DIEM RATE OF $250.00/DAY X 1=$250.00 TOTAL PAYMENT=$6,299.81 | 0 | 2017-10-31 |  | 2017-12-08 |  | 21 | 21 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012056 | S2242XA | Multiple fractures of ribs, left side, init for clos fx | ICD10 | 12112017 | 10102017 | 10312017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 6299 | 6299 | Approved Skilled | 22 | Revenue | RV |  |  |  | 1.0 |
| 12042017 | 2017-12-04T15:01:44+00:00 |  | 000107091-01 | Frank | Faber Sr | LOVELAND HEALTH CARE CTR | 952590 |  | LOVELAND HEALTH CARE CENTER | 1386626786 | LOVELAND HEALTH CARE CTR | 952590 | 1386626786 | LOVELAND HEALTH CARE CENTER | 1386626786 | Skilled Nursing Facility | SNF | Pre-Service | PRE |  | LOVELAND HEALTH CARE CENTER | 12112017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Services Available In-Network | Inpatient | 12112017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171204142 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11152017 | 2017-11-15T15:14:32+00:00 |  | 000020456-01 | HELEN | KELTNER | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11132017 | 12072017 | Standard |  |  | 2017-11-13 | 17/RUC01= $6049.81 4 DAYS @ $250.00= $1000.00 TOTAL: $7049.81 | 0 | 2017-12-07 |  | 2017-12-11 | 2017-12-11 | 24 | 24 | 7049.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115080 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 12112017 | 11132017 | 12072017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 7049 | 7049 | Approved | 25 | Revenue | RV |  |  |  | 4.0 |
| 12072017 | 2017-12-07T14:35:48+00:00 |  | 000104958-01 | Mary | Barr | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | CHS ARLINGTON INC | 902590 | 1306820691 | CHS ARLINGTON INC | 1306820691 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CHS ARLINGTON INC | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12062017 | 12092017 | Standard |  |  | 2017-12-06 | 3 nonskilled days @ $200.00= $600.00 | 0 | 2017-12-09 | 2017-12-11 |  |  | 3 | 0 | 600.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207067 | G9340, E1110 | E1110 | ICD10 | 12112017 | 12062017 | 12092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 600 | 600 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 12052017 | 2017-12-05T12:27:46+00:00 |  | 000073293-01 | Sue | Flack | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | PRICE ROAD HEALTH & REHABILITATION C | 941955 | 1134519937 | PRICE ROAD HEALTH & REHABILITATION C | 1134519937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PRICE ROAD HEALTH & REHABILITATION C | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12012017 | 12062017 | Standard |  |  | 2017-12-01 | 5 NONSKILLED DAYS @ $200.00= $1000.00 | 16 | 2017-12-06 |  |  |  | 5 | 16 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205089 | Z9181 | History of falling | ICD10 | 12112017 | 12012017 | 12062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 12062017 | 2017-12-06T14:21:27+00:00 |  | 000115650-01 | PHILIP | WAGONER | ADENA MEDICAL GROUP LLC | 919753 | RICHARD S | HARRIS | 1811945801 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 12112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 12042017 | 12082017 | Standard |  |  | 2017-12-04 | Swing Bed Daily Rate x 4 days | 0 | 2017-12-08 |  |  | 2017-12-06 | 4 | 4 | Swing Bed Daily Rate x 4 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206076 | S86011D | Strain of right Achilles tendon, subsequent encounter | ICD10 | 12112017 | 12042017 | 12082017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
| 12042017 | 2017-12-04T14:38:15+00:00 |  | 000076763-01 | Kathryn | Rose | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 12112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 11302017 | 12052017 | Standard |  |  | 2017-11-30 | 5 NONSKILLED DAYS @ $200.00= $1000.00 | 0 | 2017-12-05 |  |  |  | 5 | 0 | 1000.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204157 | N390 | Urinary tract infection, site not specified | ICD10 | 12112017 | 11302017 | 12052017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1000 | 1000 | Approved | 6 | Revenue | RV |  |  |  | 5.0 |
| 11212017 | 2017-11-21T10:52:14+00:00 |  | 000109447-01 | Faith | Michaels | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 12112017 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 11172017 | 11302017 | Standard |  |  | 2017-11-17 | Contract/RUG: 17/RUC (Per MDS) = $6,049.81 | 0 | 2017-11-30 |  | 2017-12-08 | 2017-12-08 | 13 | 13 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121061 | S72145A | Nondisplaced intertrochanteric fracture of left femur, init | ICD10 | 12112017 | 11172017 | 11302017 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 14 | RUGS,HHRG | HP |  |  |  | 13.0 |
| 11302017 | 2017-11-30T10:45:04+00:00 |  | 000031567-01 | WILLIAM | IDEN | MEDICAL & SURG ASSOC INC | 935696 | MICHAEL E | CAMPOLO | 1184604167 | HEATH NURSING CARE CTR | 900867 | 1750365920 | HEATH NURSING CARE CENTER | 1750365920 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEATH NURSING CARE CENTER | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 11292017 | 12082017 | Standard |  |  | 2017-11-29 | 16/RUB01= $4429.71 | 0 | 2017-12-08 |  | 2017-12-11 | 2017-12-11 | 9 | 9 | 4429.71 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130092 | I5040, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12112017 | 11292017 | 12082017 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 11072017 | 2017-11-07T15:34:33+00:00 |  | 000072862-01 | Kenneth | Cavender | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 12112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11062017 | 12012017 | Standard |  |  | 2017-11-06 | Contract/RUG: 17/RVA (Per MDS) = $3,586.28 Per Diem: $200.00/day x 5 SNF Days = $1,000.00 Total Payment: $4,586.28 | 0 | 2017-12-01 |  | 2017-12-08 | 2017-12-08 | 25 | 25 | 4586.28 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107116 | I639 | Cerebral infarction, unspecified | ICD10 | 12112017 | 11062017 | 12012017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4586 | 4586 | Approved | 26 | Revenue | RV |  |  |  | 5.0 |
| 11022017 | 2017-11-02T16:53:46+00:00 |  | 000106640-01 | Charles | Clouser | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | THE LAURELS OF HILLSBORO | 952248 | 1255387221 | THE LAURELS OF HILLSBORO | 1255387221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | THE LAURELS OF HILLSBORO | 12112017 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 11012017 | 11182017 | Standard |  |  | 2017-11-01 | OON/PB101=$2,132.09 | 6 | 2017-12-18 |  | 2017-12-11 | 2017-11-16 | 17 | 23 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103008 | I951 | Orthostatic hypotension | ICD10 | 12112017 | 11012017 | 11182017 | PB101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved Skilled | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 12052017 | 2017-12-05T11:18:06+00:00 |  | 000019335-01 | RODGER | HEISER | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 12112017 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12032017 | 12062017 | Standard |  |  | 2017-12-03 | 3 DAYS @ $250.00= $750.00 | 45 | 2017-12-06 |  |  | 2017-12-11 | 9 | 48 | 750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205073 | R4182 | Altered mental status, unspecified | ICD10 | 12112017 | 12032017 | 12062017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 750 | 750 | Approved | 4 | Revenue | RV |  |  |  | 3.0 |
| 11302017 | 2017-11-30T11:14:56+00:00 |  | 000111529-01 | Robert | Feldman | GERIMED INC | 932657 | EMMANUEL V | RIVERA | 1912946146 | LEBANON COUNTRY MANOR | 930691 | 1225455926 | LEBANON COUNTRY MANOR | 1225455926 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LEBANON COUNTRY MANOR | 12112017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 11282017 | 12032017 | Standard |  |  | 2017-11-28 | Contract/RUG: 17/RHC (Per MDS) = $4,132.02 | 0 | 2017-12-03 |  | 2017-12-08 |  | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130097 | I5030, J189 | Pneumonia, unspecified organism | ICD10 | 12112017 | 11282017 | 12032017 | RHC01 | HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 5.0 |
| 10032017 | 2017-10-03T17:47:53+00:00 |  | 000077372-01 | Walter | Hughes | GERIATRIC PROVIDERS AND | 925174 | RAFAEL | FLEITES | 1588790349 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 12112017 | Approved | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 09292017 | 11272017 | Standard |  |  | 2017-09-29 | Per Diem: $200.00/day x 59 SNF Days = $11,800.00 Wound VAC: $30.00/day (per invoice) x 57 SNF Days = $1,710.00 Supplies: $546.00 per invoice Total Payment: $14,056.00 | 41 | 2017-11-27 |  | 2017-12-08 | 2017-12-08 | 59 | 100 | 14056.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004004 | K8500 | IDIOPATHIC ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION | ICD10 | 12112017 | 09292017 | 11272017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 60 | Revenue | RV |  |  |  | 9.0 |
