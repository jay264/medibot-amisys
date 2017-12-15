Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-13
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
| 12112017 | 2017-12-11T13:16:11+00:00 |  | 000103714-01 | Carlton | Burt | MERRITT, ROBERT E | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12142017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211108 | C189, C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 12132017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 12062017 | 2017-12-06T13:57:04+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12062017 | 02062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206153 | G250 | Essential tremor | ICD10 | 12132017 | 95978, 95979, J2001, J3301, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63 | HCPCS | HC | Unsure how to process injection  email to peer for guidance. |  |  |  |  | 0 |
| 12112017 | 2017-12-11T17:55:10+00:00 |  | 000069355-01 | ORA | ARLEDGE | ADENA MEDICAL GROUP LLC | 928524 | CHRISTIN L | SPAHN | 1861654105 | PRISM MEDICAL PRODUCTS LLC | 922688 | 1548367063 | PRISM MEDICAL PRODUCTS LLC | 1548367063 | DME | DME | Pre-Service | PRE |  | PRISM MEDICAL PRODUCTS LLC | 12132017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 12132017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171212112 | L97409 | Non-prs chronic ulcer of unsp heel and midfoot w unsp severt | ICD10 | 12132017 | A6545 | Grad comp non-elastic BK | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12122017 | 2017-12-12T16:27:38+00:00 | Q19966578 | 000078610-01 | Thomas | Ellinger | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213026 | G47429 | Narcolepsy in conditions classified elsewhere w/o cataplexy | ICD10 | 12132017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T09:19:10+00:00 | Q19960171 | 000003853-01 | JACQUELINE | LUNDBERG | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213028 | M5416 | Radiculopathy, lumbar region | ICD10 | 12132017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T09:32:27+00:00 | Q19960448 | 000074963-01 | Robert | Wilhelm | GENESIS PRIMARY CARE PHY | 914049 | SEAN B | BARNES | 1164620290 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 12132017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213032 | G9389 | Other specified disorders of brain | ICD10 | 12132017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T09:30:14+00:00 | Q19960474 | 000095120-01 | Ellen | Robinson | MARIETTA HLTH CARE PHYS | 952002 | TARA M | HANSEN | 1578839957 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 12132017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 03132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213033 | C771 | Secondary and unsp malignant neoplasm of intrathorac nodes | ICD10 | 12132017 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 35 | 35 | Approved | 91 | CPT | C4 | 77386: 35: 77386 35 |  |  |  |  | 0 |
| 12122017 | 2017-12-12T10:01:02+00:00 | Q19961002 | 000119071-01 | STEVEN | SCHILLING | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12142017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213043 | M5416 | Radiculopathy, lumbar region | ICD10 | 12132017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T09:05:17+00:00 |  | 000086233-01 | Margaret | Kieber | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12132017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12112017 | 01012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171115144 | M19012, M67312, M75122, M7522, M7542, S43432A | Superior glenoid labrum lesion of left shoulder, init encntr | ICD10 | 12132017 | 29826, 29824, 29821, 23420, 23430, 29823 | ARTHROSCOPY SHLDR W EXTNSV DEBRDMNT | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 22, 22, 22, 22, 22, 22 | CPT | C4 |  |  |  |  |  | 0 |
| 12072017 | 2017-12-07T14:28:00+00:00 | Q19938409 | 000045649-01 | SHIRLEY | RATCLIFF | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12122017 | 06102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213053 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 12132017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 480 | 480 | Approved | 181 | HCPCS | HC | J9041: 480: INJECTION  BORTEZOMIB  0.1 MG  Dispensed as: 2.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 12112017 | 2017-12-11T14:48:57+00:00 | Q19955918 | 000074564-01 | David | Weaver | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12132017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12142017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213072 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 12132017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T07:11:26+00:00 | Q19958412 | 000067726-01 | NANCY | ROWE | MOUNT CARMEL HLTH PRVDRS | 942767 | KYLE | PFAHL | 1801096789 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12142017 | 02122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213084 | I200 | Unstable angina | ICD10 | 12132017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T10:57:27+00:00 | Q19962386 | 000100208-01 | John | Mueller III | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | ORTHO SPEC & SPORTS MED | 938453 | 1710983200 | ORTHOPAEDIC SPEC & SPORTS MED INC | 1710983200 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPAEDIC SPEC & SPORTS MED INC | 12132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12132017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171213141 | M25461 | Effusion, right knee | ICD10 | 12132017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T14:47:44+00:00 |  | 000081722-01 | Lee | Rathbun | OSU INTERNAL MED LLC | 907477 | STEVEN M | DEVINE | 1124036579 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12132017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 11212017 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212081 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 12132017 | 84703, 82565, 84460, 85025, 99213, 36592, 36415, 99211, 86803, 87340, 86703, 86704, 86688, 86687, 87801, 86644, 86592, 86665, 86645, 86695, 86696, 86901, 86900, 86817, 86825, 86828, 81370, J7507, J7511, J9095, 77470, 77370, 77331, 77321, 77290, 87305, 85018, 85014, 86920, 82784, 87497, 87799, 38215, 38212, 38214, 38210, 38242, 36511, 93308, 93320, 93307, 93325, 71020, A9560, 82803, 36600, 94726, 94762, 94760, 94070, 94010, 88311, 88305, G0364, 38220, 88313, 38221, 86880, 88271, 88275, 88262, 88237, 88185, 88184, 93005, 84155, 82040, 82310, 82247, 84075, 84450, 84520, 82374, 82435, 84132, 84295, 81001, 84443, 83690, 82150, 83615, 84550, 84100, 83735, 82947, 80053 | COMPREHEN METABOLIC PANEL | CPT | 4, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 4, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | 78472 was faxed to Health Help for prior authorization, Received request for status from David Waddell at 614.293.1969;  He said they are unable to look for a donor until this is approved.  I told him auth was IN PROCESS., J9245  J9250 J9340 J9181 J9185  J0594  Sent to Health Help for processing, Along with 77412, 9:45 AM 12/12/2017 Transmission Record,    Sent to: Health Help,    Phone: 918664821903,    Billing information: '81722'  'HH',    Remote ID:,    Unique ID: WTR5A2FA54DA25C,    Elapsed time: 4 minutes  22 seconds.,    Used channel 8 on server COCBAP-DTRANS02.,    No ANI data.,    No AOC data.,    Resulting status code (0/339; 0/0): Success,    Pages sent: 1 - 11,    Delegate ID:  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T14:41:24+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 951349 | MICHELLE A | ANGELIS | 1205952603 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12132017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12132017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212062 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 12132017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 82150, 83690, 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94 | HCPCS | HC |  |  |  |  |  | 0 |
| 12062017 | 2017-12-06T16:52:08+00:00 |  | 000026846-01 | ROBERT | SCARBOROUGH | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12062017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207096 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 12132017 | 92507, 92610, 92612, 92526, 92597, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
