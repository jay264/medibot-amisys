Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-06
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-06
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
| 02082017 | 2017-02-08T07:34:59+00:00 | Q17707059 | 000068968-01 | ROBERT | FRANZ | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CENTRAL OH UROLOGY GROUP INC | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170208105 | R3129 | OTHER MICROSCOPIC HEMATURIA | ICD10 | 04062017 | 74178, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T12:25:33+00:00 | Q17996654 | 000029793-01 | OLGA | KUSOVSKI | RADIOLOGY INC | 944216 | MALOLAN S | RAJAGOPALAN | 1316265960 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08012016 | 08312016 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320017 | C539 | Malignant neoplasm of cervix uteri, unspecified | ICD10 | 04062017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T16:58:57+00:00 |  | 000104773-01 | Estella | Sandusky | DENTAL FACULTY PRACTICE | 930826 | HANY A | EMAM | 1316176944 | DENTAL FACULTY PRACTICE | 938575 | 1164537684 | DENTAL FACULTY PRACTICE | 1164537684 | Out of Network Services | OONS | Pre-Service | PRE |  | DENTAL FACULTY PRACTICE | 04062017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405030 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 04062017 | 99203, 40808, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T08:51:38+00:00 |  | 000011890-01 | JOY | TAYLOR | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | ORTHO TRAUMA & RECONST S | 937937 | 0 | ORTHO TRAUMA & RECONST SURG | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHO TRAUMA & RECONST SURG | 04062017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04182017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405035 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 04062017 | 99214, 73510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T12:52:50+00:00 |  | 000081512-01 | Robert | Strutton | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405044 | J439 | Emphysema, unspecified | ICD10 | 04062017 | 93307, 93306, 93320, 94010, 94060, 94720, 36600, 94620, 99245, 86832, 86833, 86828, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, G0103, 85730, 85610, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:28:41+00:00 |  | 000060281-01 | LOUISE | STINE | DAYTON PHYSICIANS LLC | 908810 | MARK D | ROMER | 1023058427 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405051 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 04062017 | J9205 | INJ IRINOTECAN LIPOSOME 1 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T08:23:11+00:00 |  | 000011179-01 | WILHELMINA | HOLBROOK | COPC CENTRAL OHIO PRIMAR | 905437 | AMANDA E | GORDON | 1073711602 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405059 | R05 | Cough | ICD10 | 04062017 | 71260, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T08:44:45+00:00 | Q18117138 | 000087551-01 | Clara | Cunion | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405071 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04062017 | 78452, 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T10:02:17+00:00 |  | 000049836-01 | DONALD | BOLDT | CHERRY WESTGATE FAM PRCT | 935131 | DAVID E | BORN | 1811994387 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405078 | K862 | Cyst of pancreas | ICD10 | 04062017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T16:43:05+00:00 |  | 000108415-01 | Robert | Powell | FLOWER MOUND HOSPITAL | 940715 |  | FLOWER MOUND HOSPITAL PARTNERS LLC | 1902047376 | FLOWER MOUND HOSPITAL | 940715 | 1902047376 | FLOWER MOUND HOSPITAL PARTNERS LLC | 1902047376 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FLOWER MOUND HOSPITAL PARTNERS LLC | 04062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04052017 | 05052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405155 | L508 | Other urticaria | ICD10 | 04062017 | 99202, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC | Phone rang busy |  |  |  |  | 0 |
| 03302017 | 2017-03-30T09:30:36+00:00 | Q18087239 | 000106462-01 | Louise E | Cooper | DAYTON PHYSICIANS LLC | 908901 | BURHAN | YANES | 1275572869 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406015 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04062017 | 70491, 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T13:44:49+00:00 | Q18123209 | 000086256-01 | Gerald | Boyer | MOUNT CARMEL WEST PHYS | 936576 | RICHARD A | FISCHER | 1558354894 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406035 | M25511 | Pain in right shoulder | ICD10 | 04062017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T15:27:17+00:00 | Q18125502 | 000107561-01 | Gregory | Piper | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406047 | M5416 | Radiculopathy, lumbar region | ICD10 | 04062017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T07:58:51+00:00 | Q18127478 | 000108524-01 | William | Hamilton | COSHOCTON COUNTY MEM HSP | 921909 | CLAYTON T | GIBSON | 1215952510 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04062017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04082017 | 05082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406057 | M25519 | Pain in unspecified shoulder | ICD10 | 04062017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T09:33:17+00:00 | Q18128991 | 000066657-01 | MARLANE | KARR | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | THE OH STATE UNIVERSITY | 902254 | 1447359997 | THE OH STATE UNIVERSITY HSP HARDING | 1790876183 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP HARDING | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406067 | D119 | Benign neoplasm of major salivary gland, unspecified | ICD10 | 04062017 | 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T10:09:29+00:00 | Q18129796 | 000042593-01 | Ronald | Downs | MERCY HEALTH PHYSICIANS | 927842 | ERIC B | METZ | 1952408767 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406077 | S83241A | Oth tear of medial meniscus, current injury, r knee, init | ICD10 | 04062017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T12:19:13+00:00 | Q18132041 | 000112174-01 | Patricia | Smith | COSHOCTON COUNTY MEM HSP | 919987 | JOHN D | CAFFARATTI | 1265418255 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 04062017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406087 | R079 | Chest pain, unspecified | ICD10 | 04062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T12:32:22+00:00 | Q18132603 | 000085208-01 | Darell | Young | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 04062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406091 | I481 | Persistent atrial fibrillation | ICD10 | 04062017 | 75572 | CT HRT W/3D IMAGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T12:30:21+00:00 | Q18112588 | 000113908-01 | Wendi | Jenkins | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170406097 | S83241A | Oth tear of medial meniscus, current injury, r knee, init | ICD10 | 04062017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T13:14:26+00:00 | Q18098115 | 000115448-01 | Cindy | Gleim | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170406114 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 04062017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T14:16:00+00:00 | Q18138137 | 000068859-01 | PATRICIA | POWERS | SPRINGFIELD HEMATOLOGY & | 901547 | DALJEET | SINGH | 1598784092 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04062017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04062017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170406136 | C8224 | Foliclar lymph grade III, unsp, nodes of axla and upper limb | ICD10 | 04062017 | J9310, J9034 | INJ., BENDEKA 1 MG | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
