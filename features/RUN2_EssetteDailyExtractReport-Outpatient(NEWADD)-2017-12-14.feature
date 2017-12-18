Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-14
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
| 12072017 | 2017-12-07T14:12:50+00:00 |  | 000076808-01 | Elmer | Blankenship | LAFAYETTE POINT NURSING & REHAB | 924216 |  | LAFAYETTE POINT NURSING & REHAB | 1770770984 | COPE TREATMENT CENTERS I | 952645 | 1417022682 | WILLIAM A PRICE | 1710953674 | OP Behavioral Health | OP BH | Pre-Service | PRE | WILLIAM A | PRICE | 12142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11192017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207171 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 12142017 | 99305, 99308 | NURSING FAC CARE, SUBSEQ | CPT | 8, 8 | 8, 8 | Approved, Approved | 43, 43 | CPT | C4 | No phone number on request sheet. |  |  |  |  | 0 |
| 12132017 | 2017-12-13T07:51:36+00:00 | Q19969704 | 000060435-01 | DELORES | TATE | MEDICAL & SURG ASSOC INC | 950991 | JEREMY | CAMPBELL | 1477533826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214034 | S32010A | Wedge compression fracture of first lumbar vertebra, init | ICD10 | 12142017 | 72149 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITH CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T08:58:52+00:00 | Q19970626 | 000063299-01 | JOANN | PATTON | COPC CENTRAL OHIO PRIMAR | 922354 | KENNETH M | ECKER | 1912132622 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214043 | R109 | Unspecified abdominal pain | ICD10 | 12142017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T10:35:40+00:00 | Q19972665 | 000115275-01 | Freeman | Burke Jr | BARNETT JR, GEORGE W | 900431 | GEORGE W | BARNETT JR | 1487602389 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214061 | M5137 | Other intervertebral disc degeneration, lumbosacral region | ICD10 | 12142017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T05:49:00+00:00 | Q19973004 | 000113194-01 | TIMOTHY | POPE | ALLIANCE PHYSICIANS INC | 927831 | JORGE | ARZOLA | 1205856382 | ALLIANCE PHYSICIANS INC | 902713 | 1437125572 | ALLIANCE PHYSICIANS INC | 1437125572 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ALLIANCE PHYSICIANS INC | 12142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12292017 | 06272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214062 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 12142017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 0 | 0 | Approved | 181 | HCPCS | HC | J9031: 0: BCG (INTRAVESICAL) PER INSTILLATION  Dispensed as: 50.00 instill  1 treatment(s) each cycle  3 cycle(s) |  |  |  |  | 0 |
| 12072017 | 2017-12-07T12:44:00+00:00 | Q19934542 | 000028216-01 | RALPH | FRANKLIN | LICKING MEM HLTH PROF | 903568 | JACQUELINE J | JONES | 1134127038 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214098 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 12142017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 32 | 32 | Approved | 181 | HCPCS | HC | J3489: 32: Zoledronic Acid 4 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 12122017 | 2017-12-12T14:19:01+00:00 | Q19966328 | 000095539-01 | Sharon | Thabat Mohamed | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | GREENFIELD AREA MED CTR | 936489 | 1215960901 | GREENFIELD AREA MEDICAL CENTER | 1215960901 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENFIELD AREA MEDICAL CENTER | 12142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214109 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 12142017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T14:39:57+00:00 | Q19966706 | 000078057-01 | Marie | Carter | MOUNT CARMEL HLTH PRVDRS | 952157 | DEREN | HUANG | 1841461019 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 12142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12142017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214120 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 12142017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T11:31:41+00:00 | Q19942665 | 000079986-01 | Roy | Waldron | KNOX COMMUNITY HOSPITAL | 936422 |  | KNOX COMMUNITY HOSPITAL | 1295761963 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 12142017 | Approved | MediGold Essential Care |  | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211073 | M5416 | Radiculopathy, lumbar region | ICD10 | 12142017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Provider cannot be found. Please find the necessary information in the 278-5010 12/08 Initial folder and update the facility information. Thank you! |  |  |  |  | 0 |
| 12072017 | 2017-12-07T15:39:25+00:00 |  | 000008707-01 | MARLENE | HAY | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 |  | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 12142017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 12142017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171208015 | R531 | Weakness | ICD10 | 12142017 | E0265 | HOSPITAL BED, TOTAL ELECTRIC (HEAD, FOOT AND HEIGHT ADJUSTMENTS), WITH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12132017 | 2017-12-13T16:26:22+00:00 |  | 000100451-01 | Eugene | Allen | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12142017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214080 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 12142017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T14:37:38+00:00 |  | 000061212-01 | THELMA | JOHNSON | MIDWEST DYSPHAGIA CONSUL | 942344 | ANGELA R | HARDY | 1083048474 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 12142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11252017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116173 | G309, G4089, R262, R296 | Repeated falls | ICD10 | 12142017 | 97010, 97035, 97110, 97110, 97112, 97110, 97530, 97535, 92526, 92610, 92507, 92522, 97532 | COGNITIVE SKILLS DEVELOPMENT | CPT | 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 | 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37 | CPT | C4 | ADDITIONAL SPEECH CODES ADDED TO AUTH 92507  92522  AND 97532 |  |  |  |  | 0 |
| 12142017 | 2017-12-14T12:06:06+00:00 |  | 000074735-01 | Linda | Hatfield | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 12142017 | 03162018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214132 | C01 | Malignant neoplasm of base of tongue | ICD10 | 12142017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | ROI: Donald Larry Hatfield-spouse  740-796-3105,       Yvonne Sidwell-daughter   740-828-9177, member has been approved for referral to OSU/James for three visits for Malignant neoplasm of base of tongue  services not available in network |  |  |  |  | 0 |
| 11282017 | 2017-11-28T12:03:58+00:00 |  | 000040515-01 | ERNEST | YOUNG | 41 GULF COAST KIDNEY ASS | 916487 | DENNIS | IMPERIO | 1417949611 | FRESENIUS SARASOTA | 941742 | 1578963211 | FRESENIUS MEDICAL CARE SARASOTA | 1578963211 | Out of Network Services | OONS | Pre-Service | PRE |  | FRESENIUS MEDICAL CARE SARASOTA | 12142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12012017 | 04302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171130068 | N186 | End stage renal disease | ICD10 | 12142017 | 90935, 90999, Q4081 | INJECTION EPOETIN ALFA 100 UNITS (FOR ESRD ON DIALYSIS) | HCPCS | 65, 65, 65 | 65, 65, 65 | Approved, Approved, Approved | 151, 151, 151 | HCPCS | HC | REQUEST FOR DIALYSIS IN FLORIDA FOR DOS 12/1/17 - 12/1/18.  AWD SENT TO MBR SERVICES TO CONFIRM MBR RESIDENCY., Received voice request for status.  Gave status of IN PROCESS.  Member was to start dialysis on Friday 12/01/17., GAVE ARLIE VERBAL OK TO DIALYSIZE MBR WHILE WAITING FOR SCA., AUTH EXTENDED  HAVE NOT RECEIVED SIGNED CONTRACT BACK FROM PROVIDER.  SPOKE W/JP IN CONTRACTING  AND NOTHING HAS BEEN RECEIVED AS OF THIS MORNING., SIGNED SCA RECEIVED |  |  |  |  | 0 |
| 12072017 | 2017-12-07T15:43:03+00:00 |  | 000082797-01 | Jack | Weaver | STEIMAN NEUROLOGY GRP IN | 934879 | GERALD S | STEIMAN | 1396783965 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 12142017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 12142017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171208018 | G44001 | Cluster headache syndrome, unspecified, intractable | ICD10 | 12142017 | E0424, E0441 | OXYGEN CONTENTS, GASEOUS, PER UNIT (FOR USE WITH OWNED GASEOUS STATION | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
