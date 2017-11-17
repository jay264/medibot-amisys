Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-14
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
| 11112017 | 2017-11-11T09:36:41+00:00 | Q19755836 | 000073719-01 | Donna | Welcome | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11282017 | 12282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114012 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 11142017 | 71260, 74177, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T12:43:30+00:00 | Q19761804 | 000021588-01 | RUTH | BAGLEY | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12052017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114013 | C8208 | Follicular lymphoma grade I, lymph nodes of multiple sites | ICD10 | 11142017 | 71260, 74177, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T13:40:40+00:00 | Q19762956 | 000009802-01 | PHYLLIS | CLAY | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114016 | I481 | Persistent atrial fibrillation | ICD10 | 11142017 | 71275, 93656, 93655, 93622, 93623, 93613, 93662 | INTRACARDIAC ECG (ICE) | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11082017 | 2017-11-08T09:19:53+00:00 | Q19726647 | 000005570-01 | DELORES | SMITH | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114021 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 11142017 | 74160, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T07:01:41+00:00 | Q19735961 | 000101690-01 | Robert | Smeltzer | PRIME HEALTHCARE FOUNDAT | 902431 | YING H | CHEN | 1629052782 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11142017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114022 | M48061 | M48061 | ICD10 | 11142017 | 72131, 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T12:55:32+00:00 | Q19741998 | 000100040-01 | DAVID | SHULKO | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11142017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114025 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 11142017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T08:52:53+00:00 | Q19757375 | 000040881-01 | BRUCE | JOSEPH | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114044 | R310 | Gross hematuria | ICD10 | 11142017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11102017 | 2017-11-10T14:14:00+00:00 | Q19753805 | 000102506-01 | Connie | Walker | RIVERVIEW ENT CTR OF CEN | 935824 | ROBERTO J | CASTELLON | 1073599973 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11142017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114050 | R221 | Localized swelling, mass and lump, neck | ICD10 | 11142017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T11:59:00+00:00 | Q19742820 | 000004007-01 | JOE | FIELDS | MADISON FAMILY HEALTH | 904568 | WILLIAM P | GIANAKOPOULOS | 1841239142 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114066 | C61 | Malignant neoplasm of prostate | ICD10 | 11142017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 11092017 | 2017-11-09T08:40:00+00:00 | Q19737170 | 000050211-01 | RICHARD | MATHIAS | CHASE, DANIEL W | 935922 | DANIEL W | CHASE | 1063483857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114086 | J329 | Chronic sinusitis, unspecified | ICD10 | 11142017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11112017 | 2017-11-11T07:47:40+00:00 | Q19755746 | 000060296-01 | RONALD | STINE | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114097 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11142017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11112017 | 2017-11-11T10:06:20+00:00 | Q19755876 | 000059657-01 | SHIRLEY | BRADY | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12052017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114111 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 11142017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T10:02:00+00:00 | Q19758743 | 000118924-01 | Eugene | Martin | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114116 | R310 | Gross hematuria | ICD10 | 11142017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T10:21:49+00:00 | Q19759200 | 000047900-01 | LAWRENCE | KNOX | FRANKLIN CLINIC | 936033 | KIRK M | TUCKER | 1093734501 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114120 | R2681 | Unsteadiness on feet | ICD10 | 11142017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T12:43:10+00:00 | Q19761835 | 000115168-01 | Conrad | Sanford | LICKING MEM HLTH PROF | 941939 | EVEN F | WANG | 1871813691 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11142017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114130 | M5416 | Radiculopathy, lumbar region | ICD10 | 11142017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T13:40:41+00:00 | Q19762934 | 000052256-01 | Robert | Dawes | MOUNT CARMEL HLTH PRVDRS | 932449 | TYLER B | ANDERSON | 1720240633 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114139 | R05 | Cough | ICD10 | 11142017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11022017 | 2017-11-02T13:34:30+00:00 |  | 000116547-01 | Rosemarie | Dorl | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | TACTILE SYSTEMS TECHNOLOGY | 914949 | 1427131424 | TACTILE SYSTEMS TECHNOLOGY | 1427131424 | DME | DME | Pre-Service | PRE |  | TACTILE SYSTEMS TECHNOLOGY | 11142017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103181 | I890 | Lymphedema, not elsewhere classified | ICD10 | 11142017 | E0652, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC | Received request for Flextouch System with an out of network provider that would like to initiate a single case agreement.  Pc to Cornerstone spoke with Elena inquired about the E0652 Compression device for lympadema  Elena stated that they do not carry the E0652  she suggested that I contact Fidelity Medical as they carry the E0562 and are in Network.  Per Medigold provider site Fidelity is not in network.  PC to Fidelity 1800 443-7377 vmm left with request for call back., Received vmm back from Doug with Fidelity he stated that they re not in-network  but would provide the E0652 to Cornerstone., Staffed case with the Medical Director   Dr. Wise and Melissa  informed both that the mbr meet LCD guidelines for BLE lymphedema that extends proximally into her trunk.  Documentation supports that the mbr underwent a 4 week trial  that failed as outline in the LCD guidelines (L33829).  Medical Director ok'd that request be forwarded to contracts for single case agreement. |  |  |  |  | 0 |
| 11032017 | 2017-11-03T14:32:55+00:00 |  | 000079396-01 | Sharon | Teal | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Part B Therapy | OP THER | Pre-Service | PRE |  | ZANESVILLE HEALTH AND REHABILITATION | 11142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 11012017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171106123 | R1312 | Dysphagia, oropharyngeal phase | ICD10 | 11142017 | 92526, 92610 | EVALUATE SWALLOWING FUNCTION | CPT | 1, 1 | 1, 1 | Approved, Approved | 45, 45 | CPT | C4 |  |  |  |  |  | 0 |
