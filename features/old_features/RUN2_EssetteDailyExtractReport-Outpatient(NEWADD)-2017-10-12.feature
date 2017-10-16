Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-12
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
| 10112017 | 2017-10-11T09:51:50+00:00 | Q19515036 | 000059424-01 | SONIA | EDWARDS | COPC CENTRAL OHIO PRIMAR | 935124 | SETH E | HOLTZAPFEL | 1689650269 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012023 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 10122017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T10:34:36+00:00 | Q19515968 | 000043505-01 | JOSEPH | HALLA | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012035 | R32 | Unspecified urinary incontinence | ICD10 | 10122017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T13:45:54+00:00 | Q19476741 | 000082132-01 | Bogomir | Glavan Jr | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012061 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10122017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T16:11:50+00:00 |  | 000060239-01 | ETHEL | CARROLL | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 10122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10182017 | 01182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012028 | D3131, H353190, Z961 | Presence of intraocular lens | ICD10 | 10122017 | 99212, 99213, 99214, 92250, 92134, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:20:54+00:00 |  | 000108022-01 | Patricia | Bobb | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10132017 | 11132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010139 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10122017 | 97161, 97162, 97163, 97164, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T14:58:03+00:00 | Q19478156 | 000082628-01 | Virginia | Beaver | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012062 | G910 | Communicating hydrocephalus | ICD10 | 10122017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T07:05:37+00:00 | Q19426299 | 000047566-01 | HELEN | MARCUM | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012116 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 10122017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T13:18:27+00:00 | Q19519138 | 000046274-01 | Carolyn | Slone | COPC CENTRAL OHIO PRIMAR | 902616 | VASANTHY | RAJAH | 1609853811 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012130 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 10122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T07:13:36+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 943770 | MEGHAN | KROMER | 1477931533 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10122017 | 01122018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012052 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10122017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85730, 85610, 80048, 83735, 84100, 84550, 84165, 84155, 84040, 84075, 84460, 84450, 82248, 82247, 84155, 83615, 86900, 86901, 86850, 82728, 86695, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83909, 83900, 87081, 85730, 85610, 88184, 38221, 88313, 88305, 88237, 88262, 88271, 88275, 94729, 94010, 94070, 94375, 94726, 94727, 94728, 94240, 94260, 94720, 36600, 93000, G0364, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | LVMM for Tammy Collier at OSU regarding codes and frequency., PC from Tammy at OSU  advises that mbr cell 614-774-4489 |  |  |  |  | 0 |
| 10062017 | 2017-10-06T09:14:48+00:00 | Q19481932 | 000107250-01 | Billie | Welsh | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012146 | C61 | Malignant neoplasm of prostate | ICD10 | 10122017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T06:58:28+00:00 | Q19426287 | 000027975-01 | DOROTHY | DOVER | COPC CENTRAL OHIO PRIMAR | 936729 | LAURIE E | GOSSARD | 1639285117 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002052 | R911 | Solitary pulmonary nodule | ICD10 | 10122017 | 71260, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10072017 | 2017-10-07T19:18:57+00:00 | Q19489953 | 000054297-01 | DONNA | HARLOW | SLEEP DISORDERS CENTERS- | 951134 | JON | DURRANI | 1932495157 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10062017 | 11052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009110 | R292 | Abnormal reflex | ICD10 | 10122017 | 72146, 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 | According to the 278-5010 10/09 Initial Error Report this authorization required the an additional service code that was not in the original approved authorization. CPT code 72141  was added to this authorization. Please review the services for this auth to ensure that all the appropriate CPTs have been added. |  |  |  |  | 0 |
| 10112017 | 2017-10-11T13:25:02+00:00 |  | 000077553-01 | Kathleen | Purcell | OSU PSYCHIATRY LLC | 929640 | LAURA | BOXLEY | 1922341072 | OSU PSYCHIATRY LLC | 901065 | 1194773317 | OSU PSYCHIATRY LLC | 1194773317 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | OSU PSYCHIATRY LLC | 10122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10122017 | 11122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011159 | G250 | Essential tremor | ICD10 | 10122017 | 96118, 96119, 96120, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T10:50:29+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10122017 | 01122018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012143 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 10122017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 82150, 83690, 81001, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
