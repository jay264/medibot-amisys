Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-10
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
| 02282017 | 2017-02-28T19:03:06+00:00 | Q17847146 | 000115725-01 | DONNIE | WEBB | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 07102017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012017 | 08282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170301057 | C61 | Malignant neoplasm of prostate | ICD10 | 07102017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Lupron 22.5mg Injection day 1 q 90days x 2 cycles (2 treatments).  Total billing units = 6 |  |  |  |  | 0 |
| 06212017 | 2017-06-21T15:29:51+00:00 |  | 000093789-01 | Leila | Hollett | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622007 | K7460, K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 07102017 | 49083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:23:41+00:00 | Q18050656 | 000104992-01 | Michael | Davis | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 09262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622100 | C252 | Malignant neoplasm of tail of pancreas | ICD10 | 07102017 | J9201, J9264, J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 1, 4590, 24 | 1, 4590, 24 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9201: 198 Gemzar: 2 014 mg IV Day 1  8  & 15 q 28 days x 6 cycles (18 treatments).  Total billing units = 198; J9264: 4590 Abraxane: 255 mg IV Day 1  8  & 15 q 28 days x 6 cycles (18 treatments).  Total billing units = 4590; J3489: 24 Zometa: 4mg IV Day 1 q month x 6 cycles (6 treatments).  Total billing units = 24 |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:34:53+00:00 | Q18071028 | 000113889-01 | Paula | Erwin | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622111 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 07102017 | J9299 | INJECTION, NIVOLUMAB | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9299: 2880 Opdivo: 240 mg IV Day 1 q 14 days x 12 cycles (12 treatments).  Total billing units = 2880 |  |  |  |  | 0 |
| 07052017 | 2017-07-05T08:41:53+00:00 |  | 000010325-01 | JAUNITA | ROUSH | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 07102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07172017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705036 | S32810K, S82892F | Oth fx l low leg, subs for opn fx type 3A/B/C w routn heal | ICD10 | 07102017 | 99214, 73610, 72170, 72190 | PELVIS, COMPLETE, MIN 3 VIEWS | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 63, 63, 63, 63 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T13:43:58+00:00 | Q18804179 | 000062758-01 | DONALD | HAFTMAN | COLS OPHTHALMOLOGY ASSOC | 936907 | CHARLES J | HICKEY | 1487610960 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07072017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710001 | H468 | Other optic neuritis | ICD10 | 07102017 | 70553, 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T08:48:57+00:00 |  | 000083063-01 | Rosemary | Ziegler | KNOX COMMUNITY HSP PHYS | 904052 | GANGARAM | RASA | 1982716379 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07102017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07102017 | 08102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710012 | V4502 | AUTOMATIC IMPLANTABLE CARDIAC DEFIBRILLATOR IN SITU | ICD10 | 07102017 | 33218, 33264, 33225, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T09:59:30+00:00 | Q18786261 | 000091409-01 | Jan | Neher | SPRINGFIELD CTR FOR FAM | 933435 | LINDSEY M | MILLER | 1912290743 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07072017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710017 | M545 | Low back pain | ICD10 | 07102017 | 72148, 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T11:31:59+00:00 | Q18800529 | 000115649-01 | CHRISTINE | TAULBEE | ONCOLOGY HEMATOLOGY CARE | 921848 | BENJAMIN T | HERMS | 1730218876 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07102017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 01022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710024 | C9002 | Multiple myeloma in relapse | ICD10 | 07102017 | J9041, J8540 | DEXAMETHASONE, ORAL, 0.25 MG | HCPCS | 320, 2560 | 320, 2560 | Approved, Approved | 181, 181 | HCPCS | HC | J9041: 320 Bortezomib 1.3 mg/m2  IV  days 1  4  8  11  every 21 days  4 cycles; J8540: 2560 Dexamethasone 20 mg  PO  days 1  2  4  5  8  9  11  12  every 21 days  4 cycles |  |  |  |  | 0 |
| 07062017 | 2017-07-06T15:51:45+00:00 | Q18801886 | 000096741-01 | Allan | Maxwell | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07102017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07072017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710025 | T827XXA | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, init | ICD10 | 07102017 | 33233 | REMOVAL OF PERMANENT PACEMAKER; | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T15:50:48+00:00 | Q18799098 | 000036641-01 | BETTY | LOVETT | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 08052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710032 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 07102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T07:52:12+00:00 | Q18808433 | 000032405-01 | EMILEE | CLARK | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | EPI | 937837 | 1912006719 | EPI | 1912006719 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | EPI | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710041 | R072 | Precordial pain | ICD10 | 07102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T13:36:30+00:00 | Q18811962 | 000048832-01 | WAYNE | EVANS | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07022017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710060 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07102017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T08:53:40+00:00 | Q18806980 | 000034457-01 | LEOTA | BANFIELD GEYER | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 07102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07102017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710091 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 07102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T06:28:00+00:00 |  | 000011802-01 | LLOYD | DEAN | HEALTHY ALLIANCE LLC | 929998 | ANTHONY J | BRUNORI | 1134479942 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 07102017 | Denied | MediGold Medical Only | Fax | Administrative Denial | Outpatient | 07102017 | 07112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170707102 | M25512, M25552, M79652 | Pain in left thigh | ICD10 | 07102017 | R0070, Q0092, 73030, 73060, 73550, 73502 | X-RAY EXAM HIP UNI 2-3 VIEWS | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | , , , , ,  | 0, 0, 0, 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
