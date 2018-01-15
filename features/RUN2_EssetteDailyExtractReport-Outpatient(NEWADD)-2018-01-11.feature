Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-11
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
| 01102018 | 2018-01-10T13:33:06+00:00 |  | 000024549-01 | LENA | CASSADY | MOUNT CARMEL HLTH SYS | 936339 | JAMES A | EDISON | 1871587105 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01112018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01162018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180110121 | Z86010 | Personal history of colonic polyps | ICD10 | 01112018 | 45378, 45380, 45385, 45384 | COLNSPY PAST SPLENIC FL C POLYP REM | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01092018 | 2018-01-09T08:04:21+00:00 | Q20122948 | 000001268-01 | Ralph | Smith | ADENA HEALTH SYSTEMS | 937209 | TIMOTHY D | MOORE | 1144278243 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 01112018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01112018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111008 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 01112018 | 70487, 70460, 71260, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T07:52:14+00:00 | Q20134004 | 000079764-01 | Don | Estep | MOUNT CARMEL HLTH PRVDRS | 927422 | LABOURE A | OKOROAFOR | 1598055253 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01112018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111022 | M545 | Low back pain | ICD10 | 01112018 | 72148, C8912 | MAGNETIC RESONANCE ANGIOGRAPHY WITH CONTRAST, LOWER EXTREMITY | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T07:55:17+00:00 | Q20134278 | 000082619-01 | Linda | Hutchison | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 01112018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01122018 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111023 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 01112018 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01092018 | 2018-01-09T15:04:30+00:00 | Q20131479 | 000117175-01 | HARLEY | RAYBURN | ADENA MEDICAL GROUP LLC | 925264 | CASEY R | CLEVENGER | 1609113554 | GREENFIELD AREA MED CTR | 916533 | 1215960901 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENFIELD AREA MEDICAL CENTER SNF | 01112018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01092018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111040 | M5416 | Radiculopathy, lumbar region | ICD10 | 01112018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T08:28:01+00:00 | Q20134613 | 000099988-01 | Betty | Spriggs | MOIN A RANGINWALA MD INC | 902304 |  | MOIN A RANGINWALA MD INC | 1073635587 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 01112018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01112018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111058 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01112018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01092018 | 2018-01-09T09:19:54+00:00 | Q20124419 | 000089828-01 | Clark | Harris | SPRINGFIELD PULMONARY IN | 935658 | SHAHID | BASHIR | 1982751244 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 01112018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01292018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111082 | R590 | Localized enlarged lymph nodes | ICD10 | 01112018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T07:21:06+00:00 | Q20133692 | 000105172-01 | Richard | Pierce | CANYON MEDICAL CENTER | 919993 | MICHELE L | ALTHOUSE | 1831483643 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01112018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111087 | R350 | Frequency of micturition | ICD10 | 01112018 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T15:46:17+00:00 |  | 000118945-01 | Jim | Siegwald | SOMC MED CARE FOUNDATION | 945979 | JESSE P | HOUGHTON | 1457529125 | SOUTHERN OH MEDICAL CTR | 936402 | 1053342816 | SOUTHERN OHIO MEDICAL CENTER | 1053342816 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | SOUTHERN OHIO MEDICAL CENTER | 01112018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01122018 | 02122018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180110128 | K219, R10816, R1319 | Other dysphagia | ICD10 | 01112018 | 43239 | ESOPHAGOGASTRODUOD. SPEC FOR CYTLGY | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Essette Fax failed. Right faxed successfully. See attached confirmation. |  |  |  |  | 0 |
| 01102018 | 2018-01-10T10:48:08+00:00 | Q20137842 | 000084638-01 | Gerald | Bydash | ONCOLOGY HEMATOLOGY CARE | 921876 | MIGUEL A | ISLAS-OHLMAYER | 1295917425 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 01112018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01122018 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111098 | C8510 | Unspecified B-cell lymphoma, unspecified site | ICD10 | 01112018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T13:24:41+00:00 | Q20140645 | 000079077-01 | Nancy | Haynes | MERCY HEALTH PHYSICIANS | 921294 | JOHN R | CAPURRO | 1720011380 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 01112018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01122018 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111108 | R221 | Localized swelling, mass and lump, neck | ICD10 | 01112018 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01082018 | 2018-01-08T15:27:09+00:00 |  | 000106212-01 | Bobby | Wilson | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 01112018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01082018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180108122 | R001 | Bradycardia, unspecified | ICD10 | 01112018 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T09:05:56+00:00 | Q20135242 | 000073139-01 | Velma | Williams | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 01112018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180111124 | C211 | Malignant neoplasm of anal canal | ICD10 | 01112018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T14:55:54+00:00 |  | 000120144-01 | Dale | Watson | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01112018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01162018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180103113 | C61 | Malignant neoplasm of prostate | ICD10 | 01112018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T11:51:36+00:00 |  | 000104011-01 | James | Wolff | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01112018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104113 | N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 01112018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01092018 | 2018-01-09T12:30:38+00:00 |  | 000068645-01 | WILLIS | YOAKUM | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01112018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01162018 | 04162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180109105 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 01112018 | 99211, 99212, 99213, 99214, 99215, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85025, 82310, 82040 | ALBUMIN, BLOOD | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
