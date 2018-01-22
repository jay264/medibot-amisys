Feature: RUN 2 Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2_EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-18
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
| 01172018 | 2018-01-17T13:24:14+00:00 | Q20191151 | 000001224-01 | BEVERLY | HUMPHREY | CEN OH UROLOGY GRP INC | 937030 | RICHARD | KLUMP | 1114971512 | CEN OH UROLOGY GRP INC | 946058 | 1396780466 | MICHELLE BENNETT | 1144292012 | Radiology (HH) | OP RAD | Pre-Service | PRE | MICHELLE | BENNETT | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118104 | N200 | Calculus of kidney | ICD10 | 01182018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T13:40:01+00:00 | Q20195464 | 000062734-01 | JON | NOE | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 03192018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118119 | I472 | Ventricular tachycardia | ICD10 | 01182018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T13:18:12+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01252018 | 04252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118120 | C029, C760 | Malignant neoplasm of head, face and neck | ICD10 | 01182018 | 92507, 92610, 92612, 92526, 31575, 31579, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 12062017 | 2017-12-06T09:25:46+00:00 | Q19918913 | 000094320-01 | Irene | Maibach | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207082 | G5752 | Tarsal tunnel syndrome, left lower limb | ICD10 | 01182018 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T08:44:39+00:00 | Q20019176 | 000091519-01 | Kenneth | Rush | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 01182018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 07022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171225011 | C155 | Malignant neoplasm of lower third of esophagus | ICD10 | 01182018 | J9190, J2469, J0640, J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 60, 60, 96, 2040 | 60, 60, 96, 2040 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9190: 60: (FOLFOX) 5-Fluorouracil (5-FU) 400 mg/m2  IV  day 1  every 14 days  6 cycles; 5-Fluorouracil (5-FU) 800 mg/m2  CIV  days 1-2  every 14 days  6 cycles: J0640: 96: Leucovorin 400 mg/m2  IV  day 1  every 14 days  6 cycles: J9263: 2040: Oxaliplatin 85 mg/m2  IV  day 1  every 14 days  6 cycles: J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:17:00+00:00 | Q20197384 | 000093070-01 | Preston | Cunningham | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01182018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118128 | R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 01182018 | 72197 | MRI PELVIS W/O & W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T13:51:19+00:00 |  | 000052324-01 | RUSSELL | BAILEY | WHETSTONE MED CLINIC INC | 934947 | JOSEPH A | TRAPP | 1790733848 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01152018 | 04152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118121 | H47213 | Primary optic atrophy, bilateral | ICD10 | 01182018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 3 | 3 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T10:22:59+00:00 | Q20188210 | 000049268-01 | EDWARD | HARRISON | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118016 | R0789 | Other chest pain | ICD10 | 01182018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:06:07+00:00 | Q20188795 | 000091092-01 | Gertrude | Blanken | BASEL YANES INC | 928178 | JYOTHI | CHALLA | 1528144250 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118017 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 01182018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:10:23+00:00 | Q20188822 | 000027754-01 | CAROL | RICHARDSON | MOUNT CARMEL HLTH PRVDRS | 933615 | CHRISTOPHER P | BARAN | 1689082695 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118018 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 01182018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:10:26+00:00 | Q20188823 | 000106878-01 | Sabrina | Sexton | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 946417 | 1205887023 | HEERAN ABAWI | 1932337649 | Radiology (HH) | OP RAD | Pre-Service | PRE | HEERAN | ABAWI | 01182018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118019 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 01182018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:14:00+00:00 | Q20188899 | 000037928-01 | RICHARD | ANDERSON | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118022 | R1084 | Generalized abdominal pain | ICD10 | 01182018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:19:12+00:00 | Q20188972 | 000109321-01 | Danny | Long | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118023 | M5416 | Radiculopathy, lumbar region | ICD10 | 01182018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:25:18+00:00 | Q20189133 | 000107878-01 | Peggy | Herdman | COLS EAST INTL MED INC | 935260 | LISA | BRAVERMAN | 1720139744 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118024 | R911 | Solitary pulmonary nodule | ICD10 | 01182018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:37:24+00:00 | Q20189256 | 000093362-01 | William | Martin | CAROL S NELTNER MD INC | 937243 | CAROLYN S | NELTNER | 1427055607 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01292018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118025 | M25559 | Pain in unspecified hip | ICD10 | 01182018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:34:04+00:00 | Q20189346 | 000113107-01 | Paul | Hagerman | ALLIANCE PHYSICIANS INC | 933547 | KERRI L | GIBSON | 1104124221 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENE MEMORIAL HOSPITAL | 01182018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118027 | R0789 | Other chest pain | ICD10 | 01182018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T11:48:47+00:00 | Q20189457 | 000072393-01 | Philip | Malott | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 01182018 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118028 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 01182018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T13:23:37+00:00 | Q20191015 | 000102479-01 | Patricia | Lewis | JACK STANKO MD LLC | 902266 |  | JACK STANKO MD LLC | 1194924431 | TAYLOR STATION SURGICAL CENTER | 936507 | 1942231493 | TAYLOR STATION SURGICAL CENTER | 1942231493 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | TAYLOR STATION SURGICAL CENTER | 01182018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118103 | Z45010 | Encntr for checking and test of card pacemaker pulse gnrtr | ICD10 | 01182018 | 33229, C1785, C2619, C2621, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
