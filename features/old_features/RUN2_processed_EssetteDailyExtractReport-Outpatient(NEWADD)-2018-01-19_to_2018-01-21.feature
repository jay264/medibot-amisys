Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-19
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
| 01172018 | 2018-01-17T14:48:27+00:00 | Q20192490 | 000098249-01 | Karen | Baker | CEN OH PRIMARY CARE SPEC | 937365 | SHARRIE A | RAY | 1689751372 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119015 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 01192018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T15:28:10+00:00 |  | 000019773-01 | MARY | HIXON | ALEXANDER, MICHAEL M | 934951 | MICHAEL M | ALEXANDER | 1679524789 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Post-Service | POST |  | CAVALIER MOBILE XRAY CO | 01192018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 01192018 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X180118134 | R05 | Cough | ICD10 | 01192018 | 71045, R0070, Q0092 | SET-UP PORTABLE X-RAY EQUIPMENT | HCPCS | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01172018 | 2018-01-17T15:03:20+00:00 | Q20192784 | 000117009-01 | June | Simms | OHIO ENT & ALLERGY PHYSI | 934941 | EVAN J | TOBIN | 1588636989 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119017 | D110 | Benign neoplasm of parotid gland | ICD10 | 01192018 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T07:52:51+00:00 | Q20194779 | 000115193-01 | Pamela | Riffle | MOUNT CARMEL HLTH PRVDRS | 934823 | ANGELA S | SMITH | 1295777159 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119026 | D352 | Benign neoplasm of pituitary gland | ICD10 | 01192018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T12:02:23+00:00 |  | 000114101-01 | Lenora | Bolinger | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118116 | C319 | Malignant neoplasm of accessory sinus, unspecified | ICD10 | 01192018 | 31237, 31237 | NASAL/SINUS ENDOSCOPY, SURGICAL; | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T08:50:27+00:00 | Q20195566 | 000014717-01 | EVERETT | EDMONDS | ORTHOPEDIC ONE INC | 907893 | JAN S | AUGENSTEIN | 1932192036 | CENTRAL OHIO SURG ASSOC | 947112 | 1780994970 | CHARLES H DABBS | 1992020598 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHARLES H | DABBS | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119033 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 01192018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T09:10:00+00:00 | Q20191509 | 000113634-01 | HOWARD | METCALF | THE UROLOGY GROUP | 921064 | MICHAEL B | ROUSSEAU | 1851328660 | THE UROLOGY GROUP | 921064 | 1568404846 | MICHAEL B ROUSSEAU | 1851328660 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | MICHAEL B | ROUSSEAU | 01192018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 07162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119042 | C672 | Malignant neoplasm of lateral wall of bladder | ICD10 | 01192018 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9031: 6: (BCG) Bacillus Calmette-Guerin 81 mg  intravesically  day 1  every 7 days  6 cycles |  |  |  |  | 0 |
| 01162018 | 2018-01-16T16:00:05+00:00 |  | 000034328-01 | JERRY | ALTHOFF | AMERIWOUND LLC | 932739 |  | AMERIWOUND LLC | 1740535988 | AMERIWOUND LLC | 932739 | 1740535988 | AMERIWOUND LLC | 1740535988 | Out of Network Services | OONS | Pre-Service | PRE |  | AMERIWOUND LLC | 01192018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 01192018 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180116116 | I83028, L97822 | Non-prs chronic ulcer oth prt l low leg w fat layer exposed | ICD10 | 01192018 | 99304, 99305, 99306, 99307, 99308, 99309, 11042, 11043 | DEBRIDE SKIN & SUBCU TISSUE & MSCL | CPT | 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01172018 | 2018-01-17T13:59:58+00:00 |  | 000026790-01 | JOANN | HITE | OSU INTERNAL MED LLC | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01282018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117123 | I639 | Cerebral infarction, unspecified | ICD10 | 01192018 | 93293 | PM PHONE R-STRIP DEVICE EVAL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T15:12:24+00:00 |  | 000064469-01 | ARMITA | RICHARDSON | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 01192018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118130 | H7292 | Unspecified perforation of tympanic membrane, left ear | ICD10 | 01192018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T07:28:03+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU INTERNAL MED LLC | 952079 | MARCELO R | BONOMI | 1043446230 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 01252018 | 04252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119068 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 01192018 | 99211, 99212, 99213, 99214, 99215, 84443, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 82947 | GLUCOSE; EXC. UA (EG BLD, SP FLD) | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T08:14:16+00:00 |  | 000096380-01 | Lucien | Mouawad | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Essential Care | Fax | Pending Admission | Outpatient | 01192018 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119072 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 01192018 | 99211, 99212, 99213, 99214, 99215, 93000, 94760, 85730, 85610, 36415, 83036 | GLYCOLATED HB | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T14:13:00+00:00 | Q20196624 | 000051881-01 | GALE | LIVELY | OH ONCOLOGY & HEMATOLOGY | 928122 | SONIA M | ABUZAKHM | 1659571065 | MOUNT CARMEL HLTH SYS | 952877 | 1457617235 | SAMANTHA HEMBREE | 1215467105 | Radiology (HH) | OP RAD | Pre-Service | PRE | SAMANTHA | HEMBREE | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 04182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119086 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 01192018 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 10 | 10 | Approved | 91 | CPT | C4 | 77386: 10: 77386 10 |  |  |  |  | 0 |
| 01182018 | 2018-01-18T09:45:36+00:00 | Q20196660 | 000063516-01 | JAMES | GREGG | JACK STANKO MD LLC | 902266 |  | JACK STANKO MD LLC | 1194924431 | JACK STANKO MD LLC | 934869 | 1194924431 | JOHN STANKO JR | 1891751319 | Radiology (HH) | OP RAD | Pre-Service | PRE | JOHN | STANKO JR | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119088 | R0602 | Shortness of breath | ICD10 | 01192018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T09:47:59+00:00 |  | 000031862-01 | DOLA | DAVIS | OH GASTRO GRP INC | 932482 | JOSEPH D | THOMAS | 1083876288 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01222018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119089 | K635 | Polyp of colon | ICD10 | 01192018 | 45378, 45380, 45385, 45384 | COLNSPY PAST SPLENIC FL C POLYP REM | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:12:36+00:00 | Q20197207 | 000055820-01 | JUDITH | NYE | CAPITAL UROLOGY INC | 918364 | FADEL S | ELKHAIRI | 1841456654 | CEN OH UROLOGY GRP INC | 946058 | 1396780466 | MICHELLE BENNETT | 1144292012 | Radiology (HH) | OP RAD | Pre-Service | PRE | MICHELLE | BENNETT | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119090 | R3129 | OTHER MICROSCOPIC HEMATURIA | ICD10 | 01192018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:18:57+00:00 | Q20197356 | 000048997-01 | LORENE | HOOVER | MOUNT CARMEL HLTH PRVDRS | 934904 | LORI A | SULLIVAN | 1417028697 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119091 | R100 | Acute abdomen | ICD10 | 01192018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:28:15+00:00 | Q20197596 | 000076591-01 | David | Golas Sr | HOLSTEN, DARREN J | 907143 | DARREN J | HOLSTEN | 1952430993 | ADVANTAGE IMAGING LLC | 918155 | 1982918629 | ADVANTAGE IMAGING LLC | 1982918629 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADVANTAGE IMAGING LLC | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119092 | M5412 | Radiculopathy, cervical region | ICD10 | 01192018 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:32:43+00:00 | Q20197681 | 000093939-01 | Judith | Golas | HOLSTEN, DARREN J | 907143 | DARREN J | HOLSTEN | 1952430993 | ADVANTAGE IMAGING LLC | 918155 | 1982918629 | ADVANTAGE IMAGING LLC | 1982918629 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADVANTAGE IMAGING LLC | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119093 | M5416 | Radiculopathy, lumbar region | ICD10 | 01192018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:35:37+00:00 | Q20197728 | 000104794-01 | James | Hathaway Sr | SALOMON, ALBERT M | 934725 | ALBERT M | SALOMON | 1902887789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119095 | M545 | Low back pain | ICD10 | 01192018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T10:42:45+00:00 | Q20197941 | 000033266-01 | LYNN | DEAN | CAPITAL UROLOGY INC | 918364 | FADEL S | ELKHAIRI | 1841456654 | CEN OH UROLOGY GRP INC | 946058 | 1396780466 | MICHELLE BENNETT | 1144292012 | Radiology (HH) | OP RAD | Pre-Service | PRE | MICHELLE | BENNETT | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119096 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 01192018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T09:21:23+00:00 | Q20196148 | 000045228-01 | VIRGINIA | KROUSE | CEN OH PRIMARY CARE SPEC | 935868 | JACQUELINE M | AMICO | 1487640264 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119097 | S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 01192018 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T09:20:13+00:00 | Q20196103 | 000115711-01 | Garry | Brown | DAYTON CTR FOR NEURO DIS | 911073 | TAMER Y | ABOU-ELSAAD | 1255302808 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 01192018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119098 | G451 | Carotid artery syndrome (hemispheric) | ICD10 | 01192018 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T08:07:33+00:00 | Q20203152 | 000069149-01 | DIANA | BRUCKELMYER | MEDICAL & SURG ASSOC INC | 906491 | MISTI D | STAGGERS | 1003005034 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119099 | R0602 | Shortness of breath | ICD10 | 01192018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T10:54:53+00:00 | Q20205977 | 000056666-01 | JAMES | FAIRCHILD | ADENA MEDICAL GROUP LLC | 900441 | DAMIEN M | BENJAMIN | 1407881055 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 02182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119101 | K639 | Disease of intestine, unspecified | ICD10 | 01192018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T11:18:11+00:00 |  | 000017755-01 | ANN | BROSSMAN | OSU HLTH SYSTEM NEUROSUR | 908505 | JOHN M | MCGREGOR | 1992754212 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01192018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119103 | G939 | Disorder of brain, unspecified | ICD10 | 01192018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T11:54:22+00:00 |  | 000039966-01 | GEORGE | PORTER | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01192018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119107 | C099 | Malignant neoplasm of tonsil, unspecified | ICD10 | 01192018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T13:54:29+00:00 |  | 000103714-01 | Carlton | Burt | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01262018 | 02262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119114 | C20, C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 01192018 | 75726, 79445, 75774, 78802, 78803, 77470, 36247, 37243, C1887, C2616 | BRACHYTHERAPY SOURCE, YTTRIUM-90 | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC | Eric Elliott is a Radiologist |  |  |  |  | 0 |
| 01182018 | 2018-01-18T08:20:00+00:00 | Q20195265 | 000038168-01 | MONA | BOGGS | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119117 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 01192018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T15:13:07+00:00 | Q20188900 | 000095958-01 | Ronald | Cahoone | MARIETTA MEM HSP | 947328 | SHINOJ | PATTALI JAYAVA | 1275849788 | MARIETTA MEM HSP | 947328 | 1215936927 | SHINOJ PATTALI JAYAVA | 1275849788 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | SHINOJ | PATTALI JAYAVA | 01192018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 07212018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119123 | C171 | Malignant neoplasm of jejunum | ICD10 | 01192018 | J9263, J0640, J9190, J2505, J1453, J1100, J2405 | INJECTION, ONDANSETRON HYDROCHLORIDE, PER 1 MG | HCPCS | 12, 12, 12, 8, 12, 48, 48 | 12, 12, 12, 8, 12, 48, 48 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T15:33:27+00:00 |  | 000017755-01 | ANN | BROSSMAN | OSU HLTH SYSTEM NEUROSUR | 908505 | JOHN M | MCGREGOR | 1992754212 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01192018 | 03192018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119125 | G939 | Disorder of brain, unspecified | ICD10 | 01192018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 | PON: approved for visit to OSU neuro. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T16:23:02+00:00 | Q20212534 | 000090844-01 | William | Coy | DAYTON PHYSICIANS LLC | 909070 | MICHAEL K | YU | 1104816131 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 01192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119129 | R310 | Gross hematuria | ICD10 | 01192018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T19:04:37+00:00 | Q20211559 | 000119991-01 | DALE | BUTLER | OSU INTERNAL MED LLC | 911666 | STEVEN K | CLINTON | 1790792968 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01202018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 02182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180120001 | C61 | Malignant neoplasm of prostate | ICD10 | 01202018 | 72196, 72149, 72147, 72142 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITH CONTRAST MATERIAL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
