Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-17_URGEMERG
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

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 04192017 | 2017-04-19T13:55:15+00:00 |  | 000046755-01 | JANET | WARD | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04182017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419068 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05172017 | 04182017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 28.0 |
| 04252017 | 2017-04-25T07:21:12+00:00 |  | 000066039-01 | HILDA | CUNNINGHAM | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04232017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425007 | I313 | Pericardial effusion (noninflammatory) | ICD10 | 05172017 | 04232017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 04212017 | 2017-04-21T13:59:42+00:00 |  | 000046071-01 | ELIZABETH | GUSSE | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425084 | M12512 | Traumatic arthropathy, left shoulder | ICD10 | 05172017 | 05152017 | 05162017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04252017 | 2017-04-25T12:49:19+00:00 |  | 000064222-01 | ALBERT | HRIVNAK | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426082 | S88911A | Complete traumatic amputation of r low leg, level unsp, init | ICD10 | 05172017 | 05022017 | 05172017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 16 | CPT | C4 |  |  |  | 15.0 |
| 04262017 | 2017-04-26T18:41:18+00:00 |  | 000030807-01 | AUDREY | PIETRZAK | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427016 | Z96652, T84063A | Wear of artic bearing surface of int prosth l knee jt, init | ICD10 | 05172017 | 05152017 | 05172017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04272017 | 2017-04-27T12:23:05+00:00 |  | 000000346-01 | GLENN | BUCKLEY | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427049 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05172017 | 05162017 | 05172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04302017 | 2017-04-30T16:17:17+00:00 |  | 000065030-01 | GARRY | BENNETT | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501096 | D709, E860, N189 | Chronic kidney disease, unspecified | ICD10 | 05172017 | 04302016 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05012017 | 2017-05-01T14:31:21+00:00 |  | 000073058-01 | Raymond | Duncanson | MOUNT CARMEL HLTH SYS | 905652 | MARIA H | MAPA | 1982620753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 04272017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501116 | R0600 | Dyspnea, unspecified | ICD10 | 05172017 | 04272017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05022017 | 2017-05-02T09:38:29+00:00 |  | 000087530-01 | James | Garrison | EMERGENCY SERVICES INC | 936226 | MARK T | DARNELL | 1902891088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05012017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502028 | R1011 | Right upper quadrant pain | ICD10 | 05172017 | 05012017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05042017 | 2017-05-04T14:33:00+00:00 |  | 000037144-01 | MARILYN | BOWEN | OSU PHYSICAL MED LLC | 928551 | SARAH | GROVE | 1962721506 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504048 | E871, K224, R410, R4701, R51 | Headache | ICD10 | 05172017 | 05052017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05042017 | 2017-05-04T17:39:37+00:00 |  | 000113302-01 | Jerry | Snyder | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032017 | 05072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508038 | A419, N280, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05172017 | 05032017 | 05072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05092017 | 2017-05-09T13:32:36+00:00 |  | 000079769-01 | Mary | Fife | TEDROS ANDOM MD LLC | 907641 | TEDROS | ANDOM | 1629160262 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05122017 | 05162017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509076 | Z433 | Encounter for attention to colostomy | ICD10 | 05172017 | 05122017 | 05162017 | 44227 | LAP, CLOSE ENTEROSTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 05082017 | 2017-05-08T15:27:38+00:00 |  | 000000929-01 | BARBARA | LIPPERT | OHIOHEALTH PHYS GRP | 909715 | GEFFREY B | BLOSSOM | 1891794988 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509128 | J942 | Hemothorax | ICD10 | 05172017 | 05072017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05092017 | 2017-05-09T09:28:56+00:00 |  | 000077843-01 | Pamela | Farley | FLORIDA MEDICAL SPEC | 929994 | SUGUNA R | KONA | 1326045543 | BLAKE MEDICAL CENTER | 934696 | 1114964244 | BLAKE MEDICAL CENTER | 1114964244 | Inpatient | IP | Concurrent Review | CONC |  | BLAKE MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510012 | S72144A | Nondisplaced intertrochanteric fracture of right femur, init | ICD10 | 05172017 | 05042017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05092017 | 2017-05-09T10:15:58+00:00 |  | 000043439-01 | DELBERT | WOODGEARD | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510018 | R319 | Hematuria, unspecified | ICD10 | 05172017 | 05082017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05092017 | 2017-05-09T10:17:02+00:00 |  | 000056629-01 | KENNETH | BARNES | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510019 | R531, R627 | Adult failure to thrive | ICD10 | 05172017 | 05082017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05102017 | 2017-05-10T10:42:46+00:00 |  | 000025732-01 | VALDO | BEEDY | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510035 | I4892, R0600, R079 | Chest pain, unspecified | ICD10 | 05172017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102017 | 2017-05-10T11:02:59+00:00 |  | 000031469-01 | JOHN | MOORE | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05092017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510038 | J189 | Pneumonia, unspecified organism | ICD10 | 05172017 | 05092017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05092017 | 2017-05-09T14:15:06+00:00 |  | 000049981-01 | RICHARD | CARPER | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510055 | J189, R0902 | Hypoxemia | ICD10 | 05172017 | 05082017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05112017 | 2017-05-11T11:54:32+00:00 |  | 000017501-01 | WAVALENE | WOOLEVER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05102017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511037 | I509, R0600 | Dyspnea, unspecified | ICD10 | 05172017 | 05102017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05112017 | 2017-05-11T12:17:35+00:00 |  | 000011628-01 | CHARLES | MORENO | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05102017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511039 | J84112, R0602 | Shortness of breath | ICD10 | 05172017 | 05102017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05112017 | 2017-05-11T13:49:06+00:00 |  | 000029015-01 | THELMA | BADDELEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05102017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511056 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05172017 | 05102017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05112017 | 2017-05-11T10:45:33+00:00 |  | 000079216-01 | Mary | Blackschleger | HMP OF OHIO PC | 948091 | SAMUEL | ADAMS | 1225018104 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 05172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05112017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511068 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05172017 | 05112017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112017 | 2017-05-11T14:24:25+00:00 |  | 000074723-01 | John | Fyffe Jr | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511081 | J90, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05172017 | 05102017 | 05142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05112017 | 2017-05-11T16:37:23+00:00 |  | 000044837-01 | RICHARD | MILLS | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05152017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511085 | I70212 | Athscl native arteries of extrm w intrmt claud, left leg | ICD10 | 05172017 | 05152017 | 05172017 | 35666 | BYPASS GR,NT VN, BELOW TRIFURCTN | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05122017 | 2017-05-12T09:34:22+00:00 |  | 000108414-01 | Mary Lou | Powell | ADENA MEDICAL GROUP LLC | 902397 | KINGSLEY A | LARTEY | 1376510289 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512067 | R1011 | Right upper quadrant pain | ICD10 | 05172017 | 05112017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T14:00:16+00:00 |  | 000059709-01 | ILA | HILES | SLEEP DISORDERS CENTERS- | 915099 | MICHELLE R | NOEL | 1376758797 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512084 | I639 | Cerebral infarction, unspecified | ICD10 | 05172017 | 05112017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T10:23:16+00:00 |  | 000117555-01 | Thomas | Green | UNIVERSITY OF IOWA HOSP | 907536 |  | UNIVERSITY OF IOWA HOSP | 1376544320 | UNIVERSITY OF IOWA HOSP | 907536 | 1376544320 | UNIVERSITY OF IOWA HOSP | 1376544320 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF IOWA HOSP | 05172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05132017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515049 | R6521 | Severe sepsis with septic shock | ICD10 | 05172017 | 05132017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T13:08:53+00:00 |  | 000075652-01 | Clarence | Mccutcheon | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05122017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515084 | I509 | Heart failure, unspecified | ICD10 | 05172017 | 05122017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T12:37:40+00:00 |  | 000112754-01 | Michael | Cresie | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Inpatient | IP | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515095 | A419, I509, R0902 | Hypoxemia | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05142017 | 2017-05-14T13:59:23+00:00 |  | 000106703-01 | John | Seymour | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05132017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515098 | R55 | Syncope and collapse | ICD10 | 05172017 | 05132017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T15:09:02+00:00 |  | 000067445-01 | SAMIR | HANNA | ALLIANCE PHYSICIANS INC | 906931 | HARVEY S | HAHN | 1811971039 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05132017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515102 | R001 | Bradycardia, unspecified | ICD10 | 05172017 | 05132017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T15:39:57+00:00 | 026438232-7132 | 000044206-01 | ROBERT | LAMBERT | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | EMR | ACO | Inpatient | 05122017 | 05172017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515110 | I4892 | Unspecified atrial flutter | ICD10 | 05172017 | 05122017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05152017 | 2017-05-15T14:06:16+00:00 |  | 000085414-01 | Shirley | Jones | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515125 | S82891A, S93129A | Dislocation of MTP joint of unsp toe(s), init | ICD10 | 05172017 | 05122017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T16:01:24+00:00 |  | 000074949-01 | Lutie | Slussar | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05122017 | 05162017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515127 | R4182 | Altered mental status, unspecified | ICD10 | 05172017 | 05122017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T16:10:33+00:00 | 259148997132 | 000069823-01 | John | Naegele | HMP OF OHIO PC | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05132017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515134 | S32040A | Wedge compression fracture of fourth lumbar vertebra, init | ICD10 | 05172017 | 05132017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T16:23:54+00:00 |  | 000009347-01 | RICHARD | WATSON | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05142017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515142 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05172017 | 05142017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T09:04:42+00:00 |  | 000014691-01 | LARRY | HATHAWAY | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05172017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05152017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516003 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T09:28:38+00:00 |  | 000085761-01 | Michael | Hardin | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516006 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:08:06+00:00 |  | 000051191-01 | Esther | Morgens | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516030 | I639 | Cerebral infarction, unspecified | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:57:01+00:00 |  | 000031212-01 | JERRY | MUSICK | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05152017 | 05172017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516057 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:59:43+00:00 |  | 000051573-01 | JIMMIE | HARRIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05152017 | 05172017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516059 | R0602 | Shortness of breath | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T12:49:28+00:00 | 016396409-7103 | 000107561-01 | Gregory | Piper | MOUNT CARMEL HLTH PRVDRS | 935028 | GREGORY E | WEISENBERGER | 1154329647 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05172017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 05162017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516076 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05172017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T13:48:48+00:00 |  | 000102752-01 | Paul | Gray | MOUNT CARMEL HLTH PRVDRS | 942981 | ESSA M | ESSA | 1992966113 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05152017 | 05172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517049 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 05172017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
