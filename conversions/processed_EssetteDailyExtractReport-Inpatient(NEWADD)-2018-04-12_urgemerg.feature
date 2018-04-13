Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-12_URGEMERG
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03272018 | 2018-03-27T12:39:50+00:00 |  | 000042275-01 | JUDY | STEVENS | HOSPITAL MEDICINE SERVIC | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328061 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04122018 | 03262018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 03302018 | 2018-03-30T15:46:19+00:00 |  | 000084378-01 | John | Adams | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330072 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04122018 | 04062018 | 04112018 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 04042018 | 2018-04-04T12:10:47+00:00 |  | 000070129-01 | Rita | Brooks | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404066 | I639, J159, R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 04122018 | 04032018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04042018 | 2018-04-04T14:08:28+00:00 |  | 000072996-01 | Deborah | Backulich | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404078 | I4891, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04122018 | 04032018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03212018 | 2018-03-21T15:34:29+00:00 |  | 000049014-01 | MARCIA | DAWSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321086 | J219 | Acute bronchiolitis, unspecified | ICD10 | 04122018 | 03202018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 03292018 | 2018-03-29T09:56:06+00:00 |  | 000036777-01 | Harry | Marcum | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329024 | G960 | Cerebrospinal fluid leak | ICD10 | 04122018 | 03272018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 03312018 | 2018-03-31T13:14:27+00:00 |  | 000026007-01 | WARREN | GIFFORD | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402025 | I509 | Heart failure, unspecified | ICD10 | 04122018 | 03302018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04022018 | 2018-04-02T08:22:14+00:00 |  | 000092880-01 | Eileen | Wise | COLS INPATIENT CARE INC | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402042 | I214, I509 | Heart failure, unspecified | ICD10 | 04122018 | 04012018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04022018 | 2018-04-02T16:42:34+00:00 |  | 000046356-01 | ANNA | CALHOUN | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403046 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04122018 | 04022018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04042018 | 2018-04-04T11:05:31+00:00 |  | 000067322-01 | Virginia | Jones | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404053 | M6281 | Muscle weakness (generalized) | ICD10 | 04122018 | 04032018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04052018 | 2018-04-05T10:20:08+00:00 |  | 000000111-01 | Shirley | Miller | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405017 | C182 | Malignant neoplasm of ascending colon | ICD10 | 04122018 | 04092018 | 04112018 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04052018 | 2018-04-05T11:07:17+00:00 |  | 000017846-01 | JOE | TANNER | MOUNT CARMEL HLTH PRVDRS | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04092018 | 04102018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405029 | I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 04122018 | 04092018 | 04102018 | 35371 | ENDARTERECTOMY,COMMON FEMORAL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04052018 | 2018-04-05T16:27:15+00:00 |  | 000031171-01 | JANET | PFEIFER | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04102018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406003 | I351 | Nonrheumatic aortic (valve) insufficiency | ICD10 | 04122018 | 04102018 | 04112018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04072018 | 2018-04-07T10:17:44+00:00 |  | 000032213-01 | JAMES | BRADY | SOUND INPATIENT PHYS OF | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409020 | D649, K922, R55 | Syncope and collapse | ICD10 | 04122018 | 04062018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04072018 | 2018-04-07T15:00:32+00:00 |  | 000009843-01 | SUZANNE | HEROLD | SOUND INPATIENT PHYS OF | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409025 | S82853A | Displaced trimalleolar fracture of unsp lower leg, init | ICD10 | 04122018 | 04062018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04102018 | 2018-04-10T11:41:14+00:00 |  | 000094704-01 | Susan | Taylor | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 04102018 | 04112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410089 | J159 | Unspecified bacterial pneumonia | ICD10 | 04122018 | 04102018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03212018 | 2018-03-21T10:08:36+00:00 |  | 000064877-01 | SUE | LAVELLE | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04092018 | 04112018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321048 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04122018 | 04092018 | 04112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03292018 | 2018-03-29T09:14:09+00:00 |  | 000085576-01 | Sharon | Edwards | OSU INTERNAL MED LLC | 932551 | JOHN W | CHRISTMAN | 1720027808 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329059 | E669, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04122018 | 03282018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04092018 | 2018-04-09T08:37:40+00:00 |  | 000039019-01 | WILLIAM | DAVIS | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04062018 | 04112018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409079 | I509 | Heart failure, unspecified | ICD10 | 04122018 | 04062018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04092018 | 2018-04-09T16:04:02+00:00 |  | 000015182-01 | EUGENE | WHITE | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04072018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409089 | J159 | Unspecified bacterial pneumonia | ICD10 | 04122018 | 04072018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04092018 | 2018-04-09T14:49:16+00:00 |  | 000006280-01 | WAITMAN | OSBORNE | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04082018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410036 | R509 | Fever, unspecified | ICD10 | 04122018 | 04082018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T15:06:31+00:00 |  | 000028059-01 | MARY | SELBE | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04082018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410037 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04122018 | 04082018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T15:19:15+00:00 |  | 000006260-01 | MABEL | TRITT | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410042 | R6889 | Other general symptoms and signs | ICD10 | 04122018 | 04062018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04112018 | 2018-04-11T09:33:03+00:00 |  | 000081438-01 | Laurel | Geisse | CEN OH PRIMARY CARE SPEC | 910900 | RICHARD G | BAKKER | 1528244357 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411006 | R42, I160 | HYPERTENSIVE URGENCY | ICD10 | 04122018 | 04062018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T13:45:13+00:00 |  | 000072713-01 | Ronald | Porter | SOUND INPATIENT PHYS OF | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04102018 | 04112018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411075 | I509 | Heart failure, unspecified | ICD10 | 04122018 | 04102018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03212018 | 2018-03-21T08:46:23+00:00 |  | 000089592-01 | Sue | Wells | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENT | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04092018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321033 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04122018 | 04092018 | 04122018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03282018 | 2018-03-28T08:43:56+00:00 |  | 000111728-01 | Virginia | Ruppersburg | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328091 | E162, N179, R296 | Repeated falls | ICD10 | 04122018 | 03272018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03292018 | 2018-03-29T09:21:41+00:00 |  | 000053058-01 | SHIRLEY | PARSLEY | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329062 | J9602, R0600 | Dyspnea, unspecified | ICD10 | 04122018 | 03282018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03292018 | 2018-03-29T13:47:26+00:00 |  | 000089376-01 | Thelma | Vandall | FIRST SETTLEMENT ORTHOS | 924541 | GEORGE | TOKODI JR | 1215933700 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 04122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04092018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329067 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04122018 | 04092018 | 04112018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04022018 | 2018-04-02T14:48:39+00:00 |  | 000054743-01 | CARLA | BYRNE | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402108 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 04122018 | 03312018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04032018 | 2018-04-03T16:02:39+00:00 |  | 000117201-01 | Michael | Seme | CHRIST HSP ORTHO ASSOC I | 946298 | JEFFREY K | WU | 1679790190 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04122018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404038 | S91009A | Unspecified open wound, unspecified ankle, initial encounter | ICD10 | 04122018 | 04032018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04042018 | 2018-04-04T11:16:50+00:00 |  | 000103856-01 | NANCY | DENNIS | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404041 | S43002A, S45009A | Unsp injury of axillary artery, unsp side, init encntr | ICD10 | 04122018 | 03302018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T10:16:13+00:00 |  | 000117254-01 | Harry | Rider | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404050 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 04122018 | 04032018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04042018 | 2018-04-04T12:45:46+00:00 |  | 000054199-01 | Madelyn | Hunter | DWIGHT HALL OWEN | 953334 | DWIGHT HALL | OWEN | 1063732105 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04042018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404067 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 04122018 | 04042018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04052018 | 2018-04-05T10:12:32+00:00 |  | 000092515-01 | Linda | Tinsley | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04042018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405007 | J189 | Pneumonia, unspecified organism | ICD10 | 04122018 | 04042018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T10:17:13+00:00 |  | 000099386-01 | Doris | Moore | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405008 | R296 | Repeated falls | ICD10 | 04122018 | 04042018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04052018 | 2018-04-05T15:30:46+00:00 |  | 000088473-01 | Shirley | Ray | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04092018 | 04102018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405067 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04122018 | 04092018 | 04102018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04062018 | 2018-04-06T11:39:46+00:00 |  | 000072064-01 | John | Brown | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04102018 | 04112018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406017 | I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 04122018 | 04102018 | 04112018 | 35556, 35572, 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04092018 | 2018-04-09T08:07:47+00:00 |  | 000034710-01 | ALVA | HOFFMAN | OSU INTERNAL MED LLC | 932883 | CRYSTAL M | KELLY | 1679899066 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409065 | G936, G939, S40812A, Z7189 | Other specified counseling | ICD10 | 04122018 | 04062018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04092018 | 2018-04-09T15:31:54+00:00 |  | 000064537-01 | DORA | ROMAINE | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | With Additional Info | Inpatient | 04122018 | 04152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180409093 | I639 | Cerebral infarction, unspecified | ICD10 | 04122018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04092018 | 2018-04-09T17:25:48+00:00 |  | 000079720-01 | Bennett | Case | FAWCETT MEMORIAL HOSPITAL | 934703 |  | FAWCETT MEMORIAL HOSPITAL | 1417901406 | FAWCETT MEMORIAL HOSPITAL | 934703 | 1417901406 | FAWCETT MEMORIAL HOSPITAL | 1417901406 | Inpatient | IP | Concurrent Review | CONC |  | FAWCETT MEMORIAL HOSPITAL | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410047 | R300 | Dysuria | ICD10 | 04122018 | 04052018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04102018 | 2018-04-10T14:42:46+00:00 |  | 000111464-01 | JERRY | CARLYLE | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04082018 | 04112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410102 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04122018 | 04082018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04112018 | 2018-04-11T10:47:18+00:00 |  | 000112138-01 | Anne | Brisk | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 04122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411028 | R2241 | Localized swelling, mass and lump, right lower limb | ICD10 | 04122018 | 04052018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04122018 | 2018-04-12T09:30:50+00:00 |  | 000112301-01 | William | Ostermeyer | OHIOHEALTH PHYS GRP | 936973 | VICTOR J | JOCHEM | 1932193620 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412024 | K921 | Melena | ICD10 | 04122018 | 04032018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
