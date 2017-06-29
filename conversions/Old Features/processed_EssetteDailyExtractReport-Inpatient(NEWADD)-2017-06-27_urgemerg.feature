Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-27_URGEMERG
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
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
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
| 06012017 | 2017-06-01T11:08:55+00:00 |  | 000065875-01 | JOHN | TRIMBLE | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CTR REHABILITATION | 06272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06012017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601041 | I639 | Cerebral infarction, unspecified | ICD10 | 06272017 | 06012017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06062017 | 2017-06-06T14:04:09+00:00 |  | 000071366-01 | Bernard | Henderson | HOLZER CLINIC | 916544 | ADEREMI B | ALLI | 1447348982 | SOUTHERN OH MEDICAL CTR | 936402 | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606062 | J441, R531 | Weakness | ICD10 | 06272017 | 06062017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06092017 | 2017-06-09T15:36:43+00:00 |  | 000048297-01 | SANDRA | PHELPS | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609070 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06272017 | 06082017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T11:01:27+00:00 |  | 000092300-01 | Mark | Johnson | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612065 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06272017 | 06142017 | 06272017 | 33533, 33518 | CORONARY BYPASS, TWO VENOUS GRAFTS | CPT | 1, 1 | 1, 1 | Approved, Approved | 14, 14 | CPT | C4 |  |  |  | 9.0 |
| 06142017 | 2017-06-14T12:30:20+00:00 |  | 000097193-01 | Sondra | Kirk | GENESIS MEDICAL GRP LLC | 929149 | ADAM R | ROTHERMEL | 1154647899 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06262017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614046 | K5669 | Other intestinal obstruction | ICD10 | 06272017 | 06222017 | 06262017 | 49000, 44005 | ENTEROLYSIS (FREEING OF INTESTINAL ADHESION)(SEPARATE PROCEDURE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 06152017 | 2017-06-15T09:26:51+00:00 |  | 000115170-01 | ROBERT | HENDERSON | GENESIS MEDICAL GRP LLC | 917777 | MEGAN K | BARNES | 1932361383 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615038 | E875, I619, R531 | Weakness | ICD10 | 06272017 | 06142017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06162017 | 2017-06-16T09:37:27+00:00 |  | 000032992-01 | GEORGE | DAVIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616017 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06272017 | 06162017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06162017 | 2017-06-16T14:09:16+00:00 |  | 000114314-01 | Joyce | Bryner | COPC CENTRAL OHIO PRIMAR | 905439 | JASMINE | VARMA | 1821136284 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616054 | N390, R55 | Syncope and collapse | ICD10 | 06272017 | 06152017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T08:55:10+00:00 |  | 000110423-01 | Trudy | Ware | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06272017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06182017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619080 | K5660, N3000 | Acute cystitis without hematuria | ICD10 | 06272017 | 06182017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T08:49:49+00:00 |  | 000089403-01 | Nancy | Strickland | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06172017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619086 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 06272017 | 06172017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06192017 | 2017-06-19T08:51:51+00:00 |  | 000091507-01 | Frank | Hall | OSU INTERNAL MED LLC | 932266 | STEPHEN A | BOYD | 1447542683 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619098 | I509, R7881 | Bacteremia | ICD10 | 06272017 | 06182017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T09:38:02+00:00 | 250347877172 | 000021718-01 | ALICE | FOX | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06202017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621013 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 06272017 | 06202017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06212017 | 2017-06-21T09:48:43+00:00 |  | 000116390-01 | FOREST | VALENTINE | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06202017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621019 | S062X0A | Diffuse TBI w/o loss of consciousness, init | ICD10 | 06272017 | 06202017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06212017 | 2017-06-21T09:35:36+00:00 |  | 000105690-01 | ROBERT | CHAMPION | SOUTHEASTERN OHIO PHYS | 921960 | MICHAEL | SARAP | 1275615296 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621034 | K851, R100 | Acute abdomen | ICD10 | 06272017 | 06212017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06212017 | 2017-06-21T10:19:23+00:00 |  | 000104963-01 | RICHARD | WARD SR | OHIOHEALTH PHYS GRP | 948004 | STEPHEN E | AUCIELLO | 1689916868 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06212017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621051 | R0602 | Shortness of breath | ICD10 | 06272017 | 06212017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06222017 | 2017-06-22T10:17:00+00:00 | 259702127172 | 000092673-01 | Jodi | Williams | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622018 | I639 | Cerebral infarction, unspecified | ICD10 | 06272017 | 06212017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06232017 | 2017-06-23T10:21:12+00:00 |  | 000038116-01 | EDGAR | ROHRER | STRAND PHYSICIAN SPEC PA | 923620 | BRIAN T | CADY | 1730341082 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623023 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 06272017 | 06212017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06232017 | 2017-06-23T11:25:26+00:00 |  | 000027055-01 | KENNETH | PRATER | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170623041 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06272017 |  | 06272017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 06232017 | 2017-06-23T08:57:10+00:00 |  | 000044563-01 | HAROLD | JONES | HMP OF OHIO PC | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623042 | J159 | Unspecified bacterial pneumonia | ICD10 | 06272017 | 06222017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06232017 | 2017-06-23T09:02:51+00:00 |  | 000114272-01 | Patricia | Ballint | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623045 | I4892 | Unspecified atrial flutter | ICD10 | 06272017 | 06222017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T10:26:07+00:00 | 175395977176 | 000087982-01 | Donna | Spangler | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06272017 | Approved | MediGold Essential Care | Reports | Secondary Only | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626021 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 06272017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T08:27:53+00:00 |  | 000113274-01 | Barbara | Wilson | ADENA MEDICAL GROUP LLC | 951153 | TARA S | MAYES | 1114149440 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06212017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626065 | F209 | Schizophrenia, unspecified | ICD10 | 06272017 | 06212017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T09:35:40+00:00 |  | 000089390-01 | Michael | Workman | OH GASTRO GRP INC | 922182 | MIHIR R | BAKHRU | 1609074681 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626083 | K839 | Disease of biliary tract, unspecified | ICD10 | 06272017 | 06232017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T09:46:54+00:00 |  | 000011656-01 | THERESA | MARKLSTORFER | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Post-Service | POST |  | GRANT MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170626085 | I213, N10 | Acute tubulo-interstitial nephritis | ICD10 | 06272017 | 06232017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T07:21:45+00:00 |  | 000070734-01 | Nancy | Feole | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06262017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627003 | S42209A | Unsp fracture of upper end of unsp humerus, init for clos fx | ICD10 | 06272017 | 06262017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T09:35:42+00:00 |  | 000090047-01 | Raymond | Vincent | OSU HLTH SYSTEM NEUROSUR | 915394 | DIANA | GREENE-CHANDOS | 1083693477 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Post-Service | POST |  | THE OH STATE UNIVERSITY HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06242017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170627021 | R531 | Weakness | ICD10 | 06272017 | 06242017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T10:50:49+00:00 |  | 000114504-01 | Christopher | Faulhaber | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 06272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06232017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627082 | I639 | Cerebral infarction, unspecified | ICD10 | 06272017 | 06232017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
