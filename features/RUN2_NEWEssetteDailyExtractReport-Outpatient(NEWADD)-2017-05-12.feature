Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-12
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
| 05092017 | 2017-05-09T13:54:50+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 923915 | MEGAN L | ADELMAN | 1437355492 | ATOS MEDICAL INC | 938182 | 1962452755 | ATOS MEDICAL INC | 1962452755 | Out of Network Services | OONS | Pre-Service | PRE |  | ATOS MEDICAL INC | 05122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06032017 | 06032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509165 | Z8521, Z930 | Tracheostomy status | ICD10 | 05122017 | A7507, A7508, A7520 | TRACHEOSTOMY/LARYNGECTOMY TUBE, NON-CUFFED, POLYVINYLCHLORIDE (PVC), SIL | HCPCS | 24, 36, 12 | 24, 36, 12 | Approved, Approved, Approved | 366, 366, 366 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T14:18:01+00:00 | Q18362665 | 000057061-01 | LAWRENCE | MOCK | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170510070 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05132017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC | Possible duplicate of X170315147. Please void if duplicate. |  |  |  |  | 0 |
| 05112017 | 2017-05-11T13:42:54+00:00 | NCT02180867 | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05102017 | 08102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511142 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 05122017 | 85025, 80053, 84703, 93005, 99211, 36415, 36592, 99213, 84100, 93735, 82150, 83690, 81001, 96413, 96415, 96417, 96402, A9552, A9560, 94726, 99214, 77336, J9002 | DOXIL INJECTION | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Spoke with Tammy C with OSU financial counselor.  Additional requests for HH will be sent to HH prior to being performed once the procedure is scheduled. |  |  |  |  | 0 |
| 05112017 | 2017-05-11T13:42:34+00:00 |  | 000089101-01 | Donna | Napier | RYAN W HINMAN, MD | 931510 | RYAN W | HINMAN | 1720308547 | NEUROSCIENCE CENTER | 915706 | 1962431817 | WILLIAM D ARNOLD | 1174653976 | Out of Network Services | OONS | Pre-Service | PRE | WILLIAM D | ARNOLD | 05122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05112017 | 08112017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511144 | M62512, M6281, M958 | Oth acquired deformities of musculoskeletal system | ICD10 | 05122017 | 99205, 95886, 95913 | NRV CNDJ TEST 13/> STUDIES | CPT | 3, 1, 1 | 3, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T14:52:45+00:00 |  | 000102166-01 | Deborah | Cass | DERM SKIN SURG CTR | 937108 | LARRY J | LITTLE | 1669651816 | FIDELITY MEDICAL PRODUCT | 949465 | 1689859860 | FIDELITY MEDICAL PRODUCTS LLC | 1689859860 | DME | DME | Pre-Service | PRE |  | FIDELITY MEDICAL PRODUCTS LLC | 05122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05102017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511146 | I872, I890 | Lymphedema, not elsewhere classified | ICD10 | 05122017 | E0651, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 1, 2 | 1, 2 | Approved, Approved | 93, 93 | HCPCS | HC | Auth updated as per phone call with Beth to E0651.  Edema is present only in the legs with the chronic venous insufficiency and ulcerations. |  |  |  |  | 0 |
| 05102017 | 2017-05-10T16:25:32+00:00 |  | 000031496-01 | GEORGIA | BROOKS JOHNSON | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | COCHLEAR AMERICA GROUP | 904032 | 1336149426 | COCHLEAR AMERICA GROUP | 1336149426 | DME | DME | Pre-Service | PRE |  | COCHLEAR AMERICA GROUP | 05122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05102017 | 11062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170511155 | H9012 | Condctv hear loss, uni, left ear, w unrestr hear cntra side | ICD10 | 05122017 | L7510 | REPAIR OF PROSTHETIC DEVICE, REPAIR OR REPLACE MINOR PARTS | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T09:18:29+00:00 | Q18375001 | 000093886-01 | Joyce | Egnot | SELBY GENERAL HOSPITAL | 921969 | DEVAKI S | SIVA | 1982823290 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512001 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 05122017 | J1453, J9303, J9206, J0640, J9190 | FLUOROURACIL, 500 MG | HCPCS | 1200, 240, 80, 8, 56 | 1200, 240, 80, 8, 56 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC | J1453: 1200 Fosaprepitant 150mg every 2 weeks X 8 cycles (8 treatments).  Total billing units = 1200; J9303: 240 Panitumumab 300mg every 2 weeks x 8 cycles (8 treatments).  Total billing units = 240; J9206: 80 Irinotecan 190mg every 2 weeks X 8 cycles (8 treatments).  Total billing units = 80; J0640: 8 Leucovorin 30mg every 2 weeks X 8cycles (treatments).  Total billing units = 8; J9190: 56 Fluorouracil 320 mg IVP followed by 3000mg IV to infuse over 46hrs every 2 weeks X 8 cycles (8 treatments).  Total billing units = 56 |  |  |  |  | 0 |
| 05052017 | 2017-05-05T10:43:50+00:00 | Q18362173 | 000056088-01 | JOAN | GILLESPIE | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512003 | C50612 | Malignant neoplasm of axillary tail of left female breast | ICD10 | 05132017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T12:42:02+00:00 | Q18407410 | 000057540-01 | DAVID | WILLIAMS | RIVER VALLEY ORTHOS & SP | 936928 | KEITH A | HOLLINGSWORTH | 1063490647 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 05122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512010 | M25562 | Pain in left knee | ICD10 | 05122017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T13:04:22+00:00 | Q18407829 | 000110205-01 | Roderick | Clay | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05122017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512015 | N201 | Calculus of ureter | ICD10 | 05122017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T09:37:15+00:00 | Q18403941 | 000020935-01 | Leroy | Rice | COPC CENTRAL OHIO PRIMAR | 935067 | ROBERT F | WOLF | 1992781579 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512024 | K5730 | Dvrtclos of lg int w/o perforation or abscess w/o bleeding | ICD10 | 05122017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T09:59:03+00:00 | Q18404339 | 000044162-01 | LOWELL | BOWERS | LICKING MEMORIAL ER MED | 915534 | KEVIN T | GRAHAM | 1457559692 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512027 | M545 | Low back pain | ICD10 | 05132017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T17:46:59+00:00 | Q18366393 | 000019620-01 | DONALD | MOORE | RADIOLOGY INC | 937388 | LOUIS J | RIVELLO | 1598754848 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512064 | C3410 | Malignant neoplasm of upper lobe, unsp bronchus or lung | ICD10 | 05122017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T12:25:18+00:00 | Q18339738 | 000065517-01 | KEITH | MURPHY | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 05122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512073 | R079 | Chest pain, unspecified | ICD10 | 05122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T12:52:46+00:00 | Q18344617 | 000034454-01 | RICHARD | TELLER | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512074 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 05122017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T17:44:24+00:00 | Q18354533 | 000059657-01 | SHIRLEY | BRADY | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512078 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 05132017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T17:24:38+00:00 | Q18360000 | 000103092-01 | Karen | Crawmer | LICKING MEM HLTH PROF | 932994 | AARON J | KIBLER | 1891081295 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05062017 | 06052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512079 | R911 | Solitary pulmonary nodule | ICD10 | 05122017 | 78814 | TUMOR IMAGE PET/CT, LIMITED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T10:25:01+00:00 | Q18360911 | 000064761-01 | JUANITA | TAGGART | LICKING MEM HLTH PROF | 903568 | JACQUELINE J | JONES | 1134127038 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512080 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 05132017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T10:04:50+00:00 | Q18379361 | 000091996-01 | James | Oneil | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512090 | I7101 | Dissection of thoracic aorta | ICD10 | 05122017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T12:12:41+00:00 | Q18381296 | 000103533-01 | Cynthia | Lecrone | RIVER VALLEY ORTHOS & SP | 909075 | DAVID M | VAZIRI | 1144211137 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 05122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512093 | S46911A | Strain unsp musc/fasc/tend at shldr/up arm, right arm, init | ICD10 | 05122017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T12:24:13+00:00 | Q18390013 | 000057489-01 | PAUL | WOODS | MOUNT CARMEL HLTH PRVDRS | 936184 | MATTHEW D | COOK | 1780790790 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512100 | R109 | Unspecified abdominal pain | ICD10 | 05122017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T13:00:34+00:00 | Q18394181 | 000078941-01 | Paul | Fleming | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 05122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 08082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512103 | C61 | Malignant neoplasm of prostate | ICD10 | 05122017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 91 | HCPCS | HC | J9217: 6 Leuprolide Acetate 45 mg IM every six months x 1 cycle (1 treatment ).  Total billing units = 6 |  |  |  |  | 0 |
| 05122017 | 2017-05-12T08:36:59+00:00 |  | 000048633-01 | SHARON | JAMES | OSU INTERNAL MED LLC | 928269 | BRENT C | LAMPERT | 1700024577 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512119 | Z941 | Heart transplant status | ICD10 | 05122017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11102016 | 2016-11-10T13:46:23+00:00 | Q17096080 | 000028393-01 | SAMMY | JUNK | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102016 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513014 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 05132017 | 70553, 70553, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 1, 1 | 1, 1, 1 | Void, Approved, Approved | 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T14:02:15+00:00 | Q18254959 | 000028040-01 | ELIZABETH | COLE | KOLLI, SUSMITHA P | 937038 | SUSMITHA P | KOLLI | 1871582288 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04212017 | 05212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513027 | H53452 | Other localized visual field defect, left eye | ICD10 | 05132017 | 70470, 70482 | CAT SCAN ORBIT W/WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04272017 | 2017-04-27T09:03:12+00:00 | Q18257971 | 000061220-01 | MALINDA | SPROUSE | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513030 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05132017 | 72131, 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T07:07:03+00:00 | Q18358791 | 000057354-01 | BEVERLY | HORGER | MOUNT CARMEL HLTH PRVDRS | 907872 | REGAN F | MILLER | 1609096718 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513043 | I639 | Cerebral infarction, unspecified | ICD10 | 05132017 | 70496, 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05132017 | 2017-05-13T13:45:40+00:00 | Q180906021 | 000034111-01 | Jacqueline | Sweeney | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513046 | R0609 | Other forms of dyspnea | ICD10 | 05132017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T15:48:32+00:00 |  | 000115702-01 | CINDA | POWELL | CARDIOLOGY CTR OF CINCIN | 910837 | STEPHEN J | LEWIS | 1619970274 | TRI HLTH HEART INSTITUTE | 924003 | 1285926931 | TRI HEALTH HEART INSTITUTE LLC | 1285926931 | Out of Network Services | OONS | Pre-Service | PRE |  | TRI HEALTH HEART INSTITUTE LLC | 05122017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 05122017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170509170 | Z952 | Presence of prosthetic heart valve | ICD10 | 05122017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05112017 | 2017-05-11T14:56:49+00:00 |  | 000096883-01 | LLOYD | REED | COLON & RECTAL DISEASE C | 923302 | MAHENDRA | MATTA | 1518936814 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA HOSPITAL INC | 1396714663 | Out of Network Services | OONS | Pre-Service | PRE |  | BETHESDA HOSPITAL INC | 05122017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 05122017 | 05132017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511152 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 05122017 | 45385, 45380, 45378 | COLONOSCOPY PAST SPL FLEX-DIAG. | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05112017 | 2017-05-11T15:17:11+00:00 |  | 000108075-01 | Charles | Vance | COLON & RECTAL DISEASE C | 923302 | MAHENDRA | MATTA | 1518936814 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Out of Network Services | OONS | Pre-Service | PRE |  | BETHESDA MEMORIAL HOSPITAL INC | 05122017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 05122017 | 05132017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511153 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 05122017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | called and requesting clinical be faxed, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
