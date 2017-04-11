Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-03
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-03
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
| 03132017 | 2017-03-13T14:13:26+00:00 |  | 000027029-01 | GLENNA | ROGERS | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330029 | C8293 | Follicular lymphoma, unsp, intra-abdominal lymph nodes | ICD10 | 04032017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T09:49:43+00:00 |  | 000093245-01 | Arthur | Johnson | MERCY HEALTH PHYSICIANS | 930374 | AARTI A | SINGLA | 1063555639 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 04032017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330045 | M4806 | Spinal stenosis, lumbar region | ICD10 | 04032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:33:43+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330142 | R911 | Solitary pulmonary nodule | ICD10 | 04032017 | 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:05:36+00:00 |  | 000113892-01 | Rose | Conley | PARS NEUROSURG ASSOC INC | 923200 | KIM E | CRUM | 1811082589 | PARS NEUROSURG ASSOC INC | 924015 | 1457396152 | PARS NEUROSURGICAL ASSOCIATES INC | 1457396152 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PARS NEUROSURGICAL ASSOCIATES INC | 04032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402001 | M542 | Cervicalgia | ICD10 | 04032017 | 72141, 72148, 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T11:49:06+00:00 |  | 000116998-01 | Robert | Reed | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402017 | I480 | Paroxysmal atrial fibrillation | ICD10 | 04022017 | 75572 | CT HRT W/3D IMAGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T12:13:45+00:00 | Q18090780 | 000088500-01 | Gerald | Broz | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402021 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04022017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T07:46:48+00:00 |  | 000076690-01 | William | Corallini Jr | MOUNT CARMEL HLTH PRVDRS | 902101 | JOSEPH S | WINCHELL | 1598706632 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402030 | N209 | Urinary calculus, unspecified | ICD10 | 04022017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T08:17:40+00:00 | Q18086215 | 000039414-01 | CLEVELAND | BURKS JR | UNIVERSITY CARDIOLOGY | 904566 | MANMOHAN K | KATAPADI | 1528192820 | UNIVERSITY CARDIOLOGY | 937870 | 1730114851 | UNIVERSITY CARDIOLOGY | 1730114851 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNIVERSITY CARDIOLOGY | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402034 | R0789 | Other chest pain | ICD10 | 04022017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:29:46+00:00 | Q18082806 | 000028620-01 | RAYMOND | BARRETT | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402038 | M5416 | Radiculopathy, lumbar region | ICD10 | 04022017 | 72132 | CAT SCAN LUMBAR SPINE C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T16:29:28+00:00 |  | 000090296-01 | Jeanette | Pendleton | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402048 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 04022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T13:42:19+00:00 | Q18066965 | 000105988-01 | Russell | Burton | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 04022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402054 | M4806 | Spinal stenosis, lumbar region | ICD10 | 04022017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T07:16:43+00:00 | Q18067914 | 000083333-01 | Jeffery | Miller | MADISON COUNTY HOSPITAL | 930680 | SHABANA J | DEWANI | 1306928817 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 04032017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402057 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 04032017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T14:22:20+00:00 |  | 000057684-01 | DENNIS | HARVEY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402062 | C01 | Malignant neoplasm of base of tongue | ICD10 | 04022017 | 70490 | CAT SCAN SFT TIS NECK WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:32:33+00:00 | Q18073492 | 000085909-01 | Don | Bivens | ASSOC IN PODIATRY INC | 937088 | DONALD P | LEMELLE | 1487691747 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402064 | M79671 | Pain in right foot | ICD10 | 04022017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T09:27:10+00:00 |  | 000053052-01 | WILLIAM | HOWARD | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 06282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402066 | C3482 | Malignant neoplasm of ovrlp sites of left bronchus and lung | ICD10 | 04022017 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T07:16:28+00:00 | Q18026954 | 000093939-01 | Judith | Golas | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402076 | M810 | Age-related osteoporosis w/o current pathological fracture | ICD10 | 04022017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 5 | 5 | Approved | 91 | HCPCS | HC | J3489: 5 Zoledronic Acid 5mg/100mL - 5mg Intravenous once over 15 minutes x1 cycle (1 treatment).  Total billing units = 5 |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:26:15+00:00 |  | 000100380-01 | Edward | Harrison | MERCY HEALTH PHYSICIANS | 921190 | FRANCIS | VALENTIN | 1083613145 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 04022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170402078 | M4802 | Spinal stenosis, cervical region | ICD10 | 04022017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T07:40:49+00:00 | Q18096242 | 000040623-01 | RALPH | LOCKE | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403007 | M4806 | Spinal stenosis, lumbar region | ICD10 | 04032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T10:21:37+00:00 |  | 000077419-01 | Cheryl | Stickdorn | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 04032017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403017 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T12:09:50+00:00 | Q18100854 | 000037859-01 | GARRISON | TARR | COLONNADE MED GRP INC | 926211 | STEVEN D | KAPETANSKY | 1780871343 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403022 | M542 | Cervicalgia | ICD10 | 04032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T12:27:35+00:00 | Q18101116 | 000093852-01 | Sharon | Cole | MARIETTA MEM HSP | 926921 | STEVEN D | RICHARDS | 1275581605 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 04032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403024 | M545 | Low back pain | ICD10 | 04032017 | 72149 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITH CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T13:13:39+00:00 |  | 000085163-01 | Janet | Haddox | MOUNT CARMEL HLTH PRVDRS | 936230 | ASOK | DASGUPTA | 1396855359 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403027 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 04032017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T12:31:20+00:00 |  | 000053812-01 | JAMES | STRONG | PULMONARY MED OF DAYTON | 907975 | MEDIAN | ALI | 1649253113 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403028 | J984 | Other disorders of lung | ICD10 | 04032017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T08:15:11+00:00 | Q18093479 | 000077841-01 | Maurice | Smith | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403036 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 04032017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T08:38:23+00:00 |  | 000094133-01 | Lonnie | Comfort | THE PAIN MANAGEMENT CLIN | 919804 | MICHAEL F | SAYEGH | 1033282207 | THE PAIN MANAGEMENT CLIN | 919804 | 1750435905 | MICHAEL F SAYEGH | 1033282207 | Predetermination Request | PR | Pre-Service | PRE | MICHAEL F | SAYEGH | 04032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403039 | M5136, M5416, M545 | Low back pain | ICD10 | 04032017 | 63650, L8680 | IMPLANTABLE NEUROSTIMULATOR, EACH | HCPCS | 2, 16 | 2, 16 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T08:39:32+00:00 |  | 000114150-01 | STEVEN | SMITH | KNOX COMMUNITY HOSPITAL | 916561 | BRENT B | OGLE | 1689606451 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 04032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403045 | R911 | Solitary pulmonary nodule | ICD10 | 04032017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T08:28:39+00:00 |  | 000075995-01 | Kenneth | Ruprecht | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403063 | C9000, Z9481 | Bone marrow transplant status | ICD10 | 04032017 | 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 85730, 85610, 86900, 86901, 86850, 36145, 85025, 82947 | GLUCOSE; EXC. UA (EG BLD, SP FLD) | CPT | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T13:06:37+00:00 |  | 000083518-01 | Rose | Dorsey | RCHP WILMINGTON LLC | 939625 | CASSANDRA | GRENADE | 1770744807 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 03312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403065 | C7A8, C7B8 | Other secondary neuroendocrine tumors | ICD10 | 04032017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:57:58+00:00 | Q18022399 | 000107771-01 | Ted | Berry | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403078 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 04032017 | J9045, J9181, J2469, J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC | J9045: 90 Carboplatin 10mg/mL-475mg (at 5 AUC (CrCl) IV q21 days x6 cycles (6 treatments). Total billing units = 90; J9181: 120 Etoposide 20mg/mL - 194mg (at 100 mg/m2) IV q21 days x6 cycles (6 treatments). Total billing units = 120; J2469: 60 Palonosetron HCI 0.25mg/5mL - 0.25mg IV q21 days x6 cycles (6 treatments). Total billing units = 60; J2505: 6 Neulasta On Body Injector 6mg/0.6mL - 6mg Subcutaneous once q21 days x6 cycles (6 treatments). Total billing units = 6 |  |  |  |  | 0 |
| 04032017 | 2017-04-03T13:04:48+00:00 | Q17450779 | 000068551-01 | CAROLYN | STONE | LICKING MEM PROF CORP | 930953 | ASEGID H | KEBEDE | 1598716201 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403088 | E279 | Disorder of adrenal gland, unspecified | ICD10 | 04032017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T13:46:04+00:00 |  | 000095877-01 | Clifford | Bruner Jr | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 04062017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403091 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04032017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:26:04+00:00 | Q18107346 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403099 | C180 | Malignant neoplasm of cecum | ICD10 | 04032017 | J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:36:35+00:00 |  | 000082943-01 | Jeffrey | Ledsome | MARIETTA HLTH CARE PHYS | 922070 | DORAI T | RAJAN | 1831297654 | MICHAEL SHRAMOWIAT LLC | 923894 | 1003820374 | MICHAEL SHRAMOWIAT | 1568485233 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | SHRAMOWIAT | 04032017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 04032017 | 04042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329112 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 04032017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Message left for Chasity at provider's office.  Request is a retro request with date of service of 3/22/17 and request date 3/29/17.  Clinical information also still needed to process request., Expedited portion removed from request as per phone call with Chasity.  Date of service is 3/22. |  |  |  |  | 0 |
