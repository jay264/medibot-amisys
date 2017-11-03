Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-01
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
| 10312017 | 2017-10-31T12:07:16+00:00 | Q19665117 | 000074378-01 | Virginia | Myers | COPC CENTRAL OHIO PRIMAR | 936840 | MELISSA D | HARRIS | 1841267812 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101030 | R51 | Headache | ICD10 | 11012017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10312017 | 2017-10-31T07:00:28+00:00 | Q19659946 | 000056630-01 | Maryellen | Oxer | NEUROSCIENCE CENTER | 908488 | STEVEN M | NASH | 1346324738 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101039 | R413 | Other amnesia | ICD10 | 11012017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T16:51:13+00:00 | Q19659392 | 000002524-01 | JOHN | DYE | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101066 | I639 | Cerebral infarction, unspecified | ICD10 | 11012017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T08:19:47+00:00 | Q19641536 | 000059882-01 | PATRICIA | REITZ | MOUNT CARMEL HLTH PRVDRS | 935097 | ROBERT E | ZIMMERMAN | 1073556551 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101073 | R2689 | Other abnormalities of gait and mobility | ICD10 | 11012017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T06:51:57+00:00 | Q19650596 | 000084581-01 | Dora | Westfall | MERCY HEALTH PHYSICIANS | 921649 | GREGORY | COLANGELO | 1083674220 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 11012017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10302017 | 11292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101079 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 11012017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11012017 | 2017-11-01T08:41:32+00:00 | Q19663178 | 000002159-01 | RUTH | ANDERSON | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11012017 | 04302018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101097 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 11012017 | J9171, J2505, J2405, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 18, 12, 16, 24 | 18, 12, 16, 24 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T09:29:58+00:00 | Q19621680 | 000077408-01 | Sallie | Dixon | ONCOLOGY HEMATOLOGY CARE | 921712 | KARYN M | DYEHOUSE | 1649297094 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 11012017 | Approved | MediGold Southwest OH Essential Care |  | Medical Criteria Met | Outpatient | 10272017 | 04252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031145 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 11012017 | J9171, J2505, J2469, J9070 | CYCLOPHOSPHAMIDE, 100 MG | HCPCS | 600, 8, 40, 48 | 600, 8, 40, 48 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T12:40:10+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10302017 | 01302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031241 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 11012017 | 97165, 97166, 97167, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T17:25:51+00:00 |  | 000100420-01 | Bernard | Rossi | LADSON, DARNELL | 907484 | DARNELL | LADSON | 1346332731 | LADSON, DARNELL | 907484 | 1346332731 | DARNELL LADSON | 1346332731 | OP Behavioral Health | OP BH | Pre-Service | PRE | DARNELL | LADSON | 11012017 | Approved | MediGold Essential Care | Member | Services Not Available In-Network | Outpatient | 11012017 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023053 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 11012017 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 93 | CPT | C4 | Outreach to provider for clinical documentation made. |  |  |  |  | 0 |
| 10272017 | 2017-10-27T10:42:03+00:00 | Q19644106 | 000116568-01 | Robert | Garrison | THE UROLOGY GROUP | 921736 | DOUGLAS E | FEENEY | 1649216326 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 11012017 | Approved | MediGold Southwest OH Classic Preferred |  | Medical Criteria Met | Outpatient | 10272017 | 04252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031060 | C61 | Malignant neoplasm of prostate | ICD10 | 11012017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 4 | 4 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10312017 | 2017-10-31T09:04:33+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10302017 | 01302018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031119 | C4011, M2560, Z96612 | Presence of left artificial shoulder joint | ICD10 | 11012017 | 97140, 97110, 97760, 97762, 97535, G0463, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T16:02:00+00:00 |  | 000048377-01 | BARBARA | VANSICKLE | CEN OHIO SURG INSTITUTE | 935529 | JACOB PAUL | BURKHART III | 1720073992 | OSU PATHOLOGY SRVS LLC | 938542 | 1083713820 | OSU PATHOLOGY SERVICES LLC | 1083713820 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU PATHOLOGY SERVICES LLC | 11012017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10252017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023105 | B379 | Candidiasis, unspecified | ICD10 | 11012017 | 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10312017 | 2017-10-31T09:35:03+00:00 |  | 000081722-01 | Lee | Rathbun | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 10312017 | 11302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031123 | D4622 | Refractory anemia with excess of blasts 2 | ICD10 | 11012017 | 99205, 93300, 93304, 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC | Contacted Heather 614-383-6306 for CPT codes for Transplant evaluation  in order to process authorization.  No answer, Received return call from Heather.  Added CPT codes to authorization |  |  |  |  | 0 |
| 10182017 | 2017-10-18T10:59:40+00:00 |  | 000095092-01 | Vickie | Cook | OSU OTOLARYNGOLOGISTS LL | 927444 | AARON | MOBERLY | 1083872022 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 11012017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 10182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019070 | G960 | Cerebrospinal fluid leak | ICD10 | 11012017 | 99213, 92557, 92550, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T10:27:01+00:00 | Q19622701 | 000115275-01 | Freeman | Burke Jr | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10252017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026035 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 11012017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T08:30:06+00:00 | Q19620330 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026101 | C61 | Malignant neoplasm of prostate | ICD10 | 11012017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 45 | 45 | Approved | 91 | HCPCS | HC | G6015: 45: G6015 45 |  |  |  |  | 0 |
| 10252017 | 2017-10-25T12:09:38+00:00 |  | 000049352-01 | BARBARA | SMITH | OSU INTERNAL MED LLC | 909303 | JENNIFER A | SIPOS | 1033124813 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10262017 | 01262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026056 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 11012017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T13:08:15+00:00 | NCT02538666 . | 000068535-01 | MARILYN | WINKFIELD | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11012017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10302017 | 01302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026089 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 11012017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T13:34:44+00:00 | Q19635157 | 000107749-01 | Denna | Davis | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 11012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 04242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026153 | C482 | Malignant neoplasm of peritoneum, unspecified | ICD10 | 11012017 | J9267, J9045, J2505, J2469, J1453, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 6, 6, 8, 6, 6, 24 | 6, 6, 8, 6, 6, 24 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T10:30:19+00:00 |  | 000046066-01 | JOHN | WAGNER | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 11012017 | Denied | MediGold Classic Preferred | Mail | Not a Covered Benefit (PA) | Outpatient | 11012017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171020135 | K859 | Acute pancreatitis, unspecified | ICD10 | 11012017 | 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
