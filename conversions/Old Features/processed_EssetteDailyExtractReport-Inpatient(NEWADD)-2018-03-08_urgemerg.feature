Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-08_URGEMERG
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
| 02062018 | 2018-02-06T14:45:03+00:00 |  | 000051883-01 | CAROLE | RAUTIO | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206063 | C20 | Malignant neoplasm of rectum | ICD10 | 03082018 | 03022018 | 03072018 | 44146 | COLECTOMY, PARTIAL C COLOSTOMY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 02092018 | 2018-02-09T16:04:24+00:00 |  | 000109454-01 | Michael | Myers | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 03052018 | 03072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209084 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03082018 | 03052018 | 03072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02192018 | 2018-02-19T12:45:36+00:00 |  | 000017627-01 | HELEN | EWING | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219068 | E876, I482, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03082018 | 02182018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 02222018 | 2018-02-22T14:47:11+00:00 |  | 000062940-01 | ROBERT | GREEN | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03072018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222087 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 03082018 | 03052018 | 03072018 | 50543 | LAPARO PARTIAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02222018 | 2018-02-22T17:40:39+00:00 |  | 000099273-01 | Stella | Buhrts | COPC CENTRAL OHIO PRIMAR | 910900 | RICHARD G | BAKKER | 1528244357 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223010 | R42, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03082018 | 02222018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01252018 | 2018-01-25T10:38:56+00:00 |  | 000053669-01 | DARRYL | BETZ | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03062018 | 03072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125042 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03082018 | 03062018 | 03072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02082018 | 2018-02-08T11:08:16+00:00 |  | 000021759-01 | ROBERT | PARRY | MOUNT CARMEL HLTH PRVDRS | 951957 | JOHN J | KELEMEN | 1871554212 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208032 | J860 | Pyothorax with fistula | ICD10 | 03082018 | 02062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 02192018 | 2018-02-19T15:03:55+00:00 |  | 000057747-01 | RICHARD | DEBEVOISE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220024 | R4182 | Altered mental status, unspecified | ICD10 | 03082018 | 02172018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 02272018 | 2018-02-27T11:01:10+00:00 |  | 000058906-01 | ALICE | BEST | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03072018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227055 | I4891 | Unspecified atrial fibrillation | ICD10 | 03082018 | 02262018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02272018 | 2018-02-27T15:00:54+00:00 |  | 000108764-01 | Roy | Gurr | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227082 | A499, N390, R410 | Disorientation, unspecified | ICD10 | 03082018 | 02262018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02282018 | 2018-02-28T13:49:16+00:00 |  | 000056453-01 | VIRGINIA | TOBEREN | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228059 | M6282, R339 | Retention of urine, unspecified | ICD10 | 03082018 | 02272018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02282018 | 2018-02-28T15:50:02+00:00 |  | 000053604-01 | SHIRLEY | TULLOS | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02282018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228087 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03082018 | 02282018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03012018 | 2018-03-01T09:26:30+00:00 |  | 000078306-01 | Kimbal | Robbins | MOUNT CARMEL HLTH SYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03062018 | 03072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301013 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03082018 | 03062018 | 03072018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03012018 | 2018-03-01T13:17:59+00:00 |  | 000043801-01 | JOEY | ASHBROOK | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | TRINITY HEALTH | Fax | ACO - Pulmonary | Inpatient | 02282018 | 03072018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301049 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 03082018 | 02282018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03012018 | 2018-03-01T16:07:30+00:00 |  | 000034407-01 | EMMA | ABBOTT | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301066 | S0292XA, S329XXA, S42309A | Unsp fracture of shaft of humerus, unsp arm, init | ICD10 | 03082018 | 02282018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03012018 | 2018-03-01T17:02:34+00:00 |  | 000008491-01 | JOHN | MAUCK JR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301071 | R140 | Abdominal distension (gaseous) | ICD10 | 03082018 | 02272018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02092018 | 2018-02-09T12:34:22+00:00 |  | 000074742-01 | Robert | Barton | MARIETTA HLTH CARE PHYS | 924063 | CHARLES L | LEVY | 1043270408 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03082018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209053 | M4727, M5126, M5136, M5441, M48061 | M48061 | ICD10 | 03082018 | 03062018 | 03072018 | 22630, 22853, 20930, 20936, 22845, 22612, 22633 | LUMBAR SPINE FUSION COMBINED | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02162018 | 2018-02-16T13:48:06+00:00 |  | 000110930-01 | Kelly | Borad | ALLIANCE PHYSICIANS INC | 914343 | ERIC J | HICK | 1346236353 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216068 | C61 | Malignant neoplasm of prostate | ICD10 | 03082018 | 03012018 | 03042018 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 02252018 | 2018-02-25T10:58:51+00:00 |  | 000111429-01 | Larry | Cook | COPC CENTRAL OHIO PRIMAR | 948062 | AARON M | WHIPP | 1861835688 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226011 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03082018 | 02222018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T16:10:14+00:00 |  | 000066096-01 | ROBERT | KOCHER | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227005 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 03082018 | 02232018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02272018 | 2018-02-27T15:14:55+00:00 |  | 000061906-01 | LLOYD | GRAVES | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227092 | I4891, J9601 | Acute respiratory failure with hypoxia | ICD10 | 03082018 | 02262018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02282018 | 2018-02-28T12:21:30+00:00 |  | 000086477-01 | Becky | Cannaday | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228043 | S12500A | Unsp disp fx of sixth cervical vertebra, init for clos fx | ICD10 | 03082018 | 02282018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02282018 | 2018-02-28T12:29:40+00:00 |  | 000089999-01 | Charles | Straley | BETHESDA HOSPITAL INC | 936487 |  | BETHESDA NORTH HOSPITAL | 1396714663 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02272018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228049 | R531 | Weakness | ICD10 | 03082018 | 02272018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03012018 | 2018-03-01T12:09:10+00:00 |  | 000028862-01 | VIOLA | MESSINA | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301034 | R6521 | Severe sepsis with septic shock | ICD10 | 03082018 | 02282018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03012018 | 2018-03-01T16:18:26+00:00 |  | 000051075-01 | ROY | HENDRICKS | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302001 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03082018 | 03062018 | 03072018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03022018 | 2018-03-02T12:56:14+00:00 |  | 000087247-01 | Keith | Sheridan | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305009 | N390, R000 | Tachycardia, unspecified | ICD10 | 03082018 | 03012018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03052018 | 2018-03-05T10:04:01+00:00 |  | 000105006-01 | Michael | Shadwick | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | Flexible Choice PPO | Fax | ACO - CHF | Inpatient | 03042018 | 03072018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305020 | I509 | Heart failure, unspecified | ICD10 | 03082018 | 03042018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T16:33:05+00:00 |  | 000099530-01 | Donna | Keyes | HOSPITALIST MEDICINE PHY | 946143 | MUHAMMAD | RIAZ | 1295019222 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305022 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03082018 | 03022018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T16:39:53+00:00 |  | 000012705-01 | GAIL | BUMP | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03042018 | 03072018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306026 | I5043, J90 | Pleural effusion, not elsewhere classified | ICD10 | 03082018 | 03042018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T10:53:07+00:00 |  | 000090199-01 | Sonja | Brannan | THE CHRIST HSP MED ASSOC | 944349 | NAUM | KRIMERMAN | 1003872573 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 03082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226073 | R4182 | Altered mental status, unspecified | ICD10 | 03082018 | 02252018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03052018 | 2018-03-05T07:46:25+00:00 |  | 000062261-01 | BILLY | SCOLES | OSU INTERNAL MED LLC | 910996 | KRISTEN | LEWIS | 1831314236 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305056 | R109 | Unspecified abdominal pain | ICD10 | 03082018 | 03042018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03062018 | 2018-03-06T11:10:29+00:00 |  | 000119799-01 | CONNIE | WOODWORTH | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03032018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306049 | G9340 | Encephalopathy, unspecified | ICD10 | 03082018 | 03032018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T08:10:28+00:00 |  | 000110671-01 | Donald | Mcelroy | MERCY HEALTH PHYSICIANS | 942669 | AMELIA J | WIGGINS | 1407099195 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306057 | M79622 | Pain in left upper arm | ICD10 | 03082018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T14:42:20+00:00 |  | 000099233-01 | Bill | Bernardin | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03012018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306091 | R42 | Dizziness and giddiness | ICD10 | 03082018 | 03012018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03072018 | 2018-03-07T12:08:08+00:00 |  | 000041836-01 | MARY | KLODA | FAIRFIELD COUNTY COMBINE | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307061 | A419 | Sepsis, unspecified organism | ICD10 | 03082018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T12:37:15+00:00 |  | 000109215-01 | Phyllis A | Mckinney | MARK DAVANZO MD LLC | 936235 | MARK | DAVANZO | 1689618118 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03062018 | 03072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307066 | K8012 | Calculus of GB w acute and chronic cholecyst w/o obstruction | ICD10 | 03082018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T13:46:16+00:00 |  | 000113752-01 | Barbara | Allen | MOUNT CARMEL HLTH PRVDRS | 952401 | SUSANNE K | TAEGE | 1225268535 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03062018 | 03072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307067 | N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 03082018 | 03062018 | 03072018 | 57425, 52000 | CYSTOURETHOSCOPY | CPT | 0, 0 | 1, 1 | ,  | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03072018 | 2018-03-07T16:07:25+00:00 |  | 000105289-01 | Harry | Doughman | MERCY HEALTH PHYSICIANS | 920787 | TODD M | BAYER | 1356343008 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 03082018 | Approved | MediGold Southwest OH Essential Care | Fax | Pending Admission | Inpatient | 03082018 | 05072018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180308001 | I739 | Peripheral vascular disease, unspecified | ICD10 | 03082018 |  |  | 35556 | BYPASS GR, VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  | No child records to display. |  |
| 03082018 | 2018-03-08T15:51:12+00:00 |  | 000022581-01 | SUSAN | WILDE | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03082018 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12212017 | 12222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308067 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 03082018 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
