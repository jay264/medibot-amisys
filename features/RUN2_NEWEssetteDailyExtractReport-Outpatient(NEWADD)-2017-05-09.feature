Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-09
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
| 04102017 | 2017-04-10T15:29:18+00:00 |  | 000038944-01 | ELAINE | CATON | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | ATHENA DIAGNOSTICS | 938167 | 1023063062 | ATHENA DIAGNOSTICS | 1023063062 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | ATHENA DIAGNOSTICS | 05092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412102 | G729 | Myopathy, unspecified | ICD10 | 05092017 | 36416, 81400, 81401 | MOPATH PROCEDURE LEVEL 2 | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | CPT | C4 | Call placed to Dr Yao's office to request for additional clinical documentation including EMG and additional workup performed. |  |  |  |  | 0 |
| 04202017 | 2017-04-20T09:39:27+00:00 | Q18222913 | 000083518-01 | Rose | Dorsey | RCHP WILMINGTON LLC | 939625 | CASSANDRA | GRENADE | 1770744807 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170421013 | C7A8 | Other malignant neuroendocrine tumors | ICD10 | 05092017 | J9045 | CARBOPLATIN, 50 MG | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04202017 | 2017-04-20T10:55:53+00:00 | Q18244951 | 000066068-01 | SHARON | BAYLESS | ADENA MEDICAL GROUP LLC | 917808 | STACEY L | LLOYD | 1265740872 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170421036 | R05 | Cough | ICD10 | 05092017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04192017 | 2017-04-19T13:58:02+00:00 | Q18228768 | 000083695-01 | Patricia | Diamond | ORTHOPEDIC ONE INC | 904016 | NICOLE D | KENNEDY | 1649232372 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170421059 | Z96641 | Presence of right artificial hip joint | ICD10 | 05092017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04192017 | 2017-04-19T15:54:26+00:00 | Q18240071 | 000102479-01 | Patricia | Lewis | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 936383 | 1538488564 | DANIEL J EVANS | 1760477640 | Radiology (HH) | OP RAD | Pre-Service | PRE | DANIEL J | EVANS | 05092017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170421161 | R0609 | Other forms of dyspnea | ICD10 | 05092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T15:50:13+00:00 |  | 000102011-01 | Sharon | Jackson | MARIETTA MEM HSP | 922135 | PEGGY S | WEST | 1720160773 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05042017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503305 | G252 | Other specified forms of tremor | ICD10 | 05092017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 3 | 3 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T10:32:11+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05092017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05042017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504172 | G243 | Spasmodic torticollis | ICD10 | 05092017 | J0585, 64616 | CHEMODENERV MUSC NECK DYSTON | CPT | 300, 1 | 300, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T11:13:36+00:00 |  | 000081203-01 | Clara | Burton | COMPREHENSIVE PAIN CARE | 920485 | AMISH R | PATEL | 1265464622 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 05092017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504182 | G894, M4806, M5416 | Radiculopathy, lumbar region | ICD10 | 05092017 | 63650, 95972 | ANALYZE NEUROSTIM, COMPLEX | CPT | 2, 1 | 2, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T09:16:22+00:00 | Q18370293 | 000027330-01 | JOSEPH | HESTER | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509028 | L89150 | Pressure ulcer of sacral region, unstageable | ICD10 | 05092017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T10:24:20+00:00 | Q18371807 | 000097367-01 | Linda | Haley | MOUNT CARMEL HLTH PRVDRS | 934916 | STEVEN | TANZER | 1578526513 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509034 | M545 | Low back pain | ICD10 | 05092017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T10:00:35+00:00 | Q18371280 | 000118071-01 | Larry | Hager | HLTHSOURCE OF OHIO WILMI | 932462 | LAURA R | SMITH | 1376853630 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 05092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509043 | R079 | Chest pain, unspecified | ICD10 | 05092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T13:04:40+00:00 | Q18374904 | 000086469-01 | Alicia | Martin | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509044 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05092017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T11:27:37+00:00 | Q18373090 | 000042512-01 | DANNY | MUMMEY | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509049 | M47896 | Other spondylosis, lumbar region | ICD10 | 05092017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T12:31:16+00:00 | Q18374274 | 000087890-01 | Richard | Harris | ORTHOPEDIC ONE INC | 904016 | NICOLE D | KENNEDY | 1649232372 | POLARIS OPEN MRI | 902664 | 1831154996 | POLARIS OPEN MRI | 1831154996 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | POLARIS OPEN MRI | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509055 | M5416 | Radiculopathy, lumbar region | ICD10 | 05092017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T12:46:20+00:00 | Q18374546 | 000085765-01 | Sally | Hardin | MOUNT CARMEL HLTH PRVDRS | 934782 | DAVID G | BICHSEL | 1669474839 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509056 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T05:31:04+00:00 | Q18368781 | 000043105-01 | LORRAINE | BOLDON | COPC CENTRAL OHIO PRIMAR | 935072 | CAMERON M | WOODLIEF | 1922083633 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509065 | R911 | Solitary pulmonary nodule | ICD10 | 05092017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T07:16:18+00:00 | Q18368910 | 000012281-01 | Mary | Maynard | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509068 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05092017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T08:12:47+00:00 | Q18307787 | 000067681-01 | PAMELA | BARRETT | OSU INTERNAL MED LLC | 944199 | BHAVANA | KONDA | 1063642148 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509102 | C7A8 | Other malignant neuroendocrine tumors | ICD10 | 05092017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T12:56:28+00:00 | Q18335355 | 000073924-01 | Ralph | Cline | KNOX COMMUNITY HSP PHYS | 919524 | CHRISTOPHER H | HETRICK | 1558579839 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 05092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509126 | J329 | Chronic sinusitis, unspecified | ICD10 | 05092017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05092017 | 2017-05-09T13:22:30+00:00 |  | 000083518-01 | Rose | Dorsey | OSU UROLOGY LLC | 913349 | GEOFFREY N | BOX | 1871509406 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05092017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 05252017 | 07252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509149 | C7A8, C7B8, N1330 | Unspecified hydronephrosis | ICD10 | 05092017 | 52005, 52332, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:36:35+00:00 |  | 000082943-01 | Jeffrey | Ledsome | MARIETTA HLTH CARE PHYS | 922070 | DORAI T | RAJAN | 1831297654 | MICHAEL SHRAMOWIAT LLC | 923894 | 1003820374 | MICHAEL SHRAMOWIAT | 1568485233 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | SHRAMOWIAT | 05092017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329112 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 05092017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Message left for Chasity at provider's office.  Request is a retro request with date of service of 3/22/17 and request date 3/29/17.  Clinical information also still needed to process request., Expedited portion removed from request as per phone call with Chasity.  Date of service is 3/22. |  |  |  |  | 0 |
| 04042017 | 2017-04-04T00:00:00+00:00 |  | 000095620-01 | Donald | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405003 | R6889 | Other general symptoms and signs | ICD10 | 05092017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04042017 | 2017-04-04T10:28:00+00:00 |  | 000095618-01 | Danguole | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405004 | R6889 | Other general symptoms and signs | ICD10 | 05092017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04282017 | 2017-04-28T15:24:07+00:00 |  | 000065429-01 | JAMES | RAINEY | BUCKEYE HEART AND VASCUL | 902332 | SUKIRTHARAN | SINNATHAMBY | 1538138037 | BUCKEYE HEART AND VASCUL | 902332 | 1982805610 | SUKIRTHARAN SINNATHAMBY | 1538138037 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | SUKIRTHARAN | SINNATHAMBY | 05092017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170428140 | I83893, I872, R600 | Localized edema | ICD10 | 05092017 | 36478, 36471 | INJ. SCLEROSING SOL.,MULT VNS, 1 LG | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Provider is requesting a pre-determination., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05012017 | 2017-05-01T07:49:07+00:00 |  | 000033770-01 | LUISITO | TOLENTINO | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 05092017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170501098 | I509, J189, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05092017 | R0070, Q0092, 71010 | CHEST, SINGLE VIEW, POSTEROANTERIOR | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T07:42:00+00:00 |  | 000110200-01 | CECIL | JORDAN | FIRST SETTLEMENT ORTHOS | 924504 | GREGORY B | KRIVCHENIA II | 1467410258 | FIRST SETTLEMENT ORTHOS | 924504 | 1215992458 | GREGORY B KRIVCHENIA II | 1467410258 | DME | DME | Pre-Service | PRE | GREGORY B | KRIVCHENIA II | 05092017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170502008 | S82241D | Displ spiral fx shaft of r tibia, 7thD | ICD10 | 05092017 | L4361 | PNEUMA/VAC WALK BOOT PRE OTS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T17:26:58+00:00 |  | 000071851-01 | Julia | Straight | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 05092017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170502011 | D649 | Anemia, unspecified | ICD10 | 05092017 | A0426, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | As per phone call with Casey provider informed additional clinical documentation needed to support medical necessity., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:51:15+00:00 |  | 000007513-01 | BETTIE | WOLFINGER | CEN OHIO GERIATRICS LLC | 934216 | CARYN | GORBY | 1144626433 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 05092017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170503295 | R260, S81812A, S82811A | Torus fracture of upper end of right fibula, init | ICD10 | 05092017 | E1399 | DURABLE MEDICAL EQUIPMENT, MISCELLANEOUS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:50:09+00:00 |  | 000058004-01 | JANET | BAUMGARTNER | BEZBATCHENKO, MICHAEL J | 919295 | MICHAEL J | BEZBATCHENKO | 1497879332 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05092017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170504195 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 05092017 | E0486, 99202 | OFFICE CALL - NEW PATIENT | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T16:28:24+00:00 |  | 000049605-01 | RICHARD | CREMEANS | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 05092017 | Denied | MediGold Classic Preferred | HealthHelp | Criteria Not Met | Outpatient | 05092017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170504201 | D090 | Carcinoma in situ of bladder | ICD10 | 05092017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. Case discussed with Dr. Robert Durbin  Senior Associate Medical Director. Decision was upheld. |  |  |  |  | 0 |
| 02062017 | 2017-02-06T15:35:35+00:00 |  | 000039344-01 | MARVIN | BUCKLEY | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Part B Therapy | OP THER | Initial Review | INIT |  | CENTERBURG RESPIRATORY AND SPECIALTY | 05092017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Interim Approval | X170207118 | J9600, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 05092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 0 | Revenue | RV | NOMNC received, NOMNC attached is for a previous skilled stay  requested the Part B NOMNC |  |  |  |  | 0 |
