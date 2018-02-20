Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-15
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
| 02142018 | 2018-02-14T08:03:21+00:00 | Q20399549 | 000101562-01 | GLORYA | JACKSON | MERCY HEALTH PHYSICIANS | 921462 | KENT | ROBINSON | 1255430930 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 02152018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215034 | R0789 | Other chest pain | ICD10 | 02152018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T08:14:23+00:00 | Q20399788 | 000036479-01 | STANLEY | SMITH | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02152018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215036 | C248 | Malignant neoplasm of overlapping sites of biliary tract | ICD10 | 02152018 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T08:41:30+00:00 | Q20400517 | 000085453-01 | Doris | Reis | ONCOLOGY HEMATOLOGY CARE | 920856 | EVAN Z | LANG | 1639163033 | ONCOLOGY HEMATOLOGY CARE | 946339 | 1316342090 | SARAH C WILSON | 1447238555 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | SARAH C | WILSON | 02152018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 08142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215040 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 02152018 | J9145, J1100, J8540 | DEXAMETHASONE, ORAL, 0.25 MG | HCPCS | 528, 480, 480 | 528, 480, 480 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9145: 528: Daratumumab 16 mg/kg  IV  day 1  every 28 days  6 cycles: J8540: 480: Dexamethasone 20 mg  PO  day 1  every 28 days  6 cycles: J1100: 480: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 02082018 | 2018-02-08T18:22:33+00:00 |  | 000060549-01 | CAROLE | COBBS | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 02152018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 02152018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180209087 | D869, J849 | Interstitial pulmonary disease, unspecified | ICD10 | 02152018 | 99203, 99204, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | Denied, Denied, Denied, Denied | 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02132018 | 2018-02-13T15:43:37+00:00 |  | 000117404-01 | Cynthia | Brumfield | THE PLASTIC SURG GRP INC | 920859 | MICHAEL | LEADBETTER | 1548203623 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 02152018 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03272018 | 04272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213141 | E65, L304 | Erythema intertrigo | ICD10 | 02152018 | 15830 | EXCISION EXCESSIVE SKIN AND SUBCUTANEOUS TISSUE (INC LIPECTOMY) ABDOMEN | CPT | 1 | 1 | Approved | 32 | CPT | C4 | LVMM for provider requesting photo's of excessive skin of abdomen., VMM from Julie at Dr. Leadbetter's office  requested call back., , PC back to Julie  she required E-Mail which was provided., Photo's received via email but unable to open  email request sent back to Julie asking her to resend., Faxed photo's rec'd again  encrypted in a way that they can't be opened or are being block from being opened., Will call Julie back and ask specific questions related to what the pictures show., PC to Julie at 513-791-4440 to let her know that photo's are not viewable., She wants to try to fax one more time a different way. |  |  |  |  | 0 |
| 02142018 | 2018-02-14T09:22:27+00:00 | Q20401007 | 000085990-01 | Donald | Johnson | MERCY HEALTH PHYSICIANS | 921492 | TERESA O | SLOUGH | 1124222112 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 02152018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215043 | I359 | Nonrheumatic aortic valve disorder, unspecified | ICD10 | 02152018 | 71275, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T10:26:53+00:00 | Q20402398 | 000030897-01 | EUGENE | BUEHLER | NEURAL WATCH LLC | 936074 | MARTIN T | TAYLOR | 1043294481 | DUBLIN DIAGNOSTIC IMAGIN | 951370 | 1093249781 | PROSCAN IMAGING POLARIS | 1093249781 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING POLARIS | 02152018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215047 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02152018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T12:49:05+00:00 | Q20405264 | 000057879-01 | HOWARD | LEWINTER | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02152018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215072 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02152018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02152018 | 2018-02-15T10:09:13+00:00 |  | 000007520-01 | MICHAEL | MEADOWS | CHIODO, CATHERINE A | 925586 | CATHERINE A | CHIODO | 1063580199 | OHIOHEALTH PHYS GRP | 907590 | 1578545273 | GARY M ANSEL | 1932104387 | Out of Network Services | OONS | Pre-Service | PRE | GARY M | ANSEL | 02152018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 02152018 | 03152018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215086 | I70235 | Athscl native arteries of right leg w ulcer oth prt foot | ICD10 | 02152018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 29 | CPT | C4 | No clinical received with this Expedited request.  No CPT code provided., Call placed to provider  220-564-1994  and left voice message requesting a call back., Call from Terri in providers office.  She will fax clinicals. The request is for an evaluation and management. He is an amputee and they are trying to save his other leg. Need a Microvascular surgeon who works on feet. She could not find any in MediGolds Network., Call placed to Mt Carmel Vascular surgery and Licking Memorial Vascular Surgeons- neither perform microvascular surgery on the feet. |  |  |  |  | 0 |
| 02152018 | 2018-02-15T07:07:18+00:00 | 20410218 | 000009430-01 | Neil | Pritchard | UNIVERSITY RADIATION ONC | 952511 | ERIC D | MILLER | 1023375128 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02152018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03162018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180215092 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 02152018 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
