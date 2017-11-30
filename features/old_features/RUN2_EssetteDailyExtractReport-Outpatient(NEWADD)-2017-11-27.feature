Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-27
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
| 11172017 | 2017-11-17T15:32:19+00:00 |  | 000088156-01 | Helen | Haskins | PREMIER HEALTH SPEC INC | 949505 | JONATHAN A | TUTTLE | 1871708768 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Out of Network Services | OONS | Pre-Service | PRE |  | MIAMI VALLEY HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120126 | S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 11272017 | 72040 | SPINE, CERVICAL, ANTEROPOST & LATRL | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T08:45:08+00:00 |  | 000050011-01 | JOHN | KAISER | OSU PSYCHIATRY LLC | 929640 | LAURA | BOXLEY | 1922341072 | OSU HARDING PROF BHSRVS | 907373 | 1972561892 | OSU HARDING PROF BHSRVS | 1972561892 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU HARDING PROF BHSRVS | 11272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12072017 | 01072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117120 | G250 | Essential tremor | ICD10 | 11272017 | 96118, 96119, 96120, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T10:24:00+00:00 | Q19834228 | 000102577-01 | Sharon | Poor | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11222017 | 12222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171123033 | E278 | Other specified disorders of adrenal gland | ICD10 | 11272017 | 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T08:19:47+00:00 | Q19641536 | 000059882-01 | PATRICIA | REITZ | MOUNT CARMEL HLTH PRVDRS | 935097 | ROBERT E | ZIMMERMAN | 1073556551 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101073 | R2689 | Other abnormalities of gait and mobility | ICD10 | 11272017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T12:40:10+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10302017 | 01302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031241 | C4011 | Malignant neoplasm of short bones of right upper limb | ICD10 | 11272017 | 97165, 97166, 97167, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T17:25:51+00:00 |  | 000100420-01 | Bernard | Rossi | LADSON, DARNELL | 907484 | DARNELL | LADSON | 1346332731 | LADSON, DARNELL | 907484 | 1346332731 | DARNELL LADSON | 1346332731 | OP Behavioral Health | OP BH | Pre-Service | PRE | DARNELL | LADSON | 11272017 | Approved | MediGold Essential Care | Member | Medical Criteria Met | Outpatient | 11012017 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023053 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 11272017 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 93 | CPT | C4 | Outreach to provider for clinical documentation made. |  |  |  |  | 0 |
| 10312017 | 2017-10-31T09:04:33+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10302017 | 01302018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031119 | C4011, M2560, Z96612 | Presence of left artificial shoulder joint | ICD10 | 11272017 | 97140, 97110, 97760, 97762, 97535, G0463, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 10312017 | 2017-10-31T09:35:03+00:00 |  | 000081722-01 | Lee | Rathbun | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10312017 | 11302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031123 | D4622 | Refractory anemia with excess of blasts 2 | ICD10 | 11272017 | 99205, 93300, 93304, 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC | Contacted Heather 614-383-6306 for CPT codes for Transplant evaluation  in order to process authorization.  No answer, Received return call from Heather.  Added CPT codes to authorization |  |  |  |  | 0 |
| 10182017 | 2017-10-18T10:59:40+00:00 |  | 000095092-01 | Vickie | Cook | OSU OTOLARYNGOLOGISTS LL | 927444 | AARON | MOBERLY | 1083872022 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 11272017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 10182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019070 | G960 | Cerebrospinal fluid leak | ICD10 | 11272017 | 99213, 92557, 92550, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T08:30:06+00:00 | Q19620330 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026101 | C61 | Malignant neoplasm of prostate | ICD10 | 11272017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 45 | 45 | Approved | 91 | HCPCS | HC | G6015: 45: G6015 45 |  |  |  |  | 0 |
| 11212017 | 2017-11-21T15:28:38+00:00 |  | 000029016-01 | MARGIE | JENKINS | WRITESEL, KENNETH A | 905904 | KENNETH A | WRITESEL | 1023078532 | AHF OHIO, INC. | 947789 | 1659733723 | SANCTUARY AT TUTTLE CROSSING | 1659733723 | Part B Therapy | OP THER | Pre-Service | PRE |  | SANCTUARY AT TUTTLE CROSSING | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11212017 | 12212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122129 | G309, G8929, M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 11272017 | 97110, 97112, 97116, 97530, 97110, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 0, 24, 24, 24, 24, 24, 24 | 24, 24, 24, 24, 24, 24, 24 | , Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T10:30:19+00:00 |  | 000046066-01 | JOHN | WAGNER | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 11272017 | Denied | MediGold Classic Preferred | Mail | Not a Covered Benefit (PA) | Outpatient | 11272017 | 11282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171020135 | K859 | Acute pancreatitis, unspecified | ICD10 | 11272017 | 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | HCPCS | HC | LATE ENTRY FOR 11/1/17 16:53:14.  DENIAL FAXED TO PROVIDER VIA RIGHT FAX.  FAILED IN ESSETTE  DUE TO LATENESS OF HOUR AND END OF BUSINESS DAY  FAXED IN THIS MANNER TO AVOID DELAY OF NOTIFICATION., THE LETTER TO MEMBER DID PRINT., ADDENDUM TO PREVIOUS NOTE.  FAXED DOCUMENTS AND CONFIRMATION RECEIPT UPLOADED TO DOCUMENTS |  |  |  |  | 0 |
| 11162017 | 2017-11-16T11:15:26+00:00 |  | 000063737-01 | LOIS | RISTAU | FAIRFIELD HLTHCARE PROFS | 952504 | ABHISHEK | JULKA | 1104086545 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Out of Network Services | OONS | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12272017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171127009 | G5601, G5602 | Carpal tunnel syndrome, left upper limb | ICD10 | 11272017 | 64721 | NEUROPLASTY,CARPAL/TARSAL TUNL.SYND | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T14:31:57+00:00 |  | 000095260-01 | James | Laspisa | CLEVELAND CLINIC FNDN | 922987 | AMIT | BHATT | 1134390032 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Post-Service | POST |  | CLEVELAND CLINIC FNDN | 11272017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 08012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X170724130 | K2270 | Barrett's esophagus without dysplasia | ICD10 | 11272017 | 99215, G0463, 43237, 43235, 43211 | ESOPHAGOSCOP MUCOSAL RESECT | CPT | 3, 3, 1, 1, 1 | 3, 3, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 | REQUEST FROM DR AMIT BHATT RECEIVED 7/26/17 @ 11:15:50, REQUEST FOR PROCEDURE WITH ALREADY APPROVED VISIT  AUTH UPDATE  NEW LETTER AND AUTH FAX SENT |  |  |  |  | 0 |
| 10242017 | 2017-10-24T13:23:11+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU INTERNAL MED LLC | 930983 | AMANDA | HETTINGA | 1710320528 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10312017 | 01312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025161 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 11272017 | 99211, 99212, 99213, 99214, 99215, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11022017 | 2017-11-02T15:07:32+00:00 |  | 000110263-01 | CATHERINE | COOPER | PICKAWAY HEALTH SERVICES | 902481 | DAVID E | MILLER | 1801895594 | PICKAWAY HEALTH SERVICES | 902481 | 1568569903 | DAVID E MILLER | 1801895594 | OP Behavioral Health | OP BH | Pre-Service | PRE | DAVID E | MILLER | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11082017 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103153 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 11272017 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 11022017 | 2017-11-02T10:50:39+00:00 |  | 000041901-01 | DONALD | LITTERINI | MOUNT CARMEL HLTH PRVDRS | 935177 | LOWELL ARICK | FORREST | 1912918616 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11222017 | 01222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103179 | J383 | Other diseases of vocal cords | ICD10 | 11272017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 11032017 | 2017-11-03T14:04:14+00:00 |  | 000114101-01 | Lenora | Bolinger | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11142017 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171106120 | C311, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 11272017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Care is authorized from 09/12-12/12/2017 on X170827029 |  |  |  |  | 0 |
| 11022017 | 2017-11-02T11:54:52+00:00 |  | 000084058-01 | Phillis | Mallett | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11082017 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103169 | C4492 | Squamous cell carcinoma of skin, unspecified | ICD10 | 11272017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11072017 | 2017-11-07T11:04:09+00:00 |  | 000100451-01 | Eugene | Allen | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11092017 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171107114 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 11272017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11102017 | 2017-11-10T15:29:02+00:00 |  | 000098026-01 | Gary | Lustgarten | PATIENT TRANSPORT SRVS O | 912320 |  | COLUMBUS CONNECTION | 0 | PATIENT TRANSPORT SRVS O | 912320 | 1164750451 | COLUMBUS CONNECTION | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | COLUMBUS CONNECTION | 11272017 | Denied | Flexible Choice PPO | Phone | Not Medically Necessary | Outpatient | 11272017 | 11282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171110084 | R6889 | Other general symptoms and signs | ICD10 | 11272017 | A0425, A0428, A0428 | AMBULANCE SERVICE, BASIC LIFE SUPPORT, NON-EMERGENCY TRANSPORT, (BLS) | HCPCS | 10, 1, 0 | 10, 1, 46 | Approved, Approved, Denied | 0, 0, 0 | HCPCS | HC | Approved for 10 miles of ambulance transport. Deny 46 miles or any additional mileage beyond 10 miles. |  |  |  |  | 0 |
