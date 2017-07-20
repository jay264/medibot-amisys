Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-17
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-17
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
| 01312017 | 2017-01-31T09:59:43+00:00 |  | 000081734-01 | James | Jack | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02252017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201029 | C6931 | Malignant neoplasm of right choroid | ICD10 | 07172017 | 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:20:07+00:00 | Q18630772 | 000005768-01 | JOHN | LEWIS | MOUNT CARMEL HLTH PRVDRS | 917932 | DANIEL G | GORBETT JR | 1487816518 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616045 | R0602 | Shortness of breath | ICD10 | 07172017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T18:03:41+00:00 | Q18660933 | 000070176-01 | Sue | Collins | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 12122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616052 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 07172017 | J1442 | INJ, FILGRASTIM G-CSF 1MCG | HCPCS | 3360 | 3360 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T09:22:01+00:00 |  | 000053741-01 | WILLIAM | SHULL | CARDIOVASCULAR SPEC LLC | 925351 | MOBUSHER | MAHMUD | 1558466227 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 07172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07072017 | 08072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707120 | I480 | Paroxysmal atrial fibrillation | ICD10 | 07172017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T10:15:12+00:00 |  | 000039181-01 | KENNETH | SIDERS | OSU INTERNAL MED LLC | 914553 | SINDHU B | MUKKU | 1073799045 | OSU INTERNAL MED LLC | 914553 | 1740231448 | SINDHU B MUKKU | 1073799045 | Out of Network Services | OONS | Pre-Service | PRE | SINDHU B | MUKKU | 07172017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08182017 | 09182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707130 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07172017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T12:15:37+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 07242017 | 09242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710119 | J439 | Emphysema, unspecified | ICD10 | 07172017 | 71020, 93307, 93306, 93320, 94010, 94720, 36600, 94620, 99245, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, G0480, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86832, 86833, 86828, G0463, 94060 | BRONCHOSPASM EVALUATION | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T10:27:29+00:00 |  | 000099528-01 | Larry | Conrad | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 07172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712138 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 07172017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, G0463, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T14:01:13+00:00 |  | 000097683-01 | Carolyn | Paxson | MOUNT CARMEL HLTH PRVDRS | 935177 | LOWELL ARICK | FORREST | 1912918616 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07172017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712168 | J385 | Laryngeal spasm | ICD10 | 07172017 | 99211, 99212, 99213, 99214, 99215, J0585, 64617, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T14:42:08+00:00 |  | 000100012-01 | James | Scott | MT AUBURN NEPHROLOGY INC | 928857 | IAN A | MEYER | 1083836043 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07172017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 07172017 | 08172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714119 | N186 | End stage renal disease | ICD10 | 07172017 | 90999, 90935 | HEMODIALYSIS PROCED W/SINGL EVAL | CPT | 12, 12 | 12, 12 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T10:51:45+00:00 | Q18864387 | 000036631-01 | MARY | TAYLOR | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717014 | C541 | Malignant neoplasm of endometrium | ICD10 | 07172017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T13:13:02+00:00 | Q18866785 | 000030990-01 | BURTON | LANE | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717017 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07172017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T11:32:31+00:00 | Q18865164 | 000073770-01 | Nina | Huffer | ADENA MEDICAL GROUP LLC | 911234 | COLLINS N | OKOLIE | 1235331224 | ADENA HEALTH SYSTEMS | 938858 | 0 | ADENA HEALTH SYSTEMS | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA HEALTH SYSTEMS | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717023 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07172017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T09:47:05+00:00 | Q18831185 | 000081594-01 | Barbara | Shirkey | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717039 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 07172017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07132017 | 2017-07-13T14:08:35+00:00 | Q18857834 | 000095713-01 | JOHN | COOKE | NEUROLOGY DIAGNOSTICS IN | 901098 | JOEL | VANDERSLUIS | 1114922390 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 07172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717051 | I6782 | Cerebral ischemia | ICD10 | 07172017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T10:28:42+00:00 | Q18863947 | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 945440 | DAVID S | FELDMAN | 1386688711 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07172017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717083 | Z941 | Heart transplant status | ICD10 | 07172017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T08:32:33+00:00 | Q18861515 | 000116591-01 | LOUPCHE | PRCULOVSKI | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717096 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 07172017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T11:56:56+00:00 |  | 000083875-01 | Sharon | McMasters | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 07172017 | 07242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717122 | M7042 | Prepatellar bursitis, left knee | ICD10 | 07172017 | 99203, 99204, 73560, 20610 | ARTHROCENTESIS, MAJOR JOINT/BURSA | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 8, 8, 8, 8 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T16:07:03+00:00 |  | 000079256-01 | Ronald | Swisher | RAO, KALAPALA | 924317 | KALAPALA | RAO | 1730267030 | RAO, KALAPALA | 924317 | 1730267030 | KALAPALA RAO | 1730267030 | Out of Network Services | OONS | Pre-Service | PRE | KALAPALA | RAO | 07172017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Administrative Denial | Outpatient | 07172017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170620189 | R6889 | Other general symptoms and signs | ICD10 | 07172017 | 99204, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Requested clinical documentation with diagnostic codes, Retroactive requests for authorization cannot be processed  as services have already been rendered. |  |  |  |  | 0 |
| 07102017 | 2017-07-10T11:11:17+00:00 |  | 000076524-01 | Renee | Tackett | SCHWARTZ, DAVID P | 929957 | DAVID P | SCHWARTZ | 1942252218 | SCHWARTZ, DAVID P | 929957 | 1942252218 | DAVID P SCHWARTZ | 1942252218 | OP Behavioral Health | OP BH | Post-Service | POST | DAVID P | SCHWARTZ | 07172017 | Denied | MediGold Southwest OH Essential Care | Fax | Administrative Denial | Outpatient | 07172017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170710112 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 07172017 | 90834, 90837, 90832 | PSYTX PTAND/FAMILY 30 MINUTES | CPT | 0, 0, 0 | 1, 1, 1 | , ,  | 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
