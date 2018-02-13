Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-09_thru_2018-02-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-09_thru_2018-02-11
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And the test pauses for "1" seconds
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
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
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02072018 | 2018-02-07T14:45:09+00:00 | Q20354190 | 000111010-01 | Bonnie | Long | ALLIANCE PHYSICIANS INC | 929507 | PHOEBE K | CARPENTER | 1639501489 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02072018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209022 | R1084 | Generalized abdominal pain | ICD10 | 02092018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T07:53:44+00:00 | Q20357032 | 000035156-01 | LARRY | HARMON | MOUNT CARMEL HLTH PRVDRS | 952270 | ZOE | ZHANG | 1407080138 | MOUNT CARMEL HLTH PRVDRS | 952415 | 1134154750 | JEFFREY L GRESH | 1104891639 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEFFREY L | GRESH | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209031 | M542 | Cervicalgia | ICD10 | 02092018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02072018 | 2018-02-07T15:52:51+00:00 |  | 000085434-01 | Meredith | Morin | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | FOUNDATION CARE | 916053 | 1205831963 | FOUNDATION CARE | 1205831963 | DME | DME | Pre-Service | PRE |  | FOUNDATION CARE | 02092018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02102018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207158 | G894 | Chronic pain syndrome | ICD10 | 02092018 | L8681 | PATIENT PROGRAMMER (EXTERNAL) FOR USE WITH IMPLANTABLE PROGR | HCPCS | 1 | 1 | Approved | 29 | HCPCS | HC | S/W Marie  w/ Foundation care  1-877-291-1122. She said the Spectra Remotes are Guaranteed for one year. The original implant was 11/1/16. The remote was returned for repair  but it was not able to be repaired. Foundation Care are the only supplier for Boston Scientific Spinal Cord Stimulators and supplies. |  |  |  |  | 0 |
| 02082018 | 2018-02-08T08:15:56+00:00 | Q20357328 | 000118537-01 | Ronald | Vanvoorhis | KNOX COMMUNITY HOSPITAL | 927722 | SIMONA L | MOORE | 1679502181 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209036 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T08:41:36+00:00 | Q20357674 | 000099098-01 | Nancy | Johnson | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | CENTRAL OHIO SURG ASSOC | 947112 | 1780994970 | CHARLES H DABBS | 1992020598 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHARLES H | DABBS | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209041 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 02092018 | 73200 | CAT SCAN UPPER EXTREMITY UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T08:59:34+00:00 | Q20358044 | 000057941-01 | WILFRED | JONES | CEN OH UROLOGY GRP INC | 937051 | SCOTT D | BARKIN | 1841282969 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209045 | N201 | Calculus of ureter | ICD10 | 02092018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T09:11:48+00:00 | Q20358250 | 000113112-01 | Robert | Harper Jr | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02092018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209047 | C61 | Malignant neoplasm of prostate | ICD10 | 02092018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T10:01:08+00:00 | Q20359262 | 000039116-01 | GAYLE | HUGHES | CANYON MEDICAL CENTER | 937298 | SHAILESH R | PATEL | 1346235215 | TAYLOR STATION SURGICAL CENTER | 936507 | 1942231493 | TAYLOR STATION SURGICAL CENTER | 1942231493 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAYLOR STATION SURGICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209056 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02092018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000118882-01 | Vickie | Cordell | SUNBURY CHIROPRACTIC CTR | 941344 | AMANDA | GOLDEN | 1013246362 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206137 | M545, M546, S336XXA | Sprain of sacroiliac joint, initial encounter | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000069613-01 | SUSAN | WITHROW | SUNBURY CHIROPRACTIC CTR | 907032 | AARON E | ERNDT | 1386620177 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206139 | M9901, R51, M50321 | OTHER CERVICAL DISC DEGENERATION AT C4-C5 LEVEL | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:30:56+00:00 |  | 000069646-01 | ROBERT | WOLFE | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206142 | M5033, M5135, M546, M9901, M9902, M9903, M9905, S336XXA | Sprain of sacroiliac joint, initial encounter | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000109371-01 | Anna | Banbury | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | TRINITY HEALTH | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206146 | M816, M9901, M9902, M9903, M9905, S336XXA, M50321 | OTHER CERVICAL DISC DEGENERATION AT C4-C5 LEVEL | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000074437-01 | Gena | Wooldridge | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Out of Network Services | OONS | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206148 | M545, M546, M9901, M9902, M9903, M50322 | OTHER CERVICAL DISC DEGENERATION AT C5-C6 LEVEL | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000073223-01 | Barbara | Wolfe | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180207103 | M542, M545, M9901, M9903, M9905 | Segmental and somatic dysfunction of pelvic region | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000034652-01 | STEPHEN | TOROK | SUNBURY CHIROPRACTIC CTR | 941344 | AMANDA | GOLDEN | 1013246362 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180207115 | M5137, M9903, R51 | Headache | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000039577-01 | LUCILLE | WOLFE | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02092018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02092018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180207120 | M542, M545, M9901, M9903, M9905 | Segmental and somatic dysfunction of pelvic region | ICD10 | 02092018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02072018 | 2018-02-07T13:25:57+00:00 |  | 000053894-01 | RALPH | SEVERING | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 02092018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02152018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207147 | R002 | Palpitations | ICD10 | 02092018 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 23 | CPT | C4 |  |  |  |  |  | 0 |
