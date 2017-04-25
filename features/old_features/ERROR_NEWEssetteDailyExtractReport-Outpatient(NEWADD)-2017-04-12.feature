Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-12
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
| 04072017 | 2017-04-07T16:20:56+00:00 |  | 000057319-01 | DOLORES | MCALEE | MOUNT CARMEL HLTH PRVDRS | 905814 | GINA M | BACHMANN | 1801887989 | THE GRAND OF DUBLIN | 946137 | 1346632247 | THE GRAND OF DUBLIN | 1346632247 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE GRAND OF DUBLIN | 04122017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170410006 | M6281 | Muscle weakness (generalized) | ICD10 | 04122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03012017 | 2017-03-01T10:05:02+00:00 |  | 000007520-01 | MICHAEL | MEADOWS | COPC CENTRAL OHIO PRIMAR | 943206 | STEVEN | BOBULA | 1700097565 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Hyperbaric Oxygen | HO | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04122017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170302003 | M86662 | Other chronic osteomyelitis, left tibia and fibula | ICD10 | 04122017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 10, 10 | 10, 10 | Approved, Approved | 15, 15 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of appeal. Case presented to Dr. Greg Wise- Medical Director. Authorization was approved on 4/12/2017 @ 10:53:20. |  |  |  |  | 0 |
| 03302017 | 2017-03-30T15:26:49+00:00 |  | 000006876-01 | HERSCHEL | HAINES JR | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | PREMIER INTERNAL MEDICINE ASSOCIATES | 900340 | 0 | PREMIER INTERNAL MEDICINE ASSOCIATES | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | PREMIER INTERNAL MEDICINE ASSOCIATES | 04122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03012017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403095 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 04122017 | 99202 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 93 | CPT | C4 | RECEIVED DATE OF SERVICE CORRECTION. |  |  |  |  | 0 |
| 04102017 | 2017-04-10T09:29:19+00:00 | Q18159966 | 000107291-01 | LARRY | VANFOSSEN | GENESIS MEDICAL GRP LLC | 924606 | DEANA J | BATROSS | 1366534547 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411034 | R079 | Chest pain, unspecified | ICD10 | 04122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T09:38:34+00:00 | Q18160175 | 000110954-01 | Ruth | Mault | ALLIANCE PHYSICIANS INC | 931507 | RICHARD J | GORMAN JR | 1235475476 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BEAVERCREEK MEDICAL CENTER | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411036 | M545 | Low back pain | ICD10 | 04122017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T10:31:06+00:00 | Q18161191 | 000091456-01 | Sheila | Flack | MERCY HEALTH PHYSICIANS | 911175 | KENNETH L | REED | 1942282736 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411100 | K7460 | Unspecified cirrhosis of liver | ICD10 | 04122017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T10:45:56+00:00 | Q18141306 | 000062509-01 | FRANK | TANZILLO | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412003 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 04122017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T08:59:23+00:00 | Q18170192 | 000110670-01 | Jeffery | Hoskinson | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412004 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 04122017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T07:27:44+00:00 | Q18169034 | 000042942-01 | Lisa | Lorenz | ORTHO & NEURO CONSULTS I | 936074 | MARTIN T | TAYLOR | 1043294481 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412010 | G809 | Cerebral palsy, unspecified | ICD10 | 04122017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T08:49:49+00:00 | Q18170095 | 000005007-01 | ROBERT | BODE | COPC CENTRAL OHIO PRIMAR | 935551 | DAVID D | BURNSIDES | 1306820865 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04122017 | Approved | THE TIMKEN COMPANY | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412018 | M79605 | Pain in left leg | ICD10 | 04122017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T08:57:18+00:00 | Q18170207 | 000078925-01 | Charles | Kramer Jr. | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412019 | C61 | Malignant neoplasm of prostate | ICD10 | 04122017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T08:12:12+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU INTERNAL MED LLC | 930475 | ANNE M | NOONAN | 1477887479 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04112017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412023 | C221, C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 04122017 | 99201, 99202, 99203, 99204, 99205, G0463, 99211, 99212, 99213, 99214, 99215, 86301, 85025, 82565, 85025, 82565, 84295, 84132, 82435, 82374, 82947, 84520, 82247, 82248, 84075, 84450, 84460, 82378, 82105 | ALPHA-FETOPROTEIN; | CPT | 1, 1, 1, 1, 1, 12, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 1, 1, 1, 1, 1, 12, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184, 184 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T10:15:45+00:00 | Q18171948 | 000033005-01 | ROZELLA | PACK | JOHN R LINSCOTT MD INC | 937106 | JOSEPH C | LINSCOTT | 1811993801 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412025 | R42 | Dizziness and giddiness | ICD10 | 04122017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T10:20:42+00:00 | Q18172085 | 000046641-01 | Robert | Wells | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04202017 | 05202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412026 | R319 | Hematuria, unspecified | ICD10 | 04122017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T10:31:15+00:00 | Q18172349 | 000068638-01 | SHIRLEY | DREW | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412031 | R930 | Abnormal findings on dx imaging of skull and head, NEC | ICD10 | 04122017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T10:43:22+00:00 | Q18172541 | 000031275-01 | JOHN | FONDRIEST | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04122017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412035 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 04122017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T10:42:39+00:00 | Q18172589 | 000087734-01 | Marvin | Cochran | MADISON FAMILY HEALTH | 937353 | DAVID R | RALSTON | 1164408472 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412036 | Z8701 | Personal history of pneumonia (recurrent) | ICD10 | 04122017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T11:09:00+00:00 | Q18173143 | 000111123-01 | Ann | Beatty | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412042 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04122017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T14:28:15+00:00 |  | 000068535-01 | MARILYN | WINKFIELD | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 04272017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412044 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 04122017 | G0463, 88305, 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T11:49:45+00:00 | Q18173882 | 000035135-01 | Charles | Harris | MOUNT CARMEL HLTH | 917307 | CHARLES W | LONGWELL III | 1740406883 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412049 | R202 | Paresthesia of skin | ICD10 | 04122017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T12:36:42+00:00 | Q18174754 | 000111073-01 | Kim | Johnson | MOUNT CARMEL HLTH PRVDRS | 918587 | STEPHANIE T | FLOWERS | 1982708269 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412058 | G950 | Syringomyelia and syringobulbia | ICD10 | 04122017 | 70552 | MRI BRAIN; INCLUDING BRAIN STEM; WITH CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T12:42:26+00:00 | Q18174767 | 000044351-01 | KENNETH | WILSON | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412059 | M5416 | Radiculopathy, lumbar region | ICD10 | 04122017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T14:17:21+00:00 | Q18146347 | 000002943-01 | DONALD | SMITH JR | EKG INTERPRETATIONS INC | 935595 | RAJIV S | HEDE | 1922093004 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412077 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04122017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T07:40:01+00:00 | Q18123442 | 000056442-01 | MARILYN | HESTON | FAIRFIELD HLTHCARE PROFS | 916056 | ANDREW R | TWEHUES | 1346457355 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412099 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 04122017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T11:30:20+00:00 |  | 000063213-01 | DENNIS | WAUGH | OSU INTERNAL MED LLC | 935771 | NITIN Y | BHATT | 1801809256 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412104 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 04122017 | 31624, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T11:04:51+00:00 |  | 000054920-01 | HARRY | HARRAH | MERCY HEALTH PHYSICIANS | 921195 | LYNNE E | WAGONER | 1831147099 | ROCHE HEALTH SOLUTIONS INC | 928907 | 1083880447 | ROCHE HEALTH SOLUTIONS INC | 1083880447 | DME | DME | Pre-Service | PRE |  | ROCHE HEALTH SOLUTIONS INC | 04122017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 04122017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170410161 | Z952 | Presence of prosthetic heart valve | ICD10 | 04122017 | G0248, G0249 | PROVISION OF TEST MATERIALS AND EQUIPMENT FOR HOME INR MONITORING TO PAT | HCPCS | 0, 0 | 1, 12 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04102017 | 2017-04-10T13:50:52+00:00 |  | 000007638-01 | DAVID | GUMMERE | COLUMBUS PODIATRY & SURG | 918683 | SARAH M | ABSHIER | 1578708129 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04122017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04122017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170410167 | I2510, I739, L97521 | Non-prs chronic ulcer oth prt l foot limited to brkdwn skin | ICD10 | 04122017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
