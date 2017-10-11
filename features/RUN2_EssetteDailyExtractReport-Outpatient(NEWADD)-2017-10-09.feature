Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-09
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
| 09282017 | 2017-09-28T10:56:37+00:00 | Q19419370 | 000087229-01 | Richard | Roush | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09282017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009019 | R634 | Abnormal weight loss | ICD10 | 10092017 | 71270, 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09282017 | 2017-09-28T11:27:15+00:00 | Q19419924 | 000031721-01 | JANET | RICHCREEK | MOUNT CARMEL HLTH PRVDRS | 908171 | SHERI L | HART | 1194809301 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009020 | G3183 | Dementia with Lewy bodies | ICD10 | 10092017 | 70553, 78608 | BRAIN IMAGING, POSITRON EMISSION TOMOGRAPHY (PET); | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T12:25:50+00:00 | Q19485542 | 000117561-01 | SYLVIA | BALISTRERE | COPC CENTRAL OHIO PRIMAR | 937347 | NATALIA | PUSHKIN | 1861488876 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10062017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009038 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10092017 | 73723 | MRI JOINT LWR EXTR W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T08:53:12+00:00 | Q19481606 | 000097123-01 | Ethel | Meizlish | AVERA QUEEN OF PEACE | 928006 | JESSICA M | THURMAN | 1235401852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009068 | R0609 | Other forms of dyspnea | ICD10 | 10092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10062017 | 2017-10-06T09:51:19+00:00 | Q19482663 | 000070025-01 | Edgar | Mathias | COPC CENTRAL OHIO PRIMAR | 934863 | ROBERT J | SPROUSE | 1699754945 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10062017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009077 | R911 | Solitary pulmonary nodule | ICD10 | 10092017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10052017 | 2017-10-05T14:27:05+00:00 | Q19477466 | 000071187-01 | Eliza | Bradford | MOUNT CARMEL HLTH PRVDRS | 907847 | MELISSA A | DINE | 1700084787 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10052017 | 11042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009131 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10092017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09012017 | 2017-09-01T15:29:00+00:00 | Q19232857 | 000007055-01 | FLORA | PROSE | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09012017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911049 | M76821 | Posterior tibial tendinitis, right leg | ICD10 | 10092017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T11:05:26+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 934386 | CAROLYN A | MCCLERKING | 1639374846 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10092017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 09262017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922129 | C9100, Z5112 | Encounter for antineoplastic immunotherapy | ICD10 | 10092017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82495, 84132, 82947, 88112, G0463, 82435 | CHLORIDES; BLOOD (SPECIFY CHEMICAL OR ELECTROMETRIC) | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T12:45:00+00:00 |  | 000095868-01 | Thomas | Branson | CEI PHYSICIANS PSC INC | 920975 | JEFFREY A | NERAD | 1023019262 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Out of Network Services | OONS | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 10092017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10202017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170929112 | H02403 | Unspecified ptosis of bilateral eyelids | ICD10 | 10092017 | 67904, 67904 | REP OF BLEPHAROPTOSIS EXT APPROACH | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T15:25:24+00:00 | Q19458678 | 000027780-01 | PHILLIP | ALSPACH | OSU INTERNAL MED LLC | 935943 | MANISHA H | SHAH | 1679581896 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009154 | C73, C7951 | Secondary malignant neoplasm of bone | ICD10 | 10092017 | 70490, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T13:04:08+00:00 |  | 000015705-01 | OTTO | NEIKE | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10092017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10102017 | 01102018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009148 | E8889, N390, R197 | Diarrhea, unspecified | ICD10 | 10092017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85652, 80053, 83615, 84550, 84443, 82248, 84450, 82310, 83735, 84100, 82565, 82565, 84520, 82374, 82435, 84132, 82947, 84295, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T11:36:22+00:00 |  | 000090415-01 | Ricky | Bailey | MERRITT, ROBERT E | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10132017 | 11132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009146 | C155 | Malignant neoplasm of lower third of esophagus | ICD10 | 10092017 | 43249, 43235, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T10:41:30+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU HLTH SYS ORTHO ONC P | 942750 | THUAN V | LY | 1487697637 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10092017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921271 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 10092017 | G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03102017 | 2017-03-10T19:15:50+00:00 | Q17948781 | 000037103-01 | ROGER | COOPER | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03102017 | 06082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170313015 | C61 | Malignant neoplasm of prostate | ICD10 | 10092017 | G0340, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 1 | 1, 1 | Void, Approved | 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T10:22:58+00:00 |  | 000053825-01 | JAMES | JUNE | OSU PSYCHIATRY LLC | 930340 | ERICA L | DAWSON | 1679917017 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 10092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911134 | G250 | Essential tremor | ICD10 | 10092017 | 96118, 96119, 96120, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09112017 | 2017-09-11T11:57:00+00:00 | Q19280249 | 000071892-01 | Alice | Dillman | OSU HLTH SYS ORTHO ONC P | 924119 | ELIZABETH | YU | 1699896688 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09112017 | 10112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915011 | M4120 | Other idiopathic scoliosis, site unspecified | ICD10 | 10092017 | 72125, 72131, 72128 | CAT SCAN THORACIC SPINE WO CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T10:46:42+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10092017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 10042017 | 01042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004166 | Z942 | Lung transplant status | ICD10 | 10092017 | 82040, 84075, 84460, 84450, 84448, 84447, 84155, 83735, 84100, 85730, 85610, 84439, 84443, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86808, 84550, 80197, 87497, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
