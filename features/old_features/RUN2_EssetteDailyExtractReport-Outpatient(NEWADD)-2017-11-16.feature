Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-16
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
| 11092017 | 2017-11-09T12:34:04+00:00 |  | 000096147-01 | Frederick | Goerler | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109137 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 11152017 | 36558, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T08:30:35+00:00 | Q19778515 | 000043251-01 | HARRIETTE | BULLOCK | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116020 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11162017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T13:07:12+00:00 | Q19783885 | 000079256-01 | Ronald | Swisher | MARIETTA HLTH CARE PHYS | 924063 | CHARLES L | LEVY | 1043270408 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11292017 | 12292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116023 | Z981 | Arthrodesis status | ICD10 | 11162017 | 72148, 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T13:30:45+00:00 | Q19784395 | 000103160-01 | MARYANNE | FITZPATRICK | ONCOLOGY HEMATOLOGY CARE | 921204 | PATRICK J | WARD | 1093709297 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 11162017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11282017 | 05272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116030 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 11162017 | J0640, J2469, J9190, J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 128, 40, 128, 2720 | 128, 40, 128, 2720 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J0640: 128: Leucovorin 200 mg/m2  IV  days 1  8  15  22  every 42 days  4 cycles: J9190: 128: 5-Fluorouracil (5-FU) 2000 mg/m2  CIV  day 1  8  15  22  every 42 days  4 cycles: J9263: 2720: Oxaliplatin 85 mg/m2  IV  days 8  22  every 42 days  4 cycles: J2469: 40: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 11152017 | 2017-11-15T13:01:02+00:00 | Q19783807 | 000076568-01 | Earnest | Bell | ALLIANCE PHYSICIANS INC | 901871 | SANTOSH | KHURMA | 1114926987 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GREENE MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116033 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 11162017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11142017 | 2017-11-14T14:03:43+00:00 | Q19774275 | 000100987-01 | Patrick | Park | MOUNT CARMEL WEST PHYS | 936576 | RICHARD A | FISCHER | 1558354894 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116039 | S43421A | Sprain of right rotator cuff capsule, initial encounter | ICD10 | 11162017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11142017 | 2017-11-14T13:15:00+00:00 | Q19776148 | 000110950-01 | Darlene | Allen | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 05132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116058 | C8219 | Follicular lymphoma grade II, extrnod and solid organ sites | ICD10 | 11162017 | J0897 | Denosumab injection | HCPCS | 60 | 60 | Approved | 181 | HCPCS | HC | J0897: 60: INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 11142017 | 2017-11-14T16:39:20+00:00 | Q19777001 | 000091137-01 | Irma | Bass | SPRINGFIELD CTR FOR FAM | 915709 | JANET | ROBERTO | 1760485650 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116068 | R634 | Abnormal weight loss | ICD10 | 11162017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T07:57:48+00:00 | Q19756599 | 000096324-01 | EDGAR | PARKINSON | THORNVILLE FAM MED CTR | 922069 | SHELBY K | RAISER | 1396725271 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116098 | H5711 | Ocular pain, right eye | ICD10 | 11162017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T08:52:22+00:00 | Q19778913 | 000118347-01 | David | Watkins | OHIO PAIN CLINIC LLC | 910334 | AMOL | SOIN | 1316135585 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11172017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116123 | M542 | Cervicalgia | ICD10 | 11162017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T11:44:16+00:00 | Q19782456 | 000088567-01 | Charles | Warga | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 06022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116156 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 11162017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24: Zoledronic Acid 4 mg  IV  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 11152017 | 2017-11-15T07:34:20+00:00 | Q19777845 | 000113966-01 | JAMES | DECKER | LICKING MEM HLTH PROF | 914005 | MARITA L | MOORE | 1528157468 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116161 | Z87891 | Personal history of nicotine dependence | ICD10 | 11162017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T07:56:23+00:00 | Q19778205 | 000115307-01 | Lynda | Ball | GREENE MEM HSP SRVS INC | 914153 | JOLINDA L | CASWELL | 1508822784 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 11162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116165 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 11162017 | 73220 | MRI UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11082017 | 2017-11-08T11:19:33+00:00 |  | 000001043-01 | ELSIE | EDWARDS | OSU INTERNAL MED LLC | 935827 | CURTIS J | DANIELS | 1407833320 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171108125 | I270, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 11162017 | 99212, 99213, 99214, 99215, G0463, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T11:28:13+00:00 |  | 000031799-01 | FORREST | EASTER | BARB EMERGENCY PHYSICIAN | 942000 | CHERYL L | LEE | 1164427563 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11022017 | 12022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025097 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 11162017 | 93000, 71020, 94760, 99201, 99202, 99203, 99204, 99205, 85730, 85610, 83036, 85025, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T08:21:00+00:00 |  | 000012265-01 | VIRGINIA | ANDREWS | OSU SURGERY LLC | 942268 | HOSAM F | EL SAYED | 1063598977 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10302017 | 12302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024164 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 11162017 | 33881, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T13:49:31+00:00 | Q19656658 | 000104193-01 | Beverly | Bintz | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10312017 | 04292018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031126 | C8316 | Mantle cell lymphoma, intrapelvic lymph nodes | ICD10 | 11162017 | J9310, J9041, J9000, J9070, J2505, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 8, 32, 8, 8, 8, 8, 8 | 8, 32, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T10:44:42+00:00 | Q19644145 | 000089362-01 | Glenna | Perry | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 11162017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031192 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 11162017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T11:31:37+00:00 | Q19645065 | 000090488-01 | Kelly | Donaldson | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 11162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 05092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031198 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 11162017 | J9355 | TRASTUZUMAB, 10 MG | HCPCS | 408 | 408 | Approved | 181 | HCPCS | HC | J9355: 408: Trastuzumab 6 mg/kg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 10272017 | 2017-10-27T11:05:37+00:00 |  | 000077236-01 | Judith | Stodghill | TRISTATE CENTERS FOR SIG | 921617 | MARK A | CEPELA | 1730181009 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Predetermination Request | PR | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 11162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027115 | H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 11162017 | 15823, 15823 | BLEPHAROPLASTY UPPER LD C EXCSV SKN | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
