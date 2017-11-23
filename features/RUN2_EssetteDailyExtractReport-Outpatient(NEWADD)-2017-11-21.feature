Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-21
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-21
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
| 11202017 | 2017-11-20T14:18:43+00:00 | Q19816575 | 000041033-01 | JAMES | BURT | MOUNT CARMEL HLTH PRVDRS | 952157 | DEREN | HUANG | 1841461019 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11222017 | 12222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121028 | G500 | Trigeminal neuralgia | ICD10 | 11212017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T09:23:36+00:00 | Q19810635 | 000109863-01 | Myra | Carlos | CEN OH PRIMARY CARE SPEC | 936203 | NADINE E | COX | 1982620886 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 11212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121037 | Z87891 | Personal history of nicotine dependence | ICD10 | 11212017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T11:29:38+00:00 | Q19813340 | 000013200-01 | JEAN | DEVER | MATERNOHIO CLINICAL ASSO | 947465 | ASHITA | GEHLOT | 1700177748 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121046 | N8189 | Other female genital prolapse | ICD10 | 11212017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T14:14:48+00:00 | Q19806114 | 000042554-01 | DAVID | KITZMILLER | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121067 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11212017 | 74175 | CT ANGIO ABDOM W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T16:01:39+00:00 | Q19807759 | 000081494-01 | Cheryl | Munkacsy | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121085 | M25512 | Pain in left shoulder | ICD10 | 11212017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:13:33+00:00 | Q19804130 | 000074723-01 | John | Fyffe Jr | RCHP WILMINGTON LLC | 947943 | ADEWALE A | FAWOLE | 1073742359 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12042017 | 06022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121111 | C8318 | Mantle cell lymphoma, lymph nodes of multiple sites | ICD10 | 11212017 | J9310 | RITUXIMAB, 100 MG | HCPCS | 42 | 42 | Approved | 181 | HCPCS | HC | J9310: 42: INJECTION  RITUXIMAB  100 MG  Dispensed as: 700.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 11162017 | 2017-11-16T13:49:24+00:00 | Q19795445 | 000071914-01 | Pamela | Lewis | GROVE CITY FAM HLTH INC | 936935 | JOHN A | HORN | 1841239431 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121113 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 11212017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T12:54:25+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU INTERNAL MED LLC | 932549 | SHANNON M | GRAMS | 1053757971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11142017 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171113135 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 11212017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11102017 | 2017-11-10T15:24:27+00:00 |  | 000076829-01 | Cynthia | Miller | NEW HORIZONS YTH & FAM C | 913377 | SARA L | BONACCI | 1225272628 | PICKERINGTON AREA COUNSE | 933775 | 1093883183 | NEW HORIZONS YOUTH & FAMILY CENTER | 1255453460 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | NEW HORIZONS YOUTH & FAMILY CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171113124 | R6889 | Other general symptoms and signs | ICD10 | 11212017 | 90791 | PSYCH DIAGNOSTIC EVALUATION | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T13:56:27+00:00 | Q18991631 | 000010071-01 | HELEN | STONE | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 10102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802012 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11212017 | 93461, 75574, 74174, 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 0, 1, 1, 1 | 1, 1, 1, 1 | Void, Approved, Approved, Approved | 61, 61, 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T09:43:08+00:00 |  | 000003552-01 | NANCY | STRAWSER | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN GAHANNA LLC | 943640 | 1437548575 | OTTERBEIN GAHANNA LLC | 1437548575 | Part B Therapy | OP THER | Pre-Service | PRE |  | OTTERBEIN GAHANNA LLC | 11212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11212017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171115151 | R296, R4182, Z87820 | Personal history of traumatic brain injury | ICD10 | 11212017 | 97010, 97110, 97112, 97166, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 41, 41, 41, 41, 41, 41 | CPT | C4 |  |  |  |  |  | 0 |
| 11132017 | 2017-11-13T16:55:12+00:00 |  | 000104988-01 | William | Toney | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 11212017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 12112017 | 01112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114147 | D3131, H353211, H353120 | NEXDTVE AGE-RELATED MCLR DEGN, LEFT EYE, STAGE UNSPECIFIED | ICD10 | 11212017 | 99214, 92134, 92250, 76510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T14:07:12+00:00 | Q19805954 | 000013983-01 | KATHLEEN | ARTHUR | COPC CENTRAL OHIO PRIMAR | 937155 | KATHLEEN R | BARTUNEK | 1912953126 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 11212017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 11172017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121063 | R1013 | Epigastric pain | ICD10 | 11212017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T09:05:17+00:00 |  | 000086233-01 | Margaret | Kieber | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11212017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12112017 | 01112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171115144 | M19012, M67312, M75122, M7522, M7542, S43432A | Superior glenoid labrum lesion of left shoulder, init encntr | ICD10 | 11212017 | 29826, 29824, 29821, 23420, 23430, 29823 | ARTHROSCOPY SHLDR W EXTNSV DEBRDMNT | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T08:39:00+00:00 | Q19810311 | 000034852-01 | PHILLIP | ARNOLD | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11212017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 11202017 | 05192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121125 | C61 | Malignant neoplasm of prostate | ICD10 | 11212017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
