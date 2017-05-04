Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-02
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
| 03092017 | 2017-03-09T10:33:15+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315142 | K148 | Other diseases of tongue | ICD10 | 05022017 | 31535, 31622, 43200, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T08:51:38+00:00 |  | 000011890-01 | JOY | TAYLOR | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | ORTHO TRAUMA & RECONST S | 937937 | 0 | ORTHO TRAUMA & RECONST SURG | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHO TRAUMA & RECONST SURG | 05022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04182017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405035 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 05022017 | 99214, 73510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:28:41+00:00 |  | 000060281-01 | LOUISE | STINE | DAYTON PHYSICIANS LLC | 908810 | MARK D | ROMER | 1023058427 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 05022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405050 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 05022017 | J9205, J0640, J9190, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 400, 4, 32, 40 | 400, 4, 32, 40 | Approved, Approved, Approved, Approved | 51, 51, 51, 51 | HCPCS | HC | J9205: 400 Onivyde 100mg IV day 1 q14 days x4 cycles (4 treatments).  Total billing units = 400; J0640: 4 Leucovorin 29 mg IV Day 1 every 14 days x 4 cycles (4 treatments ).  Total billing units = 4; J9190: 32 Fluorouracil 1716mg IV day 1 and day 2 q14 days x4 cycles (8 treatments).  Total billing units = 32; J2469: 40 Palonosetron 0.250 mg IV Day 1 every 14 days x 4 cycles ( 4 treatments ).  Total billing units = 40 |  |  |  |  | 0 |
| 04112017 | 2017-04-11T08:12:12+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU INTERNAL MED LLC | 930475 | ANNE M | NOONAN | 1477887479 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04112017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412023 | C221, C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 05022017 | 99201, 99202, 99203, 99204, 99205, G0463, 99211, 99212, 99213, 99214, 99215, 86301, 85025, 82565, 84295, 84132, 82435, 82374, 82947, 84520, 82247, 82248, 84075, 84450, 84460, 82378, 82105 | ALPHA-FETOPROTEIN; | CPT | 1, 1, 1, 1, 1, 12, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 1, 1, 1, 1, 1, 12, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T14:28:15+00:00 |  | 000068535-01 | MARILYN | WINKFIELD | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 04272017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412044 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 05022017 | G0463, 88305, 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04122017 | 2017-04-12T12:21:16+00:00 |  | 000082368-01 | Janet | Huggins | OSU HLTH SYS ORTHO ONC P | 911790 | THOMAS J | SCHARSCHMIDT | 1639399918 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04192017 | 06192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170413095 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 05022017 | G0463, 93000, 71020, 94760, 85730, 85610, 83036, 36415, 85025, 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 04262017 | 2017-04-26T13:47:13+00:00 |  | 000031682-01 | WILLIAM | BOWLING | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170426125 | D499 | Neoplasm of unspecified behavior of unspecified site | ICD10 | 05022017 | 20225, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T12:54:06+00:00 | Q18317166 | 000118300-01 | Phillip | Robertson Sr | LICKING MEM ONCOLOGY HEM | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 05022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05032017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170501115 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 05022017 | J9045, J9267, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T12:14:01+00:00 | Q18312913 | 000022965-01 | DONNA | CURMODE | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502026 | R0600 | Dyspnea, unspecified | ICD10 | 05022017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T08:35:55+00:00 | Q18316043 | 000087849-01 | Paul | Dilliard | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 07102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502049 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05022017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T08:42:49+00:00 | Q18316142 | 000089826-01 | Steven | Peitsmeyer | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502052 | R260 | Ataxic gait | ICD10 | 05022017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T13:38:16+00:00 | Q18311788 | 000104150-01 | LILLIAN | CUNNINGHAM | FAMILY HEALTH CARE CTR | 935019 | WILLIAM L | WASHINGTON | 1083613806 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502075 | R1904 | Left lower quadrant abdominal swelling, mass and lump | ICD10 | 05022017 | 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T12:59:39+00:00 | Q18273302 | 000082853-01 | Carol | Chochard | MOUNT CARMEL HLTH PRVDRS | 933615 | CHRISTOPHER P | BARAN | 1689082695 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502081 | E806 | Other disorders of bilirubin metabolism | ICD10 | 05022017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T13:29:10+00:00 | Q18274395 | 000084466-01 | Lawrence | Moody | MARIETTA HLTH CARE PHYS | 949706 | ROSEMARY B | DUVAL | 1780136689 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05022017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502084 | R319 | Hematuria, unspecified | ICD10 | 05022017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04302017 | 2017-04-30T06:36:07+00:00 | Q18265119 | 000023018-01 | PATRICIA | COOPER | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502095 | S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 05022017 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T00:00:00+00:00 |  | 000095620-01 | Donald | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05022017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05022017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405003 | R6889 | Other general symptoms and signs | ICD10 | 05022017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04042017 | 2017-04-04T10:28:00+00:00 |  | 000095618-01 | Danguole | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05022017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05022017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405004 | R6889 | Other general symptoms and signs | ICD10 | 05022017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04062017 | 2017-04-06T15:02:48+00:00 |  | 000106206-01 | Emory | Harrod | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Initial Review | INIT |  | TAJ MEDICAL INC | 05022017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 05022017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170406139 | R0600 | Dyspnea, unspecified | ICD10 | 05022017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
