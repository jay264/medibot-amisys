Feature: Run 2 Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Run2_EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-29
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
| 01262018 | 2018-01-26T12:41:23+00:00 |  | 000037121-01 | NEOLA | TINGLER | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 01292018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01292018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129001 | I4891 | Unspecified atrial fibrillation | ICD10 | 01292018 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T08:39:55+00:00 |  | 000121112-01 | Denise | Aliff | NEUROSCIENCE CENTER | 910539 | MARIA | KATAKI | 1144304064 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 01292018 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 01012018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118095 | R413 | Other amnesia | ICD10 | 01292018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T14:26:05+00:00 |  | 000080191-01 | Harland | Beck | KNOX COMMUNITY HSP PHYS | 923980 | KORI L | KIRKHOPE | 1033466545 | FIDELITY MEDICAL PRODUCT | 949465 | 1689859860 | FIDELITY MEDICAL PRODUCTS LLC | 1689859860 | DME | DME | Pre-Service | PRE |  | FIDELITY MEDICAL PRODUCTS LLC | 01292018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01292018 | 07312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125135 | I872, I890 | Lymphedema, not elsewhere classified | ICD10 | 01292018 | E0652, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 184, 184 | HCPCS | HC |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T10:06:52+00:00 |  | 000070034-01 | Bobby | Higginbotham | UNIVERSITY RADIATION ONC | 932549 | SHANNON M | GRAMS | 1053757971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02072018 | 05072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126148 | C320 | Malignant neoplasm of glottis | ICD10 | 01292018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T10:11:58+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01292018 | 04292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126149 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 01292018 | 93000, 71020, 94760, 85730, 85610, 83036, 36415, 85025, 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01292018 | 2018-01-29T10:15:52+00:00 |  | 000027780-01 | PHILLIP | ALSPACH | OSU INTERNAL MED LLC | 914101 | MATTHEW D | RINGEL | 1306853106 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01302018 | 04302018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129014 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 01292018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 | PON: MEMBER APPROVED FOR FOLLOW UP APPOINTMENTS AT THE JAMES CANCER HOSPITAL |  |  |  |  | 0 |
| 01292018 | 2018-01-29T09:40:50+00:00 |  | 000087540-01 | Lucille | Mitchell | OSU INTERNAL MED LLC | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02112018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129030 | I499, I639, Z952 | Presence of prosthetic heart valve | ICD10 | 01292018 | 93293 | PM PHONE R-STRIP DEVICE EVAL | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T14:02:58+00:00 | Q20255735 | 000072305-01 | DAN | LANDIS | CEN OH PRIMARY CARE SPEC | 939678 | BRET | WIEGMAN | 1568881654 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01252018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129061 | Z122 | Encntr screen for malignant neoplasm of respiratory organs | ICD10 | 01292018 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T14:34:50+00:00 | Q20256574 | 000085923-01 | Nellie | Tuttle | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01252018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129075 | R590 | Localized enlarged lymph nodes | ICD10 | 01292018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T16:10:56+00:00 | Q20258131 | 000113603-01 | Gary | Mattevi | CEN OH PRIMARY CARE SPEC | 935079 | JOAN E | WURMBRAND | 1790762904 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 01292018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01292018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129083 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01292018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T16:23:49+00:00 | Q20258360 | 000094623-01 | Rebecca | Drown | WILLIAM J MORRIS MD INC | 937213 | WILLIAM J | MORRIS | 1801900956 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 01292018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01252018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129085 | R198 | Oth symptoms and signs involving the dgstv sys and abdomen | ICD10 | 01292018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T07:22:15+00:00 | Q20259148 | 000050271-01 | PATRICIA | MCCOLLEY | AMERICAN HLTH NETWORK OF | 932534 | JANICE M | WESTPHAL | 1811282817 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01292018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01292018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129087 | M542 | Cervicalgia | ICD10 | 01292018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T08:36:13+00:00 | Q20259976 | 000099335-01 | John | Skripac | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 01292018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129097 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 01292018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T11:17:00+00:00 | Q19984199 | 000089041-01 | Karen | Feisel | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01152018 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171215026 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 01292018 | 70470, 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T10:08:25+00:00 | Q20261680 | 000082227-01 | John | Choma III | OSU INTERNAL MED LLC | 906243 | KAY L | WORREL | 1801862792 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 01292018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01262018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129121 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 01292018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T12:09:48+00:00 | Q20264079 | 000073365-01 | Wanda | Yoakum | ADENA MEDICAL GROUP LLC | 904064 | REGGINA | YANDILA | 1487768438 | ADENA MEDICAL GROUP LLC | 928524 | 1235468083 | CHRISTIN L SPAHN | 1861654105 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHRISTIN L | SPAHN | 01292018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01262018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129130 | M545 | Low back pain | ICD10 | 01292018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
