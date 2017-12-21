Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-19
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
| 12152017 | 2017-12-15T08:25:07+00:00 | Q19990437 | 000119104-01 | William | Scaggs | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 12192017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 06162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219022 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 12192017 | J9267, J1626, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1500, 360, 78 | 1500, 360, 78 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9267: 1500: followed by Paclitaxel 200 mg/m2  IV  day 1  every 21 days  2 cycles; Paclitaxel 45-50 mg/m2  IV  day 1  every 7 days  7 cycles: J9045: 78: Carboplatin AUC 2 (max 300 mg)  IV  day 1  every 7 days  7 cycles; Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days 2 cycles: J1626: 360: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  9 cycle(s) |  |  |  |  | 0 |
| 12182017 | 2017-12-18T08:28:00+00:00 | Q20000702 | 000118426-01 | Geraldine | Timm | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12192017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 06162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219026 | D4620 | Refractory anemia with excess of blasts, unspecified | ICD10 | 12192017 | J2405 | INJECTION, ONDANSETRON HYDROCHLORIDE, PER 1 MG | HCPCS | 64 | 64 | Approved | 181 | HCPCS | HC | J2405: 64: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 12182017 | 2017-12-18T11:59:52+00:00 | Q20003126 | 000097715-01 | Russell | Snyder | GENESIS MEDICAL GRP LLC | 941995 | GRANT V | CHOW | 1184771701 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12192017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219037 | R001 | Bradycardia, unspecified | ICD10 | 12192017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T12:01:00+00:00 | Q20003145 | 000022677-01 | DAVID | CRABTREE | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 12192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219038 | G4452 | New daily persistent headache (NDPH) | ICD10 | 12192017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T13:37:24+00:00 | Q20004681 | 000099211-01 | RETA | BIGGS | AMERICAN HLTH NETWORK OF | 904176 | BRENT C | NIMETH | 1912935545 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 12192017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219047 | M5489 | Other dorsalgia | ICD10 | 12192017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T08:24:56+00:00 | Q19999312 | 000073230-01 | Linda | Hedges | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 12192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219057 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12192017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T13:27:11+00:00 |  | 000049570-01 | JAMES | WALLER | SMITH JR, STEPHEN P | 908002 | STEPHEN P | SMITH JR | 1518923119 | SMITH JR, STEPHEN P | 908002 | 1518923119 | STEPHEN P SMITH JR | 1518923119 | Predetermination Request | PR | Pre-Service | PRE | STEPHEN P | SMITH JR | 12192017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 12192017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171213157 | H02021, H02024, H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 12192017 | 67900, 67900 | REPAIR BROW PTOSIS (SUPRACILIARY, MID-FOREHEAD OR CORONAL APPROACH | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12172017 | 2017-12-17T08:49:14+00:00 | Q19998511 | 000099669-01 | Sally | Hawkins | ORTHOPEDIC ONE INC | 928359 | ELLA M | KING | 1972936599 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 12192017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219088 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12192017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T06:09:44+00:00 |  | 000106236-01 | Susan | Wells | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12192017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 12192017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171218095 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 12192017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12132017 | 2017-12-13T14:32:02+00:00 | Q19977226 | 000051288-01 | LEROY | CARTER JR | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 12192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 07012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219106 | C61 | Malignant neoplasm of prostate | ICD10 | 12192017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 12142017 | 2017-12-14T10:02:24+00:00 | Q19982233 | 000014179-01 | ETHEL | PARKE | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219109 | S065X0S | Traum subdr hem w/o loss of consciousness, sequela | ICD10 | 12192017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T12:46:25+00:00 | Q19985134 | 000097301-01 | William | Irwin | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12192017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12202017 | 06182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219111 | C61 | Malignant neoplasm of prostate | ICD10 | 12192017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 12182017 | 2017-12-18T13:17:35+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 946116 | JACQUELA | ROBINSON-DJAKU | 1124401567 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12192017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12192017 | 06192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219085 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 12192017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85730, 85610, 80048, 83735, 84100, 84550, 84165, 84155, 84040, 84075, 84460, 84450, 82248, 82247, 84155, 83615, 86900, 86901, 86850, 82728, 86695, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83909, 83900, 87081, 85730, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | HCPCS | HC |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T14:35:13+00:00 |  | 000092492-01 | Anne | Noll | MOUNT CARMEL HLTH SYS | 946261 | SEAN E | LINDSEY | 1306147475 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12192017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01152018 | 02152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214148 | L818 | Other specified disorders of pigmentation | ICD10 | 12192017 | 88312, 88305, 88346, 88342 | IMUNOCYTOCHEMISTRY EA ANTIBODY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 | pc to provider spoke with Tracy  requested clinincal documentation for request to send oral speciman over to OSU mbr dx with Amalgam Tattoo, RECEIVED REQUESTED MEDICAL |  |  |  |  | 0 |
| 12192017 | 2017-12-19T09:42:00+00:00 | Q20010731 | 000041201-01 | ROGER | SMITH | OSU HLTH SYSTEM NEUROSUR | 948800 | JENNIFER E | GADAWSKI | 1538517370 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12192017 | 01192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219141 | G20 | Parkinson's disease | ICD10 | 12192017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
