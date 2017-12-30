Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-28
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-28
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
| 12222017 | 2017-12-22T11:52:50+00:00 |  | 000069545-01 | MARCELLA | HITCHENS | OSU NEUROPSYCH PHYS SRVS | 952032 | BLESSING | IGBOELI | 1053543603 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12192017 | 03192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171222110 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 12282017 | 99214, 99213, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12 | 12, 12, 12, 12 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12212017 | 2017-12-21T16:09:10+00:00 |  | 000113785-01 | Timothy | Black | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12282017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01032018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221176 | C61 | Malignant neoplasm of prostate | ICD10 | 12282017 | 38571, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC | Auth built as outpatient  needs to be INPT for surgery. |  |  |  |  | 0 |
| 12222017 | 2017-12-22T09:42:43+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 925720 | JON | MICKLE | 1851595664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01022018 | 07022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171222091 | C9201 | Acute myeloblastic leukemia, in remission | ICD10 | 12282017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85049, 87633, 81001, 87449, 87086, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | HCPCS | HC |  |  |  |  |  | 0 |
| 12212017 | 2017-12-21T15:13:37+00:00 | Q20034576 | 000074965-01 | Alice | Creech | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12212017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228010 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 12282017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T07:00:00+00:00 | Q20042815 | 000107370-01 | Tom | Bivens | RADIOLOGY INC | 944216 | MALOLAN S | RAJAGOPALAN | 1316265960 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 01252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228011 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 12282017 | 70460, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T09:49:37+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01082018 | 07082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171222100 | C9201 | Acute myeloblastic leukemia, in remission | ICD10 | 12282017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85049, 87633, 81001, 87449, 87086, 82565, 84520, 82374, 82435, 84295, 84132, G0463, 82947, 82040, 84075, 84460, 84450, 82248, 84447, 84155, 82565, 84520, 82374, 82435, 84295, 84132 | POTASSIUM,BLOOD | CPT | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T14:47:32+00:00 | Q20047664 | 000098776-01 | Michael | Hoy | LICKING MEM HLTH PROF | 942536 | KEVIN M | OUWELEEN | 1598781460 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12302017 | 01292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228020 | M25511 | Pain in right shoulder | ICD10 | 12282017 | 73200 | CAT SCAN UPPER EXTREMITY UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T12:14:00+00:00 | Q20046140 | 000116219-01 | WILLIAM | SHEARD JR | THE UROLOGY GROUP | 921457 | KEVIN G | CAMPBELL | 1700820776 | MONITOR MEDICAL INC | 922542 | 1619315371 | MONITOR MEDICAL INC | 1619315371 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MONITOR MEDICAL INC | 12282017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 06242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228023 | C61 | Malignant neoplasm of prostate | ICD10 | 12282017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 12272017 | 2017-12-27T07:17:18+00:00 | Q20049043 | 000113155-01 | RICHARD | ROGERS | MOUNT CARMEL HLTH PRVDRS | 914281 | DAVID J | FRID | 1598990434 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228036 | R0789 | Other chest pain | ICD10 | 12282017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12272017 | 2017-12-27T09:10:51+00:00 | Q20050145 | 000119123-01 | Robert | Ritchie Jr | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 12282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01042018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228046 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12282017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12272017 | 2017-12-27T13:11:02+00:00 | Q20053847 | 000092408-01 | Joseph | Schultz | AEBI GINTY ROMAKER SPROU | 936688 | JOSEPH M | GINTY | 1033197132 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12272017 | 01262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228081 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 12282017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12222017 | 2017-12-22T15:14:36+00:00 | Q20041922 | 000107811-01 | Carolyn | Combs | WESTERN MEDICINE LLC | 901911 |  | WESTERN MEDICINE INC | 1912970468 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 01212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227047 | R2241 | Localized swelling, mass and lump, right lower limb | ICD10 | 12282017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Cannot find servicing provider. Please update with correct provider. Other information can be found in the 278-5010 folder under the date 12/26 and in the Initial folder. |  |  |  |  | 0 |
| 12222017 | 2017-12-22T07:13:53+00:00 |  | 000106203-01 | Mary | Grace | COPE TREATMENT CENTERS I | 952645 | WILLIAM A | PRICE | 1710953674 | COPE TREATMENT CENTERS I | 952645 | 1417022682 | WILLIAM A PRICE | 1710953674 | OP Behavioral Health | OP BH | Pre-Service | PRE | WILLIAM A | PRICE | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12132017 | 03132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171222098 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 12282017 | 99305, 99308 | NURSING FAC CARE, SUBSEQ | CPT | 1, 11 | 1, 11 | Approved, Approved | 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 12282017 | 2017-12-28T14:45:38+00:00 |  | 000003999-01 | BARBARA | PAUL | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01032018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228101 | C3490, Z5111 | Encounter for antineoplastic chemotherapy | ICD10 | 12282017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
