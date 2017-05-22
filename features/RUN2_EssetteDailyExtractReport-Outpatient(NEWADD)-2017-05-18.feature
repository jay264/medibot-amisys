Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-18
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
| 10102016 | 2016-10-10T13:13:58+00:00 | Q16829925 | 000049165-01 | BECKEY | RIDENOUR | NEWARK RADIATION ONCOLOG | 937251 | MARK | BECKER | 1053312462 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182016 | 01162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518001 | C7801 | Secondary malignant neoplasm of right lung | ICD10 | 05182017 | 77263, 77372 | RADIATION TREATMENT DELIVERY STEROTACTIC RADIOSURGERY LINEAR ACCELERATOR | CPT | 1, 1 | 1, 1 | Approved, Approved | 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T15:21:53+00:00 | Q18441635 | 000075261-01 | John | Buxton | KNOX COMMUNITY HSP PHYS | 946274 | LAURA | EICHENLAUB | 1063870715 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 05182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518007 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 05182017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T11:17:56+00:00 | Q18441881 | 000088615-01 | Ruby | Myers | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 08142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518008 | C482 | Malignant neoplasm of peritoneum, unspecified | ICD10 | 05182017 | J9267, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1, 16 | 1, 16 | Approved, Approved | 91, 91 | HCPCS | HC | J9267: 560 Paclitaxel 280 mg IV every 3 weeks x 2 cycles (2 treatments).  Total billing units = 560; J9045: 16 CARBOPLATIN 355 mg IV every 3 weeks x 2 cycles ( 2 treatments ).  Total billing units = 16 |  |  |  |  | 0 |
| 05152017 | 2017-05-15T08:47:38+00:00 | Q18423269 | 000074824-01 | Larry | Howell | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518010 | R260 | Ataxic gait | ICD10 | 05182017 | 72146, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T06:53:12+00:00 | Q18443654 | 000086696-01 | Sharon | Doyle | COLS ARTHRITIS CENTER | 934748 | KEVIN D | SCHLESSEL | 1063490845 | COLS ARTHRITIS CENTER | 938963 | 1952433898 | COLS ARTHRITIS CENTER | 1952433898 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COLS ARTHRITIS CENTER | 05182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518011 | M25531 | Pain in right wrist | ICD10 | 05182017 | 73221, 73218 | MRI UPPER EXTREMITY W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T10:12:19+00:00 | Q18446589 | 000079100-01 | Larry | Griffith | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518012 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 05182017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T10:13:19+00:00 | Q18446491 | 000002896-01 | LAWRENCE | SHOCKLEY | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518014 | D693 | Immune thrombocytopenic purpura | ICD10 | 05182017 | 70553, 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T11:57:02+00:00 | Q18448774 | 000011759-01 | GAYLORD | JOHNSON | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05232017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518015 | C182 | Malignant neoplasm of ascending colon | ICD10 | 05182017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:13:15+00:00 | Q18449095 | 000005062-01 | DOROTHY | SUHAYDA | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518018 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05182017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:14:43+00:00 | Q18449151 | 000100580-01 | Harriet | Eagle | ALLIANCE PHYSICIANS INC | 900999 | DAVID S | PAGE | 1407834153 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 05182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518020 | Z87440 | Personal history of urinary (tract) infections | ICD10 | 05182017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:53:30+00:00 | Q18449904 | 000096447-01 | Elizabeth | Drake | COPC CENTRAL OHIO PRIMAR | 905437 | AMANDA E | GORDON | 1073711602 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518021 | K625 | Hemorrhage of anus and rectum | ICD10 | 05182017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T13:15:56+00:00 | Q18450315 | 000027153-01 | PATRICIA | JOHNSTON | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518024 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T13:21:21+00:00 | Q18450327 | 000108518-01 | Diane | Clonch | NEWARK RADIATION ONCOLOG | 936034 | CHUCK C | CHO | 1528069945 | LANCASTER RADIATION ONCO | 938347 | 1205837663 | LANCASTER RADIATION ONCOLOGY | 1205837663 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LANCASTER RADIATION ONCOLOGY | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518025 | C541 | Malignant neoplasm of endometrium | ICD10 | 05182017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:05:04+00:00 | Q18448892 | 000093504-01 | Nancy | Tabor | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05202017 | 06192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518030 | M542 | Cervicalgia | ICD10 | 05182017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:01:06+00:00 | Q18448902 | 000071995-01 | Ronald | Marks | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518031 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 05182017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T10:10:32+00:00 | Q18446566 | 000102147-01 | Jacqulyn | Rinehart | OH GASTRO GRP INC | 904567 | RAGHURAM P | REDDY | 1699752543 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518033 | R1011 | Right upper quadrant pain | ICD10 | 05182017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T10:33:23+00:00 | Q18447085 | 000103549-01 | Billie | Corder | MOUNT CARMEL HLTH PRVDRS | 917545 | BRIAN J | HAMBURG | 1437270709 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518037 | R911 | Solitary pulmonary nodule | ICD10 | 05182017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T12:31:24+00:00 | Q18447124 | 000108387-01 | Gerald | Wallace | MERCY HEALTH PHYSICIANS | 921779 | SAMIR | ATAYA | 1194766899 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 05182017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518038 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 05182017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T10:38:50+00:00 | Q18447248 | 000034707-01 | MARY JANE | SKINNER | ORTHOPEDIC ONE INC | 927311 | DAVID M | WITTER | 1518992510 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518039 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 05182017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T11:22:47+00:00 | Q18448185 | 000099145-01 | Linda | Snyder | MERCY HEALTH PHYSICIANS | 904312 | JEFFREY J | BOWERS | 1013958552 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 05182017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518047 | R1030 | Lower abdominal pain, unspecified | ICD10 | 05182017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T09:50:46+00:00 | Q18446146 | 000094993-01 | Marsha | Dixon | COPC CENTRAL OHIO PRIMAR | 940107 | JAMES A | NATALIE III | 1053535179 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518074 | M5416 | Radiculopathy, lumbar region | ICD10 | 05182017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T12:13:07+00:00 | Q18429503 | 000073926-01 | Jacqueline | Vance | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518088 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05182017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T09:59:35+00:00 | Q18407340 | 000066001-01 | PHYLLIS | MILLER | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518099 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 05182017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T10:44:05+00:00 | Q18422113 | 000110336-01 | Elaine | Shawhan | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518113 | I471 | Supraventricular tachycardia | ICD10 | 05182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T05:50:50+00:00 | Q18443560 | 000045547-01 | RONALD | PERKINS | CEN OH PRIMARY CARE SPEC | 936203 | NADINE E | COX | 1982620886 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518120 | Z87891 | Personal history of nicotine dependence | ICD10 | 05182017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T09:27:54+00:00 | Q18434933 | 000075694-01 | James | Marsh | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518138 | C61 | Malignant neoplasm of prostate | ICD10 | 05182017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T08:12:49+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05182017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05242017 | 06242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518158 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05182017 | 77075, 71020, 93306, 33660, 94010, 94060, 94240, 94260, 94720, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T16:40:25+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Part B Therapy | OP THER | Pre-Service | PRE |  | ZANESVILLE HEALTH AND REHABILITATION | 05182017 | Interim Approval | MediGold Southeast OH Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170512123 | G309, I214, M545 | Low back pain | ICD10 | 05182017 | 97161, 97116, 97112, 97110, 97165, 97530, 97110 | THERAPEUTIC PROCEDURE, ONE OR MORE AREAS, | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | , , , , , ,  | 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Spoke with Tracy at the SNF  asked about the contract that was sent on friday 5/12/16 but not rec. back yet. Tracy states it had to be sent to the Administrator for review and they had some questions about the contract  directed them to contact JP and states she will do that. |  |  |  |  | 0 |
