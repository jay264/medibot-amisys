Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-18
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
| 10172017 | 2017-10-17T11:46:46+00:00 | Q19559882 | 000056803-01 | EDWARD | JOHNSON | MADISON FAMILY HEALTH | 942170 | DOUGLAS R | CLOSSER | 1982839312 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018021 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10182017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T09:49:43+00:00 | Q19557101 | 000069573-01 | DAVID | HORN | NEUROSURGICAL ASSOCIATES | 933015 | MEGHAN A | RAUCHENSTEIN | 1326232307 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018082 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 10182017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T10:07:18+00:00 | Q19557424 | 000100933-01 | Juanita | Lamm | GREENE MEM HSP SRVS INC | 933646 | EWA A | CAMPBELL | 1710270889 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018084 | R0602 | Shortness of breath | ICD10 | 10182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10162017 | 2017-10-16T11:07:25+00:00 | Q19548001 | 000027104-01 | SONYA | CRAWFORD | MOUNT CARMEL HLTH PRVDRS | 937027 | ANDREW P | KLAUS | 1376545319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018093 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10182017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T07:43:00+00:00 | Q19502297 | 000042900-01 | FREIDA | DRAUDT | STUART R SCHILLING DPM I | 906075 | RICHARD A | SCHILLING | 1245238849 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 11092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018115 | M79672 | Pain in left foot | ICD10 | 10182017 | 73723 | MRI JOINT LWR EXTR W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T08:24:00+00:00 | Q19502455 | 000053357-01 | Ruby | Fugate | DAYTON CTR FOR NEURO DIS | 942296 | MEGAN | MACKENZIE | 1912274994 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018116 | I639 | Cerebral infarction, unspecified | ICD10 | 10182017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T15:04:45+00:00 | Q19510490 | 000113785-01 | Timothy | Black | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018120 | C61 | Malignant neoplasm of prostate | ICD10 | 10182017 | 72195 | MRI PELVIS W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T16:33:40+00:00 |  | 000105689-01 | RONALD | CONLEY | OH GASTRO GRP INC | 918776 | PRIYA M | ROY | 1043492895 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Out of Network Services | OONS | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016094 | K5100 | Ulcerative (chronic) pancolitis without complications | ICD10 | 10182017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T12:33:00+00:00 | Q19519387 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 908504 | WILLIAM E | BLOCH | 1023013505 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 04142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018125 | C61 | Malignant neoplasm of prostate | ICD10 | 10182017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10182017 | 2017-10-18T08:33:32+00:00 |  | 000102081-01 | DELLAS | HOLLAND | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10182017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 10182017 | 10192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171018095 | M19072, M76821, M76822 | Posterior tibial tendinitis, left leg | ICD10 | 10182017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Per Voyager  no ROI on file  no alternate phone number., (614) 877-1789, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10132017 | 2017-10-13T10:59:16+00:00 |  | 000079515-01 | Thomas | Dodd | OSU SURGERY LLC | 943637 | MARY E | DILLHOFF | 1518174739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016077 | K862 | Cyst of pancreas | ICD10 | 10182017 | 93000, 71020, 94760, 99201, 99202, 99203, 99204, 99205, 85730, 85610, 83036, 85025, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T08:13:17+00:00 |  | 000076284-01 | Fred | Polk | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10132017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012155 | C155, C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 10182017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T13:57:02+00:00 |  | 000102648-01 | Ellen | Williams | COMMUNITY URG CARE CTR | 935197 | M HUSAIN | JAWADI | 1972532703 | RGH ENTERPRISES INC | 904699 | 1609858729 | EDGEPARK MEDICAL SUPPLIES | 1609858729 | DME | DME | Pre-Service | PRE |  | EDGEPARK MEDICAL SUPPLIES | 10182017 | Denied | MediGold Essential Care | Member | Not a Covered Benefit (PA) | Outpatient | 10182017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171009151 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 10182017 | A9276, A9277 | External transmitter, CGM | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Outreach to provider for clinical documentation made., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10032017 | 2017-10-03T12:42:21+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01042018 | 05042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003155 | G250 | Essential tremor | ICD10 | 10182017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 121, 121, 121 | HCPCS | HC |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T12:45:00+00:00 |  | 000095868-01 | Thomas | Branson | CEI PHYSICIANS PSC INC | 920975 | JEFFREY A | NERAD | 1023019262 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Out of Network Services | OONS | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 10182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10202017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170929112 | H02403 | Unspecified ptosis of bilateral eyelids | ICD10 | 10182017 | 67904, 67904 | REP OF BLEPHAROPTOSIS EXT APPROACH | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T13:04:08+00:00 |  | 000015705-01 | OTTO | NEIKE | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10102017 | 01102018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009148 | E8889, N390, R197 | Diarrhea, unspecified | ICD10 | 10182017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85652, 80053, 83615, 84550, 84443, 82248, 84450, 82310, 83735, 84100, 82565, 82565, 84520, 82374, 82435, 84132, 82947, 84295, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T11:36:22+00:00 |  | 000090415-01 | Ricky | Bailey | MERRITT, ROBERT E | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10132017 | 11132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009146 | C155 | Malignant neoplasm of lower third of esophagus | ICD10 | 10182017 | 43249, 43235, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T10:22:58+00:00 |  | 000053825-01 | JAMES | JUNE | OSU PSYCHIATRY LLC | 930340 | ERICA L | DAWSON | 1679917017 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911134 | G250 | Essential tremor | ICD10 | 10182017 | 96118, 96119, 96120, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T13:02:15+00:00 | Q19464925 | 000065695-01 | ROBERT | DETILLION | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA MEDICAL GROUP LLC | 913325 | 1235468083 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10042017 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010012 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 10182017 | J9047, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 780, 160 | 780, 160 | Approved, Approved | 181, 181 | HCPCS | HC | J9047: 780: INJECTION  CARFILZOMIB  1 MG  Dispensed as: 65.00 mg  6 treatment(s) each cycle  2 cycle(s): J1100: 160: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 08152017 | 2017-08-15T15:41:37+00:00 |  | 000086202-01 | Frances | Cassandro | OSU INTERNAL MED LLC | 909411 | CRAIG C | HOFMEISTER | 1497785232 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 08182017 | 11182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815172 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 10182017 | 99211, 99212, 99213, 99214, 99215, 86334, 86334, 82784, 84165, 83883, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 6, 0, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 6, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Void, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09262017 | 2017-09-26T09:39:00+00:00 | Q19397041 | 000088136-01 | Nicholas | Nye | OHIO PAIN CLINIC LLC | 910334 | AMOL | SOIN | 1316135585 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010065 | M542 | Cervicalgia | ICD10 | 10182017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:11:07+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10182017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 10062017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010137 | Z942 | Lung transplant status | ICD10 | 10182017 | G0239, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 24, 1 | 24, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T16:33:16+00:00 | Q19496610 | 000076130-01 | Richard | Sayatovich | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 04082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010148 | C154 | Malignant neoplasm of middle third of esophagus | ICD10 | 10182017 | J9267, J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 5, 5, 5 | 5, 5, 5 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T16:40:58+00:00 | Q19497241 | 000098486-01 | Perry | Swartz | GENESIS MEDICAL GRP LLC | 952067 | PHU N | TRAN | 1891089587 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10102017 | 04082018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010149 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10182017 | J9060, J9181, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 6, 18, 6, 6 | 6, 18, 6, 6 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T11:10:48+00:00 |  | 000072678-01 | Philip | Willette | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10182017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 10182017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171003147 | M2170 | Unequal limb length (acquired), unspecified site | ICD10 | 10182017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10062017 | 2017-10-06T10:48:12+00:00 |  | 000109137-01 | Salina | Jewell | LOWER LIGHTS CHRISTIAN H | 924708 | JENNIFER J | HARTMAN | 1811008840 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 10182017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 10182017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171006144 | I7409, M25552, Q6589, Q669 | Congenital deformity of feet, unspecified | ICD10 | 10182017 | K0898 | Power wheelchair NOC | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | LVMM for Seth at Rehab Medical 7665-425-0227  requested call back  inquired about specific info 300ES and the Power Mobility Device LCD., Request sent to Seth at Rehab Medical 844-429-9452., Will wait on call back to process further., 2:18 PM 10/6/2017 Conversion Record,    [RFPD050.tmp.PRT],    Type: application/x-pcl,    G3 to TIFF attempt 1: Success (299ms),    Image Optimization attempt 1: Success (5ms),    PCL6 attempt 1: Success (473ms),    (COCBFXTRFAF01:WORKSRV3), , 2:18 PM 10/6/2017 Conversion Record,    Successfully created cover sheet.,    Type: message/rfc822,    G3 to TIFF attempt 1: Success (25ms),    GhostScript TIFF attempt 1: Success (382ms),    PhantomJS attempt 1: Success (624ms),    Resubmitted [text/html],    MHTML attempt 1: Success (16ms) [text/html],    (COCBFXTRFAF01:WORKSRV6), , 2:19 PM 10/6/2017 Transmission Record,    Sent to: Seth,    Phone: 918444299452,    Billing information: ''  '',    Remote ID: Rehab Medical,    Unique ID: RF259D790C4C247,    Elapsed time: 5 minutes  31 seconds.,    Used channel 6 on server COCBAP-DTRANS01.,    No ANI data.,    No AOC data.,    Resulting status code (0/339; 0/0): Success,    Pages sent: 1 - 14,    Delegate ID: , PC from Seth  relays that Rehab medical delivered a POV in the past  member didn't accept the chair because the base/wheels weren't big enough  Seth felt that she intended to go outside with chair.  , He explains that the requested chair 600ES is the Cadillac of all POV's and the no Medicare company covers it because there are other chairs of similar quality that meet the LCD., He is going to get back to me on  more specifics related to this chair and what is typically covered., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10082017 | 2017-10-08T09:48:09+00:00 |  | 000008037-01 | LOWELL | ALIFF | BUCKEYE DERMATOLOGY INC | 906112 | DEAN W | HEARNE | 1932117579 | BUCKEYE DERMATOLOGY INC | 906112 | 1568560456 | DEAN W HEARNE | 1932117579 | DME | DME | Pre-Service | PRE | DEAN W | HEARNE | 10182017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 10182017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171009091 | I509 | Heart failure, unspecified | ICD10 | 10182017 | A6531 | GRADIENT COMPRESSION STOCKING, BELOW KNEE, 30-40 MMHG, EACH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Outreach to provider for clinical documentation made., PC to member  he is very HOH  gives permission to speak to his wife Meredith on his behalf., She relays that he has had ulcers on his feet in the past  almost always has swelling  once had to have a scab removed on his foot., He doesn't currently have any open area's or ulcers., She took a prescription to the DME store near her house and they told her that compression stocking are not a covered medicare benefit., She called in to request the stocking hoping that they might be approved for coverage., Clinical information was received from his doctor  he has had ulcers on his feet in the past but nothing to support CMS guidelines for coverage; ie: open venous stasis ulcers that require debridement., Advised that the item will be denied by the medical director and she would get a letter in the mail stating this., She understood and thanked me for trying., ROI form completed, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10102017 | 2017-10-10T08:59:20+00:00 |  | 000097196-01 | Richard | Kulp | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010090 | C321 | Malignant neoplasm of supraglottis | ICD10 | 10182017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
