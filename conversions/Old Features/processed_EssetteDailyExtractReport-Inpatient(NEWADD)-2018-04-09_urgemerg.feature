Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-09_URGEMERG
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
| 01152018 | 2018-01-15T09:42:26+00:00 |  | 000044382-01 | DOROTHY | STYERS | MOUNT CARMEL HLTH SYS | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115051 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 04092018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T08:49:59+00:00 |  | 000040459-01 | BARBARA | ALLEN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402046 | R040 | Epistaxis | ICD10 | 04092018 | 03312018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02222018 | 2018-02-22T15:21:42+00:00 |  | 000103610-01 | David | Turner | CEN OH UROLOGY GRP INC | 913736 | JASON | JANKOWSKI | 1053512822 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04072018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222079 | N131 | Hydronephrosis w ureteral stricture, NEC | ICD10 | 04092018 | 03262018 | 04072018 | 50230 | NPHRECTMY RAD W RGNL LYPHADENCTMY | CPT | 1 | 1 | Approved | 13 | CPT | C4 |  |  |  | 12.0 |
| 03212018 | 2018-03-21T16:43:22+00:00 |  | 000106970-01 | Mary | Beverly | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03272018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322007 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04092018 | 03272018 | 04072018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 12 | CPT | C4 |  |  |  | 11.0 |
| 03302018 | 2018-03-30T14:49:19+00:00 |  | 000056891-01 | JAMES | DOWELL | LICKING MEM INPATIENT ME | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330062 | R296 | Repeated falls | ICD10 | 04092018 | 03292018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03302018 | 2018-03-30T14:50:35+00:00 |  | 000075521-01 | Dolores | Klontz | GREENE MEM HSP SRVS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 04092018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03292018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402008 | I959, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 04092018 | 03292018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T07:42:18+00:00 |  | 000027354-01 | RUTH | CHAPMAN | OSU INTERNAL MED LLC | 933152 | DREW C | LOGAN | 1275828857 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04092018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 04022018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403025 | R079 | Chest pain, unspecified | ICD10 | 04092018 | 04022018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04032018 | 2018-04-03T08:17:11+00:00 |  | 000068645-01 | WILLIS | YOAKUM | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403026 | C801, J90 | Pleural effusion, not elsewhere classified | ICD10 | 04092018 | 04062018 | 04072018 | 31622, 32601, 32607, 32650, 32550 | INSERT PLEURAL CATH,22.06,6.17 | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04042018 | 2018-04-04T10:14:31+00:00 |  | 000102582-01 | Phillip | Tackett | HOSPITALIST MEDICINE PHY | 901443 | OLUGBENGA F | TOLANI | 1255439675 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04032018 | 04062018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404051 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 04092018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02282018 | 2018-02-28T14:03:19+00:00 |  | 000116749-01 | JOHN | MAZEAU | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04042018 | 04062018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228070 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04092018 | 04042018 | 04062018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03202018 | 2018-03-20T12:57:04+00:00 |  | 000121578-01 | TED | BARTLEY | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320058 | J159, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04092018 | 03182018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 03272018 | 2018-03-27T15:21:19+00:00 |  | 000037113-01 | Irene | Marcum | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180404165021.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327101 | J101, R0602 | Shortness of breath | ICD10 | 04092018 | 03262018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03282018 | 2018-03-28T10:45:32+00:00 |  | 000006245-01 | HELEN | HANEY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328042 | L03818 | Cellulitis of other sites | ICD10 | 04092018 | 03272018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03292018 | 2018-03-29T10:32:38+00:00 |  | 000094411-01 | Lovell | Harper | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03282018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329066 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04092018 | 03282018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03292018 | 2018-03-29T17:10:28+00:00 |  | 000120406-01 | ROBERT | BYRD | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330002 | I351 | Nonrheumatic aortic (valve) insufficiency | ICD10 | 04092018 | 04042018 | 04082018 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 04032018 | 2018-04-03T14:14:22+00:00 |  | 000072338-01 | Dennis | Childers | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404022 | A419 | Sepsis, unspecified organism | ICD10 | 04092018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T13:42:38+00:00 |  | 000038722-01 | HAROLD | HAYES JR | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03152018 | 03162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319094 | N3289 | Other specified disorders of bladder | ICD10 | 04092018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T12:17:00+00:00 |  | 000119167-01 | William | Hatfield | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 03172018 | 03182018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320046 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04092018 | 03172018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T15:00:23+00:00 |  | 000047566-01 | HELEN | MARCUM | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320079 | E860, E869 | Volume depletion, unspecified | ICD10 | 04092018 | 03182018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 03212018 | 2018-03-21T13:42:56+00:00 |  | 000055110-01 | ROBERT | FESER | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03192018 | 03202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321083 | R310 | Gross hematuria | ICD10 | 04092018 | 03192018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03232018 | 2018-03-23T16:15:27+00:00 |  | 000069330-01 | JANET | RENZ | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04052018 | 04072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323075 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 04092018 | 04052018 | 04072018 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03232018 | 2018-03-23T16:23:30+00:00 |  | 000070705-01 | John | Sanctuary | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04052018 | 04062018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323076 | M12812 | Oth specific arthropathies, NEC, left shoulder | ICD10 | 04092018 | 04052018 | 04062018 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  | No child records to display. |  |
| 03292018 | 2018-03-29T15:56:03+00:00 |  | 000008230-01 | LOIS | BRYANT | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330029 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 04092018 | 03292018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03302018 | 2018-03-30T11:18:19+00:00 |  | 000115527-01 | Judd | Porter | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330035 | I481 | Persistent atrial fibrillation | ICD10 | 04092018 | 04032018 | 04062018 | 33265 | ENDOSCOPY SURGICAL OPERATIVE TISSUE ABLATION & RECONSTRUCT OF ARTIA LIMI | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03302018 | 2018-03-30T17:02:16+00:00 |  | 000052109-01 | WANDA | BUTTERFIELD | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402013 | I509, R0600 | Dyspnea, unspecified | ICD10 | 04092018 | 03302018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04012018 | 2018-04-01T12:31:55+00:00 |  | 000030469-01 | IONA | WEST | HOSPITALIST MEDICINE PHY | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04062018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402026 | J189 | Pneumonia, unspecified organism | ICD10 | 04092018 | 03312018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04022018 | 2018-04-02T10:22:22+00:00 |  | 000090902-01 | Brenda | Day | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402074 | C719, R4182 | Altered mental status, unspecified | ICD10 | 04092018 | 03302018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04022018 | 2018-04-02T15:12:18+00:00 |  | 000115139-01 | Sushma | Pandey | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04012018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402097 | R109, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 04092018 | 04012018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04022018 | 2018-04-02T18:05:11+00:00 |  | 000002521-01 | VIOLA | SAYRE | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403049 | R109, K56609 | K56609 | ICD10 | 04092018 | 04012018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04032018 | 2018-04-03T10:11:14+00:00 |  | 000029536-01 | GLADYS | PRATT | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403068 | A419 | Sepsis, unspecified organism | ICD10 | 04092018 | 04022018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04032018 | 2018-04-03T10:48:50+00:00 |  | 000051188-01 | EVELYN | FEDER | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403076 | E871, J189 | Pneumonia, unspecified organism | ICD10 | 04092018 | 03292018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04032018 | 2018-04-03T13:30:00+00:00 |  | 000049991-01 | CHARLOTTE | SCARBERRY | MOUNT CARMEL HLTH SYS | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403101 | J449, R063 | Periodic breathing | ICD10 | 04092018 | 04032018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T14:18:22+00:00 |  | 000057778-01 | KENNETH | BOYER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04022018 | 04062018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404025 | J159 | Unspecified bacterial pneumonia | ICD10 | 04092018 | 04022018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04032018 | 2018-04-03T14:36:10+00:00 |  | 000073902-01 | Richard | Beightler | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404029 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04092018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T10:16:29+00:00 |  | 000072532-01 | DAVID | WARD | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04052018 | 04062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326016 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 04092018 | 04052018 | 04062018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03272018 | 2018-03-27T09:01:58+00:00 |  | 000117126-01 | Deborah | Runkle | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03262018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327070 | R0902 | Hypoxemia | ICD10 | 04092018 | 03262018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03282018 | 2018-03-28T12:41:16+00:00 |  | 000101967-01 | Carolyn | Green | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04042018 | 04062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329018 | M12552 | Traumatic arthropathy, left hip | ICD10 | 04092018 | 04042018 | 04062018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04022018 | 2018-04-02T13:23:27+00:00 |  | 000110918-01 | Linda | Haynes | LICKING MEM HLTH PROF | 937369 | HOWARD L | REEVES | 1639245350 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402092 | K810 | Acute cholecystitis | ICD10 | 04092018 | 03302018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T13:01:50+00:00 |  | 000090618-01 | Velda | Brannick | PULMONARY MED OF DAYTON | 907975 | MEDIAN | ALI | 1649253113 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403104 | E872, R0600, A0472 | A0472 | ICD10 | 04092018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T09:21:00+00:00 |  | 000047683-01 | JOHN | JACKSON | SOUND INPATIENT PHYS OF | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04092018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04032018 | 04062018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404009 | I509, R0902 | Hypoxemia | ICD10 | 04092018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04052018 | 2018-04-05T08:47:19+00:00 |  | 000078078-01 | Glenna | Brady | MIAMI VALLEY HSPISTS GRP | 906832 | NAVEEN K | THOTA | 1972717304 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405005 | I4891, I509 | Heart failure, unspecified | ICD10 | 04092018 | 04042018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T08:47:37+00:00 |  | 000073018-01 | Linda | Obert | LICKING MEM HLTH PROF | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04042018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405026 | R509 | Fever, unspecified | ICD10 | 04092018 | 04042018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T11:07:26+00:00 |  | 000110716-01 | FRANCIS | MILLER | MARIETTA HLTH CARE PHYS | 921990 | ROBERT | BEHNKE | 1073710869 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405033 | I4891, I509, R079 | Chest pain, unspecified | ICD10 | 04092018 | 04042018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04052018 | 2018-04-05T11:16:21+00:00 |  | 000066032-01 | CAROLYN | TURNER | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405035 | I998 | Other disorder of circulatory system | ICD10 | 04092018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T11:22:31+00:00 |  | 000052880-01 | MARY | BODEN | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04052018 | 04072018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405039 | I509 | Heart failure, unspecified | ICD10 | 04092018 | 04052018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04052018 | 2018-04-05T12:29:07+00:00 |  | 000051650-01 | JANICE | SWINDLER | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405045 | R109 | Unspecified abdominal pain | ICD10 | 04092018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T12:04:22+00:00 |  | 000072289-01 | Karen | Jordan | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405054 | I4891 | Unspecified atrial fibrillation | ICD10 | 04092018 | 04042018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04062018 | 2018-04-06T09:55:34+00:00 |  | 000081866-01 | Patricia | Burgess | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04042018 | 04062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406014 | N132, N201 | Calculus of ureter | ICD10 | 04092018 | 04042018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T09:25:25+00:00 |  | 000088505-01 | Norma | Clark | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406023 | I639, N200 | Calculus of kidney | ICD10 | 04092018 | 04052018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T11:15:42+00:00 |  | 000092897-01 | Joy | Ballinger | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | CENTRAL OHIO SURG ASSOC | 927595 | 1780994970 | MAURICE P PAGE | 1013177815 | Inpatient | IP | Concurrent Review | CONC | MAURICE P | PAGE | 04092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04052018 | 04062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406032 | K440 | Diaphragmatic hernia with obstruction, without gangrene | ICD10 | 04092018 | 04052018 | 04062018 | 43282 | LAP PARAESOPH HER RPR W/MESH | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 04062018 | 2018-04-06T15:33:40+00:00 |  | 000121526-01 | Marie | Farley | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04092018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406052 | E876, J189, R7881 | Bacteremia | ICD10 | 04092018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T11:25:58+00:00 |  | 000036777-01 | Harry | Marcum | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04092018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180409036 | G9340, G9782 | Oth postproc complications and disorders of nervous sys | ICD10 | 04092018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
