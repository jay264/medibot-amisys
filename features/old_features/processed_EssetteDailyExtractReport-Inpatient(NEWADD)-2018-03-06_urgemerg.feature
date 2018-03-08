Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-06_URGEMERG
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
| 03052018 | 2018-03-05T12:39:45+00:00 |  | 000034407-01 | EMMA | ABBOTT | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03062018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180305061 | S0292XA | Unsp fracture of facial bones, init for clos fx | ICD10 | 03062018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02252018 | 2018-02-25T13:15:45+00:00 |  | 000111465-01 | Beverly | Price | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 03052018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226027 | I4891 | Unspecified atrial fibrillation | ICD10 | 03062018 | 02242018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02222018 | 2018-02-22T16:59:22+00:00 |  | 000111390-01 | SHERRY | MILLS | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223005 | F319 | Bipolar disorder, unspecified | ICD10 | 03062018 | 02222018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02232018 | 2018-02-23T15:40:52+00:00 |  | 000107287-01 | Virginia | Hunt | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223065 | R001 | Bradycardia, unspecified | ICD10 | 03062018 | 02222018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02262018 | 2018-02-26T09:36:08+00:00 |  | 000088222-01 | Frances | Haynes | OSU INTERNAL MED LLC | 916806 | CHARLES R | REDMAN II | 1093937781 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02242018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226058 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03062018 | 02242018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01092018 | 2018-01-09T12:38:58+00:00 |  | 000086704-01 | Janet | Durfey | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109085 | C180 | Malignant neoplasm of cecum | ICD10 | 03062018 | 03022018 | 03052018 | 44205, 44160 | COLECTOMY, RMVL TERM ILEUM & ILEOCO | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 01152018 | 2018-01-15T15:04:15+00:00 |  | 000039337-01 | RONALD | BIXLER | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115139 | M48062 | M48062 | ICD10 | 03062018 | 03012018 | 03052018 | 22630, 22842, 22632, 22853, 61783, 20930, 63030 | LAMINOTOMY(HEMILAMINECTOMY)DECOMPRESS NRV ROOTS,1 INTRSPACE; LUMBER | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 02262018 | 2018-02-26T07:58:17+00:00 |  | 000010408-01 | RUTH | KESSLER | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03012018 | 03032018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226014 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03062018 | 03012018 | 03032018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02272018 | 2018-02-27T10:25:49+00:00 |  | 000015593-01 | Kenneth | Adams | LICKING MEM HLTH PROF | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02242018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227052 | N179, N390, R109 | Unspecified abdominal pain | ICD10 | 03062018 | 02242018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T11:46:18+00:00 |  | 000090649-01 | Randall | Brunner | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227060 | I209, I214, R079 | Chest pain, unspecified | ICD10 | 03062018 | 02262018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02282018 | 2018-02-28T11:41:39+00:00 |  | 000041026-01 | ELEANOR | JONES | MOUNT CARMEL OCCUPATIONA | 948130 | PHUC | NGUYEN | 1497008148 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228036 | E871, I509 | Heart failure, unspecified | ICD10 | 03062018 | 02262018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02282018 | 2018-02-28T13:37:16+00:00 |  | 000042850-01 | JOSEPH | KEARNEY | CEN OH PRIMARY CARE SPEC | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228064 | L0390 | Cellulitis, unspecified | ICD10 | 03062018 | 02272018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03012018 | 2018-03-01T15:44:51+00:00 |  | 000118527-01 | Martha | Hafler | SOUND INPATIENT PHYS OF | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301067 | C3490, E871, E876 | Hypokalemia | ICD10 | 03062018 | 03012018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T11:51:49+00:00 |  | 000045585-01 | SYLVIA | MEYERS | SOUND INPATIENT PHYS OF | 917205 | MONIKA P | JHAVERI | 1083802854 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03022018 | 03042018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305092 | I4891 | Unspecified atrial fibrillation | ICD10 | 03062018 | 03022018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T15:47:43+00:00 |  | 000076684-01 | Violet | Bentley | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03062018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102088 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03062018 | 03012018 | 03052018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 02212018 | 2018-02-21T10:27:23+00:00 |  | 000086677-01 | Richard | Cooper | DAYTON PHYSICIANS LLC | 915415 | ERIK S | WEISE | 1336113604 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02282018 | 03012018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221020 | C61 | Malignant neoplasm of prostate | ICD10 | 03062018 | 02282018 | 03012018 | 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 02272018 | 2018-02-27T11:42:45+00:00 |  | 000029548-01 | PATRICIA | FLOWERS | WALLENBROCK, ANGELA B | 902462 | ANGELA B | WALLENBROCK | 1215907332 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227059 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 03062018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T15:41:41+00:00 |  | 000071772-01 | James | Key | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227096 | E872, J810, J9600, R600 | Localized edema | ICD10 | 03062018 | 02262018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02282018 | 2018-02-28T11:17:21+00:00 |  | 000108654-01 | ROGER | SALTS | UNIVERSITY OF CINCINNATI | 949046 | VANESSA | NOMELLINI | 1902122088 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 03062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228033 | K4030 | Unil inguinal hernia, w obst, w/o gangr, not spcf as recur | ICD10 | 03062018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03012018 | 2018-03-01T11:18:23+00:00 |  | 000011912-01 | CLARENCE | RAVER | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301042 | I509 | Heart failure, unspecified | ICD10 | 03062018 | 02282018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03012018 | 2018-03-01T16:56:23+00:00 |  | 000094422-01 | Daniel | Cottrell | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301070 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 03062018 | 02282018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03022018 | 2018-03-02T09:42:55+00:00 |  | 000057918-01 | JOHN | CUNNINGHAM | CEN OH NEURO SURGEONS IN | 935096 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02282018 | 03012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302012 | M48062 | M48062 | ICD10 | 03062018 | 02282018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03022018 | 2018-03-02T14:48:03+00:00 |  | 000111202-01 | Edgar | Jansen | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302059 | E11621, L97519, M869 | Osteomyelitis, unspecified | ICD10 | 03062018 | 03012018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T08:57:35+00:00 |  | 000083102-01 | Susan | Graham | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305003 | R569 | Unspecified convulsions | ICD10 | 03062018 | 03012018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T13:39:56+00:00 |  | 000109408-01 | Clarence | Rollins | HOSPITALIST MEDICINE PHY | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305106 | R0600 | Dyspnea, unspecified | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
