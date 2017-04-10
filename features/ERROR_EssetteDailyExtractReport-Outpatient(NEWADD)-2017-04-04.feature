Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-04
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 02172017 | 2017-02-17T13:51:37+00:00 | Q17732374 | 000035136-01 | JEWELL | HAUBEIL | ADENA MEDICAL GROUP LLC | 902458 | WILBUR E | SEVER III | 1780603282 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02102017 | 03122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170217047 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 04042017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T09:05:19+00:00 |  | 000082199-01 | Paul | Brill | OSU SURGERY LLC | 909559 | VIMAL K | NARULA | 1912952490 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04042017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328069 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 04042017 | 43246, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T10:44:25+00:00 |  | 000077339-01 | Carol | Papson | OSU INTERNAL MED LLC | 948426 | LYNN A | FUSSNER | 1548581200 | OSU INTERNAL MED LLC | 948426 | 1740231448 | LYNN A FUSSNER | 1548581200 | Out of Network Services | OONS | Pre-Service | PRE | LYNN A | FUSSNER | 04042017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329111 | R05, R0609, R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 04042017 | 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:10:22+00:00 |  | 000092603-01 | DONALD | BOWERS JR | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04122017 | 06122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331006 | R220 | Localized swelling, mass and lump, head | ICD10 | 04042017 | 31535, 31622, 43200, 42826, 38724, 60210, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC | RECEIVED MULTIPLE FAX REQUESTS AND CLINICAL INFO FOR THIS MEMBER.  THERE WAS DIFFICULTY W/FAXES THAT DAY.  ALL FAXES REVIEWED  REQUESTS WERE THE SAME. |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03282017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 04042017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T15:34:25+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403102 | 2006.0, C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 04042017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T16:06:54+00:00 |  | 000074709-01 | Kenneth | Berry | GENESIS PRIMARY CARE PHY | 922030 | RONALD R | HARVEY | 1891772240 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 04042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403106 | H903, R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 04042017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:22:36+00:00 |  | 000104992-01 | Michael | Davis | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 06282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404002 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 04042017 | J3489, J9201, J9264 | INJECTION, PACLITAXEL PROTEIN-BOUND PARTICLES, 1 MG | HCPCS | 24, 198, 4590 | 24, 198, 4590 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC | J9201: 198 Gemzar: 2 014 mg IV Day 1  8  & 15 q 28 days x 6 cycles (18 treatments).  Total billing units = 198; J9264: 4590 Abraxane: 255 mg IV Day 1  8  & 15 q 28 days x 6 cycles (18 treatments).  Total billing units = 4590; J3489: 24 Zometa: 4mg IV Day 1 q month x 6 cycles (6 treatments).  Total billing units = 24 |  |  |  |  | 0 |
| 04032017 | 2017-04-03T10:29:48+00:00 | Q18108552 | 000111700-01 | Nancy | Snyder | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404008 | D693 | Immune thrombocytopenic purpura | ICD10 | 04042017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:29:51+00:00 |  | 000048872-01 | URVIN | HARTSOCK | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404013 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04042017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:50:59+00:00 | Q18110290 | 000001520-01 | NANCY | HARTMANN | COPC CENTRAL OHIO PRIMAR | 935072 | CAMERON M | WOODLIEF | 1922083633 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404014 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:36:42+00:00 | Q18105965 | 000045033-01 | DELBERT | BENNETT SR | MOUNT CARMEL HLTH PRVDRS | 917932 | DANIEL G | GORBETT JR | 1487816518 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404023 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 04042017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T09:43:10+00:00 | Q18107679 | 000100191-01 | Jeffrey | Lee | MID OH NEUROLOGY INC | 939558 | JOSHUA C | NELSON | 1609870344 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04042017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404038 | G35 | Multiple sclerosis | ICD10 | 04042017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T10:00:21+00:00 | Q18108035 | 000097500-01 | PAULA | HUBER | OHIOHEALTH PHYS GRP | 917372 | DANIEL W | MUDRICK | 1457378325 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 04042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404041 | R079 | Chest pain, unspecified | ICD10 | 04042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:30:32+00:00 | Q18103163 | 000056802-01 | LEO | HARPER | OSU INTERNAL MED LLC | 930930 | MICHAEL A | CARLISLE | 1699024406 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404050 | R0609 | Other forms of dyspnea | ICD10 | 04042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T15:17:32+00:00 | Q18103915 | 000097427-01 | Judith | Freeland | ORTHO INSTITUTE OF DAYTO | 904145 | MATTHEW G | HODGES | 1639194871 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 04042017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404056 | M545 | Low back pain | ICD10 | 04042017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T13:54:48+00:00 | Q18094929 | 000050632-01 | CHRISTINE | RUDIN | MOUNT CARMEL HLTH PRVDRS | 936584 | DANIEL | FLESHMAN | 1134203680 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 04042017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404065 | H53459 | Other localized visual field defect, unspecified eye | ICD10 | 04042017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:27:24+00:00 | Q18097106 | 000099665-01 | Wanda | Kendrick | MERCY HEALTH PHYSICIANS | 924329 | ZAINAB P | CONTRACTOR | 1821088568 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 04042017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404066 | G20 | Parkinson's disease | ICD10 | 04042017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:00:00+00:00 | Q18087198 | 000063509-01 | EVELYN | DELONG | DRANKWALTER, TIMOTHY P | 935601 | TIMOTHY P | DRANKWALTER | 1841304102 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404068 | H8143 | Vertigo of central origin, bilateral | ICD10 | 04042017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T14:49:59+00:00 | Q18090431 | 000094523-01 | Roger | Winland | MADISON FAMILY HEALTH | 911210 | GINA N | MOODY | 1033378989 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404073 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04042017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T08:08:09+00:00 |  | 000094865-01 | Barbara | Millington | PICKAWAY HEALTH SERVICES | 902481 | DAVID E | MILLER | 1801895594 | PICKAWAY HEALTH SERVICES | 902481 | 1568569903 | DAVID E MILLER | 1801895594 | OP Behavioral Health | OP BH | Pre-Service | PRE | DAVID E | MILLER | 04042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04082017 | 08082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404092 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04042017 | 90834, 90847 | PSYCHOTHERAPY-TWO FAMILY MEMBERS | CPT | 6, 6 | 6, 6 | Approved, Approved | 123, 123 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T08:51:45+00:00 |  | 000050134-01 | SHERYL | MEADE | NWEST EYE SURGEONS INC | 903869 | NICHOLAS A | ROGERS | 1861446684 | CEN OHIO NEURO OPHTHALMO | 917628 | 1396822334 | CENTRAL OHIO NEURO OPHTHALMOLOGY | 1396822334 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OHIO NEURO OPHTHALMOLOGY | 04042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404093 | H47012, H4901 | Third [oculomotor] nerve palsy, right eye | ICD10 | 04042017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T11:44:29+00:00 |  | 000049453-01 | NANCY | LAPP | MOUNT CARMEL HLTH PRVDRS | 936584 | DANIEL | FLESHMAN | 1134203680 | OSU EYE PHYS & SURGEONS | 908230 | 1861437923 | DAVID M HIRSH | 1447286448 | Out of Network Services | OONS | Pre-Service | PRE | DAVID M | HIRSH | 04042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404095 | R443 | Hallucinations, unspecified | ICD10 | 04042017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T12:15:01+00:00 |  | 000070376-01 | Thomas | Joyce | DENTAL FACULTY PRACTICE | 931297 | COURTNEY A | JATANA | 1912125899 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04062017 | 05062017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404110 | G4733, I10, I213, I2510, Z8589 | Personal history of malignant neoplasm of organs and systems | ICD10 | 04042017 | 41899, 41874, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T10:16:37+00:00 |  | 000080827-01 | Barbara | Blain | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | MEDICAL SOLUTIONS SUPPLI | 949666 | 1760459010 | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | Out of Network Services | OONS | Pre-Service | PRE |  | MEDICAL SOLUTIONS SUPPLIER | 04042017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Outpatient | 04042017 | 04052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170331014 | I890 | Lymphedema, not elsewhere classified | ICD10 | 04042017 | E0651, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
