Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-11
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
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03282017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 10112017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 88, 88, 88, 59, 59, 59, 59, 59, 59, 29, 0, 0, 0 | 88, 88, 88, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Void, Void, Void | 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218 | CPT | C4 | RECEIVED PHONE CALL 7/11/17 @ 09:44:23 FROM KIM PREECE RN W/OSU REHAB   REQUESTING DATE EXTENSION OF AUTH  MEMBER HAS USED 29/59 PT VISITS  AND 18/29 OT VISITS.  THERE IS NO OTHER CHANGE REQUESTED  JUST EXTENSION FOR MEMBER TO RECEIVE ALREADY AUTHORIZED VISITS.  AUTH EXTENDED TO 9/28/17., Provider requested an extended date of 1031207 by Kimberly Preece this was done for the therapy., Received call from Kim stating the auth was extended to 10/31 but they did not send a new fax showing updated dates.  Fax her a new approval. |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:08:41+00:00 | Q19503055 | 000044627-01 | DOUGLAS | DIERSING | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011057 | M47812 | Spondylosis w/o myelopathy or radiculopathy, cervical region | ICD10 | 10112017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:56:40+00:00 | Q19504067 | 000068520-01 | JOHN | REITZ | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011068 | N200 | Calculus of kidney | ICD10 | 10112017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T10:06:52+00:00 | Q19504489 | 000020758-01 | ROBERT | CHAMBERS | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011069 | C674 | Malignant neoplasm of posterior wall of bladder | ICD10 | 10112017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T11:24:06+00:00 | Q19506057 | 000110956-01 | Philip | Desalvo | GENESIS MEDICAL GRP LLC | 947539 | ARIANE | NEYOU | 1386854073 | GENESIS HLTHCARE SYSTEM | 904350 | 1598868655 | GENESIS HEALTHCARE SYSTEM 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM 1500 | 10112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011079 | R0600 | Dyspnea, unspecified | ICD10 | 10112017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T07:55:21+00:00 | Q19501895 | 000010167-01 | CHARLES | MYERS | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 12112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011140 | I200 | Unstable angina | ICD10 | 10112017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T07:58:53+00:00 | Q19501952 | 000100508-01 | Mary | Quinn | MOUNT CARMEL HLTH PRVDRS | 932450 | JOSHUA R | SILVERSTEIN | 1952587743 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011142 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10112017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T10:45:20+00:00 |  | 000081899-01 | John | Mcmichael Jr | MADDOCKS-CHRIS, KAMI J | 920315 | KAMI J | MADDOCKS-CHRIS | 1689698284 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10122017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171006143 | C8581 | Oth types of non-hodg lymph, nodes of head, face, and neck | ICD10 | 10112017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 87497, 82785, 82784, 88184, 80048, 82040, 84075, 84460, 84450, 82247, 84100, 83735, 83615, 84550, 85652, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T15:52:56+00:00 |  | 000022438-01 | SALLY | HESS | MOUNT CARMEL HLTH | 917307 | CHARLES W | LONGWELL III | 1740406883 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP REHAB | 10112017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 10112017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170811156 | G3184 | Mild cognitive impairment, so stated | ICD10 | 10112017 | 97166 | OT EVAL MOD COMPLEX 45 MIN | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Corrected CPT code of OT For Driving Eval is 97166, Letter is written in appropriate language with no abbreviations and is therefore approved., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09192017 | 2017-09-19T09:10:53+00:00 |  | 000115330-01 | DIANA | JOHNSON | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10022017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170919090 | S62102A, S7222XA | Displaced subtrochanteric fracture of left femur, init | ICD10 | 10112017 | 99214, 73510, 73550, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T08:59:20+00:00 |  | 000097196-01 | Richard | Kulp | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010090 | C321 | Malignant neoplasm of supraglottis | ICD10 | 10112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T10:32:18+00:00 |  | 000054393-01 | MARGARET | PARKER | PICKAWAY HEALTH SERVICES | 932751 | ANUPREET | KAUR | 1417244393 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Hyperbaric Oxygen | HO | Pre-Service | PRE |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09192017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918128 | E11621, L97423, L97922 | Non-prs chr ulc unsp prt of l low leg w fat layer exposed | ICD10 | 10112017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 30, 30 | 30, 30 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T10:54:00+00:00 | Q19343241 | 000063649-01 | VICTORIA | ATWOOD | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921106 | M47896 | Other spondylosis, lumbar region | ICD10 | 10112017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T10:45:40+00:00 |  | 000080599-01 | Emagene | Fouty | OSU INTERNAL MED LLC | 909694 | THOMAS E | OLENCKI | 1710994280 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 10062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918121 | C6931 | Malignant neoplasm of right choroid | ICD10 | 10112017 | 99201, 99202, 99203, 99204, 99205, 88305, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T12:41:57+00:00 | Q19513173 | 000089367-01 | Barbara | Fouss | MARIETTA HLTH CARE PHYS | 922016 | LLOYD D | DENNIS | 1578531547 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 10112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011153 | M5416, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 10112017 | 70470, 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T10:32:12+00:00 |  | 000074221-01 | Marvin | Weaver | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MYRIAD GENETIC LABORATORIES | 10112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003145 | Z8546 | Personal history of malignant neoplasm of prostate | ICD10 | 10112017 | 81479 | UNLISTED MOLECULAR PATHOLOGY | CPT | 1 | 1 | Approved | 62 | CPT | C4 | PHONE CALL PLACED TO JODI AT MYRIAD  QUESTIONED ABOUT REQUESTED CPT CODE 84999. SHE CONFIRMED THAT IS NOT THE CORRECT CODE.  ALSO REQUESTED ADDITIONAL CLINICALS  SHE IS GOING TO CONTACT PROVIDER AND RE-FAX |  |  |  |  | 0 |
| 09122017 | 2017-09-12T07:41:00+00:00 | Q19285862 | 000064540-01 | JAMES | MCGLONE | ADENA MEDICAL GROUP LLC | 931577 | COURTNEY E | LITTLE | 1003101957 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921064 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 10112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T12:07:00+00:00 | Q19344665 | 000063137-01 | Mary | Ulry | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 04092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921230 | C50212 | Malig neoplasm of upper-inner quadrant of left female breast | ICD10 | 10112017 | J9395 | INJECTION, FULVESTRANT, 25 MG | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J9395: 120: Fulvestrant 500 mg  IM  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 09192017 | 2017-09-19T14:59:20+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10242017 | 01242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920014 | G243 | Spasmodic torticollis | ICD10 | 10112017 | J0585, 64616, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T07:59:04+00:00 |  | 000056854-01 | ERWIN | PEAKS | OSU SURGERY LLC | 908684 | WILLIAM B | FARRAR | 1437101748 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 10112017 | 10122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171010078 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 10112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10102017 | 2017-10-10T07:59:04+00:00 |  | 000056854-01 | ERWIN | PEAKS | OSU INTERNAL MED LLC | 944162 | RAQUEL | REINBOLT | 1760644876 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 10112017 | 10122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171010116 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 10112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10042017 | 2017-10-04T09:25:47+00:00 |  | 000068314-01 | MICHAEL | BURTON | OSU SURGERY LLC | 908443 | AMER | RAJAB | 1700831864 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052014 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004114 | N186 | End stage renal disease | ICD10 | 10112017 | 99205, 99291, 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 1128, 1128, 1128, 1128, 1128, 1128, 1128, 1128 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T13:11:50+00:00 | Q19465067 | 000108092-01 | Terry | Perry | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005074 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 10112017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T13:50:00+00:00 | Q19414679 | 000033389-01 | ARTHUR | TIMMONS | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09272014 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005106 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10112017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 1157, 1157, 1157, 1157, 1157 | HCPCS | HC |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T08:13:53+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 10092017 | 12092017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005088 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10112017 | 93306, 94010, 82805, 93000, 71020, 38221, 83735, 85025, 84100, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 85730, 85610, 84550, 83615, 83891, 83909, 83912, 80053, 82728, 84165, 86695, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83890, 83894, 83912, 83898, 86900, 86901, 86850, 87081, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T14:17:17+00:00 |  | 000099440-01 | Leonard | Sutton | OSU UROLOGY LLC | 939464 | KAMAL S | POHAR | 1952350985 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10102017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171005144 | C675 | Malignant neoplasm of bladder neck | ICD10 | 10112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T06:16:46+00:00 | Q19426211 | 000064188-01 | FRANCIS | BENSON | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171006058 | M48061 | M48061 | ICD10 | 10112017 | 72132 | CAT SCAN LUMBAR SPINE C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
