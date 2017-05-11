Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-04
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
| 05032017 | 2017-05-03T11:47:01+00:00 |  | 000067133-01 | ROBIN | MILLER | ALLIANCE PHYSICIANS INC | 902624 | DAVID L | SCHUMACHER | 1336132547 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 05042017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 05302017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503293 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 05042017 | 43860 | REV GASTROJEJ. ANAST WO VAGOTOMY | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Authorization Fax to Provider & Approval Letter  manually faxed via Rightfax and Saved to Attached Documents |  |  |  |  | 0 |
| 05032017 | 2017-05-03T08:34:39+00:00 | Q18287329 | 000086093-01 | Merrill | Mellott Jr | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04272017 | 05272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504030 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T07:03:28+00:00 | Q18292757 | 000044591-01 | ZELMA | CARTER | ONCOLOGY HEMATOLOGY CARE | 931669 | ROBERT B | BARRIGER | 1740448240 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504037 | C770 | Sec and unsp malig neoplasm of nodes of head, face and neck | ICD10 | 05042017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T13:32:25+00:00 | Q18331381 | 000048674-01 | GILBERT | BYERS | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504060 | C4322 | Malignant melanoma of left ear and external auricular canal | ICD10 | 05042017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T15:13:13+00:00 | Q18333810 | 000064574-01 | LOIS | EWERS | DAYTON SPRINGFIELD CARDI | 900732 | MOHAMMAD A | KABIR | 1801891213 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504070 | R072 | Precordial pain | ICD10 | 05042017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T13:08:35+00:00 | Q18342835 | 000069339-01 | JOAN | NEFF | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504077 | M25562 | Pain in left knee | ICD10 | 05042017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T16:15:54+00:00 | Q18335016 | 000087725-01 | Roberta | Welch | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | ORTHO ASSOC OF ZANESVILL | 900257 | 1942292388 | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 1942292388 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 05042017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504086 | M25512 | Pain in left shoulder | ICD10 | 05042017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T06:48:32+00:00 | Q18336105 | 000044319-01 | CHARLOTTE | WALKER | LICKING MEM HLTH PROF | 933261 | PENG E | WANG | 1720375587 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504088 | R079 | Chest pain, unspecified | ICD10 | 05042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T07:43:36+00:00 | Q18336507 | 000108361-01 | Mary | Salamay | OSU FAMILY PRACTICE SVCS | 913995 | ANTHONY | CASEY | 1538377197 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504097 | R590 | Localized enlarged lymph nodes | ICD10 | 05042017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T08:04:48+00:00 | Q18336647 | 000045979-01 | LEWIS | FENTON | OHIO ENT & ALLERGY PHYSI | 934941 | EVAN J | TOBIN | 1588636989 | OHIO ENT & ALLERGY PHYSI | 938541 | 1750330551 | OHIO ENT & ALLERGY PHYSICIANS | 1750330551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO ENT & ALLERGY PHYSICIANS | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504100 | J329 | Chronic sinusitis, unspecified | ICD10 | 05042017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T08:34:33+00:00 | Q18337069 | 000085165-01 | Kenneth | Haddox | PICKAWAY HEALTH SERVICES | 935078 | VERNON G | BOLENDER | 1255322814 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504108 | Z9181 | History of falling | ICD10 | 05042017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T08:42:30+00:00 | Q18337225 | 000007288-01 | RICHARD | GIVEN | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504110 | C61 | Malignant neoplasm of prostate | ICD10 | 05042017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T08:58:40+00:00 | Q18337499 | 000032615-01 | BETTY | MITIAS | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504112 | K436 | Other and unsp ventral hernia with obstruction, w/o gangrene | ICD10 | 05042017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T09:33:21+00:00 | Q18338216 | 000064697-01 | EDWARD | HUMMEL | MOUNT CARMEL HLTH PRVDRS | 937027 | ANDREW P | KLAUS | 1376545319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504118 | R0609 | Other forms of dyspnea | ICD10 | 05042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T10:20:32+00:00 | Q18339432 | 000028723-01 | GLADYS | CARR | COPC CENTRAL OHIO PRIMAR | 932486 | MAGDALENA | TEODORESCU | 1750674693 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504127 | K7689 | Other specified diseases of liver | ICD10 | 05042017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T11:25:32+00:00 | Q18340819 | 000115262-01 | Robert | Morgan | MOUNT CARMEL HLTH SYS | 904691 | STEVEN C | BOYSEL | 1811981723 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504133 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 05042017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T11:59:17+00:00 | Q18341460 | 000095824-01 | David | Baisden | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504134 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 05042017 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:07:44+00:00 | Q18341612 | 000112464-01 | Ellen | Reef | CLINTONVILLE FOOT & ANKL | 934267 | COREY J | GRIFFITH | 1669419826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504135 | M76812 | Anterior tibial syndrome, left leg | ICD10 | 05042017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:12:10+00:00 | Q18341692 | 000084173-01 | Raymond | Grothjan | THE UROLOGY GROUP | 921766 | PETER R | FRIED | 1851384671 | THE UROLOGY GROUP | 921803 | 1568404846 | JEFFREY I GRASS | 1275574535 | Cardiology (HH) | OP CARD | Pre-Service | PRE | JEFFREY I | GRASS | 05042017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504136 | C61 | Malignant neoplasm of prostate | ICD10 | 05042017 | G0340 | IMAGE-GUIDED ROBOTIC LINEAR ACCELERATOR-BASED STEROTACTIC RADIOSURGERY, | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:23:24+00:00 | Q18341912 | 000014172-01 | FLOYD | SOUSLIN | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504137 | C160 | Malignant neoplasm of cardia | ICD10 | 05042017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:37:25+00:00 | Q18341997 | 000028332-01 | LAWRENCE | BEERS | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504138 | I25118 | Athscl heart disease of native cor art w oth ang pctrs | ICD10 | 05042017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:38:00+00:00 | Q18342076 | 000088165-01 | Marion | Hunter | MERCY HEALTH PHYSICIANS | 905181 | CHALLA | AJIT | 1598778805 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05042017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504139 | R51 | Headache | ICD10 | 05042017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:39:33+00:00 | Q18342240 | 000100164-01 | Lonnie | Hubbard | MERCY HEALTH PHYSICIANS | 921190 | FRANCIS | VALENTIN | 1083613145 | PROSCAN IMAGING EASTGATE | 939998 | 1861482911 | PROSCAN IMAGING EASTGATE | 1861482911 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING EASTGATE | 05042017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504140 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 05042017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:42:33+00:00 | Q18342269 | 000116534-01 | Raymond | Wanstrath | THE CHRIST HSP MED ASSOC | 944411 | JOSEPH R | DAGENBACH | 1205838109 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 05042017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504141 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 05042017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T13:00:17+00:00 | Q18342585 | 000051773-01 | NANCY | THOMASON | AMERICAN HLTH NETWORK OF | 909945 | MICHAEL J | SIMEK | 1407077472 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504142 | M5416 | Radiculopathy, lumbar region | ICD10 | 05042017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T08:46:31+00:00 |  | 000076808-01 | Elmer | Blankenship | COSHOCTON COUNTY MEM HSP | 910440 | ELAINE A | BEED | 1326143777 | OSU OTOLARYNGOLOGISTS LL | 907810 | 1861449407 | ENVER OZER | 1689626285 | Out of Network Services | OONS | Pre-Service | PRE | ENVER | OZER | 05042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05052017 | 08052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504148 | C490 | Malig neoplm of conn and soft tissue of head, face and neck | ICD10 | 05042017 | 99218 | INITIAL OBSERVATION CARE, PER DAY, FOR THE EVALUATION AND MANAGEMENT O | CPT | 1 | 1 | Approved | 93 | CPT | C4 | P/c to Dr. Beeds office sw Sue let her know I need the CPT code the Surgical consult.  she will have to look it up and call me back., R/VM from Sue F. she said the CPT code we need is 66948.  She can be reached at 740-623-4442 with any other questions., No code of 66948 in system so I used 99218, Called Dr Beed's office to find a phone # or written POA  Stated Member is in Lafayette Pointe Nursing & Rehabilitation Center, Authorization Fax to Provider & Approval Letter  manually faxed via Rightfax and Saved to Attached Documents, Received a call from Chrissy at the James Cancer Institute (Phone 614-293-9254  Fax# 614-293-8762) requesting auth be faxed to them as well  Auth was faxed Confirmed by phone she received them |  |  |  |  | 0 |
| 05042017 | 2017-05-04T12:21:35+00:00 | Q17917374 | 000070218-01 | Leo | Rhodes | ADENA MEDICAL GROUP LLC | 902418 | JOHN J | KELLER | 1700849114 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03092017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504176 | I255 | Ischemic cardiomyopathy | ICD10 | 05042017 | 33263, C1721 | CARDIOVERTER-DEFIBRILLATOR, DUAL CHAMBER (IMPLANTABLE) | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:05:10+00:00 |  | 000049337-01 | EDWARD | HORES | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504185 | I255 | Ischemic cardiomyopathy | ICD10 | 05042017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:10:01+00:00 | Q18350826 | 000104483-01 | Wilhelmina | Huber | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | ALLIANCE PHYSICIANS INC | 902713 | 1437125572 | ALLIANCE PHYSICIANS INC | 1437125572 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ALLIANCE PHYSICIANS INC | 05042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170504189 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 05042017 | J9025 | INJECTION, AZACITIDINE, 1 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:40:36+00:00 | Q18350185 | 000115479-01 | Lucille | Yerian | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Initial Review | INIT |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05042017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170504191 | D701 | Agranulocytosis secondary to cancer chemotherapy | ICD10 | 05042017 | Q5101 | INJ FILGRASTIM G-CSF BIOSIM | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T16:47:01+00:00 | Q18355819 | 000039152-01 | JAMES | TREADWAY | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CENTRAL OH UROLOGY GROUP INC | 05042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170504206 | C61 | Malignant neoplasm of prostate | ICD10 | 05042017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
