Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-18
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
| 12062017 | 2017-12-06T17:06:32+00:00 |  | 000033613-01 | CHARLES | AVERY | MOUNT CARMEL HLTH PRVDRS | 936887 | JOHN S | HEINTZ | 1255323440 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 12182017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 12182017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171207101 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 12182017 | E1392 | PORTABLE OXYGEN CONCENTRATOR, RENTAL | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | LVMM for Angela Cobb at Cornerstone  614-866-5520  ext: 15215., Need to ask about Medicare guidelines for requested items., LVMM for Angela Cobb again.  Requested return call., PC to Angela Cobb at Cornerstone  she confirms that portable Oxygen concentrators are NOT a medicare covered item., PON: Portable oxygen concentrator has been denied  not a covered Medicare item  this is an item that the member must purchase if wanted., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 12142017 | 2017-12-14T13:48:31+00:00 | Q19986615 | 000110498-01 | Alta | Miller | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAJ MEDICAL INC | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218014 | R0602 | Shortness of breath | ICD10 | 12182017 | 78472, 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T13:49:31+00:00 | Q19656658 | 000104193-01 | Beverly | Bintz | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12182017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10312017 | 04292018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031126 | C8316 | Mantle cell lymphoma, intrapelvic lymph nodes | ICD10 | 12182017 | J9310, J9041, J9000, J9070, J2505, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 8, 32, 8, 8, 8, 8, 8 | 8, 32, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T18:28:14+00:00 |  | 000074735-01 | Linda | Hatfield | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12182017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 12192017 | 03192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218018 | R220 | Localized swelling, mass and lump, head | ICD10 | 12182017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T15:09:31+00:00 | Q19987922 | 000052364-01 | Edward | Barker | LICKING MEM HLTH PROF | 917807 | HASSAN | RAJJOUB | 1811060999 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218049 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 12182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T07:09:57+00:00 | Q19989856 | 000099989-01 | Evelyn | Johnson | ONCOLOGY HEMATOLOGY CARE | 903755 | JOSEPH R | SEE | 1649226085 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 12182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218056 | C50111 | Malignant neoplasm of central portion of right female breast | ICD10 | 12182017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24: Zoledronic Acid 4 mg  IV  day 1  every 28 days  6 cycles |  |  |  |  | 0 |
| 12152017 | 2017-12-15T07:34:01+00:00 | Q19989948 | 000114914-01 | Dorothy | Lanch | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218059 | M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 12182017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T08:37:33+00:00 | Q19997920 | 000094451-01 | Tanya | Jasinski | COASTLINE IMAGING INC | 916036 | DAVID R | FELDMAN | 1962505016 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | WEST CHESTER MEDICAL CENTER | 12182017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218057 | Z8701 | Personal history of pneumonia (recurrent) | ICD10 | 12182017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T08:29:34+00:00 | Q19990531 | 000032180-01 | GAIL | MCDONALD | COPC CENTRAL OHIO PRIMAR | 952417 | CAITLIN E | KESARI | 1740549450 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218066 | M542 | Cervicalgia | ICD10 | 12182017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12122017 | 2017-12-12T15:21:57+00:00 |  | 000111284-01 | Lester | Lincicome | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12182017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12182017 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171212125 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 12182017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T13:45:45+00:00 | Q19986351 | 000066047-01 | TODD | ELL | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218077 | C61 | Malignant neoplasm of prostate | ICD10 | 12182017 | G0340 | IMAGE-GUIDED ROBOTIC LINEAR ACCELERATOR-BASED STEROTACTIC RADIOSURGERY, | HCPCS | 5 | 5 | Approved | 91 | HCPCS | HC | G0340: 5: G0340 5 |  |  |  |  | 0 |
| 12152017 | 2017-12-15T13:25:45+00:00 | Q19995362 | 000030752-01 | THERESA | GIDDINGS | ORTHOPEDIC ONE INC | 906465 | VICTOR BRANDON | THOMPSON | 1154382943 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218090 | M5137 | Other intervertebral disc degeneration, lumbosacral region | ICD10 | 12182017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T17:55:16+00:00 |  | 000043343-01 | JACK | DODRILL | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12202017 | 02202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218098 | C44329, K1230 | Oral mucositis (ulcerative), unspecified | ICD10 | 12182017 | 92552, 92553, 92567, 92588, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T10:53:50+00:00 | Q19998612 | 000049497-01 | JOHN | GROOME | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12182017 | 06162018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218102 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 12182017 | J9181, J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 12, 4, 4 | 12, 4, 4 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T16:46:53+00:00 |  | 000059856-01 | MARY | DEAN | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12192017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218080 | K1329 | Other disturbances of oral epithelium, including tongue | ICD10 | 12182017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 12132017 | 2017-12-13T16:04:22+00:00 |  | 000110155-01 | Garland | Parsley | MOUNT CARMEL HLTH SYS | 917387 | JULIE A | HOLINGA | 1558487330 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12182017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12202017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214067 | Z86010 | Personal history of colonic polyps | ICD10 | 12182017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 | Last colonoscopy was 05/15/2017 |  |  |  |  | 0 |
| 12142017 | 2017-12-14T09:36:36+00:00 |  | 000007477-01 | POLLY | VARNEY | MOUNT CARMEL HLTH SYS | 934874 | MARK | STECHSCHULTE | 1043204373 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 12182017 | Approved | THE TIMKEN COMPANY | Fax | Medical Criteria Met | Outpatient | 12202017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214110 | D123 | Benign neoplasm of transverse colon | ICD10 | 12182017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
