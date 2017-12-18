Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-15_thru_2017-12-17_URGEMERG
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
| 11162017 | 2017-11-16T11:02:18+00:00 | 025131923-7320 | 000027317-01 | GEORGEANN | ALMOND | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116086 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 12152017 | 12122017 | 12142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12102017 | 2017-12-10T07:33:07+00:00 |  | 000018591-01 | Carmena | Orsini | CAPITAL CITY INTL MED IN | 934759 | AGATHA S | BEYNEN | 1972571057 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12092017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211009 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 12152017 | 12092017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12042017 | 2017-12-04T09:18:04+00:00 | 251673707335 | 000029859-01 | SHARON | FOOR | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12012017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204024 | R52 | Pain, unspecified | ICD10 | 12152017 | 12012017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 12052017 | 2017-12-05T08:59:29+00:00 | 253458697338 | 000095861-01 | Judith | Bame | MOUNT CARMEL HLTH SYS | 947284 | PERRY | LIN | 1649513193 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12042017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205011 | G8102 | Flaccid hemiplegia affecting left dominant side | ICD10 | 12152017 | 12042017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12122017 | 2017-12-12T07:36:36+00:00 |  | 000065356-01 | CHARLES | WEBER | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12112017 | 12142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215001 | N200 | Calculus of kidney | ICD10 | 12152017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12132017 | 2017-12-13T08:25:18+00:00 | 253828747347 | 000030861-01 | HAROLD | BAILEY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12132017 | 02142018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213015 | J159 | Unspecified bacterial pneumonia | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12132017 | 2017-12-13T10:16:51+00:00 | 253037417346 | 000055145-01 | FLOYD | COLLINS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12122017 | 12142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213052 | S62111A | Disp fx of triquetrum bone, right wrist, init for clos fx | ICD10 | 12152017 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12082017 | 2017-12-08T08:53:33+00:00 |  | 000117130-01 | Dewey | Turbeville | OSU INTERNAL MED LLC | 944611 | CATHERINE A | LAMBERT | 1083905343 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12072017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208030 | I200 | Unstable angina | ICD10 | 12152017 | 12072017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T09:48:43+00:00 | 025063005-7338 | 000043285-01 | TOM | KNEISLEY | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117045 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 12152017 | 12122017 | 12142017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12132017 | 2017-12-13T14:57:12+00:00 | 250643817347 | 000012502-01 | GAIL | KREUTZ | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213097 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T10:01:33+00:00 |  | 000106930-01 | Marilyn | Taylor | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12092017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211133 | R0602 | Shortness of breath | ICD10 | 12152017 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T10:58:27+00:00 | 250845427337 | 000024520-01 | RONALD | NEMISH | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12032017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204086 | R55 | Syncope and collapse | ICD10 | 12152017 | 12032017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12142017 | 2017-12-14T08:41:33+00:00 |  | 000034809-01 | ELEANOR | HICKS | MOUNT CARMEL HLTH PRVDRS | 935396 | MARK A | WHITE | 1649279837 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12132017 | 12142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215016 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T15:57:33+00:00 |  | 000075067-01 | William | Phillips | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120128 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12152017 | 12122017 | 12142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12122017 | 2017-12-12T13:27:40+00:00 |  | 000117354-01 | RONALD | SMITH | CENTRAL OH SURG SPEC INC | 936579 | STEPHEN T | FISHER | 1255392098 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212078 | K810, R109 | Unspecified abdominal pain | ICD10 | 12152017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T12:47:43+00:00 |  | 000087817-01 | Sandra | Rose | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 12132017 | 12142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201010 | N815, N816 | Rectocele | ICD10 | 12152017 | 12132017 | 12142017 | 57250, 57267, 57268, 52000 | CYSTOURETHOSCOPY | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | , , ,  | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12112017 | 2017-12-11T12:29:58+00:00 |  | 000028216-01 | RALPH | FRANKLIN | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211144 | N179 | Acute kidney failure, unspecified | ICD10 | 12152017 | 12102017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12052017 | 2017-12-05T16:35:45+00:00 |  | 000075848-01 | Anna | Sharp | TRIHEALTH H LLC | 926910 | JANEE L | BEY | 1568672723 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12152017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12032017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206003 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12152017 | 12032017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T09:15:40+00:00 | 026351295-7345 | 000052750-01 | CHARLOTTE | BALL | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212013 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 12152017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T06:54:00+00:00 |  | 000064594-01 | JOHN | STRETTON JR | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12092017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211029 | R109 | Unspecified abdominal pain | ICD10 | 12152017 | 12092017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11292017 | 2017-11-29T14:16:31+00:00 |  | 000104972-01 | Delores | Ellison | TRIHEALTH H LLC | 931916 | JASON M | PARKER | 1396983268 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12152017 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130094 | K4131 | Unilateral femoral hernia, w obst, w/o gangrene, recurrent | ICD10 | 12152017 | 11272017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04042017 | 2017-04-04T08:41:16+00:00 |  | 000102108-01 | Angla | Scarano | DAYTON COLON & RECTAL CT | 903985 | AUGUSTO L | MARTINEZ | 1629071337 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12152017 | 02132018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170503100050.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404004 | K622 | Anal prolapse | ICD10 | 12152017 | 04242017 | 04282017 | 45135 | EXC RECTAL PROCIDENT ABD/PERINEAL | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  | 4.0 |
| 12142017 | 2017-12-14T11:15:53+00:00 |  | 000116115-01 | Geraldine | Neer | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214032 | R5383 | Other fatigue | ICD10 | 12152017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12082017 | 2017-12-08T12:11:44+00:00 |  | 000076580-01 | Barbara | Dahlheimer | TRIHEALTH H LLC | 925561 | GEORGE | VINALES | 1538454988 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208059 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 12152017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11202017 | 2017-11-20T11:13:11+00:00 |  | 000095564-01 | Gary | Waggle | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12062017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120092 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 12152017 | 12062017 | 12142017 | 31624, 32097 | OPEN WEDGE/BX LUNG NODULE | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 |  |  |  | 4.0 |
| 12082017 | 2017-12-08T08:23:58+00:00 |  | 000117414-01 | Linda | Riley | ZANESVILLE XPRESS ORTHO | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208021 | S42292S | Other disp fx of upper end of left humerus, sequela | ICD10 | 12152017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12082017 | 2017-12-08T08:23:40+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208019 | T8789 | Other complications of amputation stump | ICD10 | 12152017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T08:56:06+00:00 |  | 000032290-01 | HARRY | FETHEROLF | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12132017 | 12152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211072 | D371 | Neoplasm of uncertain behavior of stomach | ICD10 | 12152017 | 12132017 | 12152017 | 43632 | GASTRECTOMY, PARTIAL, DISTAL; | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12112017 | 2017-12-11T10:18:08+00:00 |  | 000091173-01 | Charles | Joy | HOSPITALIST MEDICINE PHY | 949459 | FARAH | YUSUF | 1306280631 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211108 | R0902 | Hypoxemia | ICD10 | 12152017 | 12102017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12082017 | 2017-12-08T15:27:26+00:00 |  | 000050253-01 | JOHN | TURNER | MOUNT CARMEL HLTH SYS | 950225 | BRETT C | SKLAW | 1982839775 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12152017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 12072017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208078 | K629 | Disease of anus and rectum, unspecified | ICD10 | 12152017 | 12072017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12102017 | 2017-12-10T07:40:23+00:00 |  | 000111542-01 | DEBORAH | GATTS | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211011 | M6281 | Muscle weakness (generalized) | ICD10 | 12152017 | 12092017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12132017 | 2017-12-13T09:45:09+00:00 | 250911627346 | 000062101-01 | SHARYN | PARSLEY | HOSPITALIST MEDICINE PHY | 911535 | RAVI | BELLALA | 1649483801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12122017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213031 | R0600 | Dyspnea, unspecified | ICD10 | 12152017 | 12122017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T11:17:41+00:00 |  | 000027430-01 | SALLY | SALT | CLEVELAND CLINIC FNDN | 930630 | SIVA | RAJA | 1548317522 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12112017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211136 | R1013 | Epigastric pain | ICD10 | 12152017 | 12112017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T11:23:44+00:00 |  | 000120526-01 | Jimmy | Walker | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11282017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204117 | E162, R4182, R748, R7989, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 12152017 | 11282017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 12112017 | 2017-12-11T06:53:39+00:00 |  | 000031964-01 | JOSEPH | COLLINS | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211027 | I213, R4182 | Altered mental status, unspecified | ICD10 | 12152017 | 12102017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T12:30:11+00:00 |  | 000106054-01 | Linda | Thompson | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12102017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211150 | R4182 | Altered mental status, unspecified | ICD10 | 12152017 | 12102017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12122017 | 2017-12-12T09:20:32+00:00 |  | 000075695-01 | Patricia | Fries | GENESIS ER PHYS LLC | 915377 | RYAN G | KING | 1194934414 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12112017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212053 | S72144A | Nondisplaced intertrochanteric fracture of right femur, init | ICD10 | 12152017 | 12112017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12152017 | 2017-12-15T09:08:07+00:00 |  | 000012700-01 | BRENDA | BELL | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 12152017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 12152017 | 12162017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171215019 | R6889 | Other general symptoms and signs | ICD10 | 12152017 | 12152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12152017 | 2017-12-15T08:21:21+00:00 | 263675517347 | 000108383-01 | BETTY | SMITH | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12152017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12132017 | 12152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215009 | N200 | Calculus of kidney | ICD10 | 12152017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T16:18:51+00:00 | 025175180-7326 | 000086439-01 | Darlene | Happ | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 12132017 | 12152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204163 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 12152017 | 12132017 | 12152017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12122017 | 2017-12-12T10:41:15+00:00 | 171985977345 | 000011066-01 | JERRY | LEMAY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12112017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212035 | R079 | Chest pain, unspecified | ICD10 | 12152017 | 12112017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T10:29:14+00:00 | 256010877344 | 000014436-01 | DORIS | HILL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12152017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12112017 | 12152017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211054 | J159 | Unspecified bacterial pneumonia | ICD10 | 12152017 | 12112017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T15:29:37+00:00 |  | 000111099-01 | Rodger | Russi | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 12152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11282017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127137 | I639 | Cerebral infarction, unspecified | ICD10 | 12152017 | 11282017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 11272017 | 2017-11-27T13:00:20+00:00 | 016419746-7321 | 000101696-01 | Wanda | Carter | COSHOCTON COUNTY MEM HSP | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128049 | M1712, M25562 | Pain in left knee | ICD10 | 12152017 | 12142017 | 12152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
