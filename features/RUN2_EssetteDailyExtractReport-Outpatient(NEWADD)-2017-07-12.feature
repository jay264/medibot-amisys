Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-12
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
| 05082017 | 2017-05-08T12:22:52+00:00 | Q18362791 | 000057061-01 | LAWRENCE | MOCK | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 11212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170509078 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07122017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1200 | 1200 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T12:00:32+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06292017 | 09292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623131 | D7581 | Myelofibrosis | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, 85025, 80053, 82040, 82247, 82310, 82374, 82435, 82565, 82947, 84075, 84132, 84155, 84295, 84460, 84450, 84520, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | SPOKE TO MICHELLE AT OSU  EXPEDITED WITHDRAWN |  |  |  |  | 0 |
| 06232017 | 2017-06-23T14:00:02+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 06212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623138 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, G0463, 85025, 80053, 36415, 36592, 82947, 84100, 83615, 84550, 85730, 85610 | PROTHROMBIN TIME | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | SPOKE TO MICHELL AT OSU  EXPEDITED WITHDRAWN. |  |  |  |  | 0 |
| 07062017 | 2017-07-06T08:32:33+00:00 |  | 000082331-01 | Robert | Kattine | OSU INTERNAL MED LLC | 951289 | LEVI | GEIGER | 1871973446 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706061 | C169, K669 | Disorder of peritoneum, unspecified | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T14:06:01+00:00 |  | 000028443-01 | MARTHA | FRAZIER | UNIV GYN & OB CNSLT | 911297 | RITU | SALANI | 1356482905 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707141 | C52 | Malignant neoplasm of vagina | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:50:34+00:00 |  | 000068645-01 | WILLIS | YOAKUM | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07132017 | 10132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170711043 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, 85025, 82040, 84075, 84460, 84450, 84132, 82248, 82247, 84155, 82310, 84520, 82374, 82435, 84295, G0463, 82565 | CREATININE,BLOOD | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T14:01:26+00:00 | Q18825227 | 000006749-01 | DELNO | CUMMANS | OH GASTRO GRP INC | 932443 | BRIAN G | TURNER | 1174557821 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07102017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712019 | K7460 | Unspecified cirrhosis of liver | ICD10 | 07122017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T14:53:25+00:00 | Q18826348 | 000114164-01 | Zoanna | Jenkins | NORTHSIDE FAMILY PHYS | 915971 | ALPER | SARIHAN | 1760582829 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712027 | R109 | Unspecified abdominal pain | ICD10 | 07122017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:27:34+00:00 | Q18827067 | 000114164-01 | Zoanna | Jenkins | NORTHSIDE FAMILY PHYS | 915971 | ALPER | SARIHAN | 1760582829 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712029 | R109 | Unspecified abdominal pain | ICD10 | 07122017 | 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T16:42:24+00:00 | Q18828120 | 000051049-01 | AUDRIN | DALRYMPLE | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07282017 | 01242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712036 | C61 | Malignant neoplasm of prostate | ICD10 | 07122017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 07112017 | 2017-07-11T05:28:06+00:00 | Q18828665 | 000064290-01 | JEAN | DUNN | COPC CENTRAL OHIO PRIMAR | 937044 | ANN R | KOVAL | 1427035633 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712038 | Z87891 | Personal history of nicotine dependence | ICD10 | 07122017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T07:03:13+00:00 | Q18799852 | 000105587-01 | Barbara | Mangini | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712061 | C434 | Malignant melanoma of scalp and neck | ICD10 | 07122017 | 78816 | TUMOR IMAGE PET/CT FULL BODY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T11:21:23+00:00 | Q18811763 | 000111253-01 | PATRICIA | ARRIGONI | DAYTON PHYSICIANS LLC | 912826 | E RONALD | HALE | 1437130796 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07082017 | 08072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712070 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 07122017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T13:43:52+00:00 | Q18814378 | 000113302-01 | Jerry | Snyder | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712073 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07122017 | 93455 | CORONARY ART/GRFT ANGIO S&I | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T13:04:35+00:00 | Q18814973 | 000098384-01 | Wanda | Kelly | MERCY HEALTH PHYSICIANS | 904146 | SAGAR S | SATYAVOLU | 1699775270 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 07122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712075 | Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 07122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T13:02:56+00:00 | Q18835137 | 000104138-01 | RICHARD | HOOK | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 07122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712083 | C61 | Malignant neoplasm of prostate | ICD10 | 07122017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 07112017 | 2017-07-11T13:02:23+00:00 | Q18835170 | 000068816-01 | BARBARA | FITZWATER | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712084 | R072 | Precordial pain | ICD10 | 07122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T12:08:21+00:00 | Q18834223 | 000072289-01 | Karen | Jordan | MOUNT CARMEL HLTH PRVDRS | 936395 | THOMAS S | FANNING | 1013970581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712093 | R079 | Chest pain, unspecified | ICD10 | 07122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T10:16:00+00:00 | Q18831863 | 000100104-01 | Ruth | Brinkel | ALLIANCE PHYSICIANS INC | 903054 | ROBERT E | BULOW | 1477552271 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 07122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712096 | I255 | Ischemic cardiomyopathy | ICD10 | 07122017 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T10:18:15+00:00 | Q18831912 | 000029708-01 | JERALD | MCKENZIE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712097 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 07122017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T11:12:13+00:00 | Q18833131 | 000093325-01 | William | Cline Jr. | SPINE LLC | 907769 | NIKESH | BATRA | 1285689224 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 08102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712105 | M5416 | Radiculopathy, lumbar region | ICD10 | 07122017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T07:40:58+00:00 |  | 000056263-01 | Linda | Hoskins | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07122017 | 10122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712152 | C44320 | Squamous cell carcinoma of skin of unspecified parts of face | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, 82565, 84520, 82374, 82435, 84295, 84132, 85025, 86900, 86901, 86850 | ANTIBODY SCREEN, RBC, EACH SERUM TECHNIQUE | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T10:00:25+00:00 |  | 000033348-01 | GARY | HERDMAN | ADENA MEDICAL GROUP LLC | 930154 | ALICIA M | TERANDO | 1396877080 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07122017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 07122017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170614127 | C4359, C774, C779 | Secondary and unsp malignant neoplasm of lymph node, unsp | ICD10 | 07122017 | 99211, 99212, 99213, 99214, 99215, 85025, 83615, 80053 | COMPREHEN METABOLIC PANEL | CPT | 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Denial upheld.  See assessments. |  |  |  |  | 0 |
