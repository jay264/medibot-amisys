Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-15_URGEMERG
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
| 05052017 | 2017-05-05T13:50:50+00:00 | 026545827-7128 | 000066833-01 | TIMOTHY | WILLIAMS | ORTHO SPEC & SPORTS MED | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505072 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06152017 | 06132017 | 06142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05152017 | 2017-05-15T12:55:07+00:00 | 025880965-7135 | 000081296-01 | Rita | Feazel | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515085 | T84013A | Broken internal left knee prosthesis, initial encounter | ICD10 | 06152017 | 06132017 | 06152017 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05172017 | 2017-05-17T11:04:35+00:00 | 025632459-7137 | 000083695-01 | Patricia | Diamond | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517070 | M76892, T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 06152017 | 06122017 | 06152017 | 27137 | REVSN TOT HIP ARTHPLSTY ACTBLR COMP | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 05302017 | 2017-05-30T11:14:02+00:00 | 263335947146 | 000060264-01 | ELISABETH | PACE | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530093 | K750 | Abscess of liver | ICD10 | 06152017 | 05262017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 05302017 | 2017-05-30T11:39:46+00:00 | 263201127149 | 000037762-01 | ROBERT | VANLUVANEE | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530105 | I509, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06152017 | 05292017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 05302017 | 2017-05-30T07:49:20+00:00 |  | 000100012-01 | James | Scott | MY DOCTOR LLC | 921494 | KELLIE K | SMITH | 1982668612 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06152017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05282017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530128 | I509 | Heart failure, unspecified | ICD10 | 06152017 | 05282017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05312017 | 2017-05-31T10:51:46+00:00 | 025981760-7145 | 000101624-01 | Patricia | Loless | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06122017 | 06142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531054 | R42 | Dizziness and giddiness | ICD10 | 06152017 | 06122017 | 06142017 | 62143 | REPLCMNT BONE FLP/PROS. PLATE SKULL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06052017 | 2017-06-05T08:04:19+00:00 |  | 000086078-01 | Ernest | Schlachta | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06042017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605019 | M25512, R079 | Chest pain, unspecified | ICD10 | 06152017 | 06042017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T13:52:06+00:00 |  | 000110605-01 | Albert | Shaffer | OSU INTERNAL MED LLC | 918356 | JARET D | TYLER | 1073737672 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06132017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605106 | I491, R002 | Palpitations | ICD10 | 06152017 | 06132017 | 06152017 | 93224 | ECG 24 HRS.;INCLUDES RECORDING, SCANNING ANANLYSIS C REP., REV. & INT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  | No child records to display. |  |
| 06052017 | 2017-06-05T14:05:39+00:00 |  | 000008953-01 | WILLIAM | DIEHL | INDIANA UNIVERSITY HLTH PAOLI INC CA | 933541 |  | INDIANA UNIVERSITY HLTH PAOLI INC CA | 1912984451 | INDIANA UNIVERSITY HLTH PAOLI INC CA | 933541 | 1912984451 | INDIANA UNIVERSITY HLTH PAOLI INC CA | 1912984451 | Inpatient | IP | Concurrent Review | CONC |  | INDIANA UNIVERSITY HLTH PAOLI INC CA | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605110 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06152017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06082017 | 2017-06-08T12:20:16+00:00 |  | 000047085-01 | Billy | Harris | ALLIANCE PHYSICIANS INC | 901100 | THOMAS J | MERLE | 1730187469 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608052 | I350, I359, Z006 | Encntr for exam for nrml cmprsn and ctrl in clncl rsrch prog | ICD10 | 06152017 | 06122017 | 06142017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 64 | CPT | C4 |  |  |  | 3.0 |
| 06092017 | 2017-06-09T10:29:06+00:00 | 025616429-7163 | 000112262-01 | Cheryl | Wakefield | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609040 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06152017 | 06132017 | 06142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06122017 | 2017-06-12T09:19:26+00:00 |  | 000080776-01 | John | Aldenderfer | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06102017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612008 | R079 | Chest pain, unspecified | ICD10 | 06152017 | 06102017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06122017 | 2017-06-12T09:25:40+00:00 |  | 000007563-01 | BETTY | BAKER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06112017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612012 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 06152017 | 06102017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T08:23:40+00:00 |  | 000098636-01 | Sheila | Smith | OSU INTERNAL MED LLC | 947140 | NATHAN A | DONHAM | 1558704940 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06092017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612088 | R42 | Dizziness and giddiness | ICD10 | 06152017 | 06092017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06122017 | 2017-06-12T09:50:37+00:00 |  | 000115894-01 | Evelyn | Zimmer | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06102017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612104 | E11621, L97529, M86172 | Other acute osteomyelitis, left ankle and foot | ICD10 | 06152017 | 06102017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T07:43:58+00:00 |  | 000033881-01 | LOIS | WILLIAMS | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613020 | E860, I5020, R531 | Weakness | ICD10 | 06152017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06132017 | 2017-06-13T16:19:11+00:00 | 025133694-7164 | 000015173-01 | BONNIE | BOGGS | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06152017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614001 | T84498A, Z96641 | Presence of right artificial hip joint | ICD10 | 06152017 | 06142017 | 06152017 | 27134 | REVSN TOT HIP ARTHPLSTY/BOTH COMNTS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06142017 | 2017-06-14T09:10:55+00:00 |  | 000092352-01 | Patricia | Cyrus | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06132017 | 06142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614008 | M8088XA | Oth osteopor w current path fracture, vertebra(e), init | ICD10 | 06152017 | 06132017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T07:47:16+00:00 |  | 000096948-01 | Nataliya | Polishuk | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06152017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06142017 | 06152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615001 | N816 | Rectocele | ICD10 | 06152017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T15:27:54+00:00 |  | 000062994-01 | JESSE | HELTON | OSU INTERNAL MED LLC | 932551 | JOHN W | CHRISTMAN | 1720027808 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615078 | J384 | Edema of larynx | ICD10 | 06152017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06102017 | 2017-06-10T17:35:42+00:00 |  | 000110173-01 | Bonnie | Sealock | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06092017 | 06102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615082 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 06152017 | 06092017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
