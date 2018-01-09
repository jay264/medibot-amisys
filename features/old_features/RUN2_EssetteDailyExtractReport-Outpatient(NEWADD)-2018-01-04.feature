Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-04
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
| 12132017 | 2017-12-13T16:55:51+00:00 |  | 000082226-01 | Neil | Fultz | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12142017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214094 | R221 | Localized swelling, mass and lump, neck | ICD10 | 01042018 | 92507, 92610, 92611, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 12152017 | 2017-12-15T10:34:01+00:00 |  | 000096691-01 | David | Blum | OSU INTERNAL MED LLC | 915375 | MARGARET S | LUCAS PA | 1578723961 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12152017 | 03152018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171215129 | C9110, D720, D759 | Disease of blood and blood-forming organs, unspecified | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 80053, 81479, 88184, 84550, 85652, 82784, 81406, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T08:37:33+00:00 | Q19997920 | 000094451-01 | Tanya | Jasinski | COASTLINE IMAGING INC | 916036 | DAVID R | FELDMAN | 1962505016 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | WEST CHESTER MEDICAL CENTER | 01042018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171218057 | Z8701 | Personal history of pneumonia (recurrent) | ICD10 | 01042018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:29:32+00:00 |  | 000073696-01 | Jane | Mcgrew | OSU INTERNAL MED LLC | 915375 | MARGARET S | LUCAS PA | 1578723961 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01092018 | 07092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104104 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 83615, 84550, 82784, 88184, 81406, 81479, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 | 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | HCPCS | HC |  |  |  |  |  | 0 |
| 01032018 | 2018-01-03T11:05:19+00:00 |  | 000096380-01 | Lucien | Mouawad | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01092018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180103104 | C01 | Malignant neoplasm of base of tongue | ICD10 | 01042018 | 31575, 43200, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T16:17:52+00:00 |  | 000082226-01 | Neil | Fultz | OSU GENERAL INTL MED LLC | 943295 | CARMEN | SKINNER | 1821056144 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01032018 | 04032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180102003 | C4490 | Unspecified malignant neoplasm of skin, unspecified | ICD10 | 01042018 | 36415, 94760, 83036, 93000, 85730, 85025, 71020, 85610, 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T16:24:51+00:00 |  | 000097457-01 | Catherine | Conley | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | THE TIMKEN COMPANY | Fax | Services Not Available In-Network | Outpatient | 01052018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180102004 | C4402 | Squamous cell carcinoma of skin of lip | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T13:21:31+00:00 |  | 000039482-01 | JAMES | HEDRICK JR | MOUNT CARMEL HLTH PRVDRS | 928331 | MOIRA | SKURATOWICZ | 1376976910 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 01042018 | 04042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104121 | G20 | Parkinson's disease | ICD10 | 01042018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC | PON: mbr approved for 3 visits at OSU for Parkinson's Disease, PON: member has another expedited auth X180104121  for office visits for Dr. Changzini |  |  |  |  | 0 |
| 01042018 | 2018-01-04T14:04:25+00:00 |  | 000039482-01 | JAMES | HEDRICK JR | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01042018 | 04042018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104122 | G20 | Parkinson's disease | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC | PON: approved for office visits w/ Dr. Changzini., Also another expedited for the same member: X180104121 |  |  |  |  | 0 |
| 12132017 | 2017-12-13T16:04:22+00:00 |  | 000110155-01 | Garland | Parsley | MOUNT CARMEL HLTH SYS | 917387 | JULIE A | HOLINGA | 1558487330 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12202017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214067 | Z86010 | Personal history of colonic polyps | ICD10 | 01042018 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 | Last colonoscopy was 05/15/2017 |  |  |  |  | 0 |
| 12132017 | 2017-12-13T05:49:00+00:00 | Q19973004 | 000113194-01 | TIMOTHY | POPE | ALLIANCE PHYSICIANS INC | 927831 | JORGE | ARZOLA | 1205856382 | ALLIANCE PHYSICIANS INC | 902713 | 1437125572 | ALLIANCE PHYSICIANS INC | 1437125572 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ALLIANCE PHYSICIANS INC | 01042018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12292017 | 06272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214062 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 01042018 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 0 | 0 | Approved | 181 | HCPCS | HC | J9031: 0: BCG (INTRAVESICAL) PER INSTILLATION  Dispensed as: 50.00 instill  1 treatment(s) each cycle  3 cycle(s) |  |  |  |  | 0 |
| 12072017 | 2017-12-07T12:44:00+00:00 | Q19934542 | 000028216-01 | RALPH | FRANKLIN | LICKING MEM HLTH PROF | 903568 | JACQUELINE J | JONES | 1134127038 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214098 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 01042018 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 32 | 32 | Approved | 181 | HCPCS | HC | J3489: 32: Zoledronic Acid 4 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 12132017 | 2017-12-13T16:26:22+00:00 |  | 000100451-01 | Eugene | Allen | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12172017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214080 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90 | HCPCS | HC |  |  |  |  |  | 0 |
| 12142017 | 2017-12-14T12:06:06+00:00 |  | 000074735-01 | Linda | Hatfield | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12142017 | 03162018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171214132 | C01 | Malignant neoplasm of base of tongue | ICD10 | 01042018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | ROI: Donald Larry Hatfield-spouse  740-796-3105,       Yvonne Sidwell-daughter   740-828-9177, member has been approved for referral to OSU/James for three visits for Malignant neoplasm of base of tongue  services not available in network, VMM from Joelle at OSU/James  asked for approval to faxed to her at 614-293-8762.  Joelle also sent in a request that might be a duplicate of this one., LVMM for Joelle  advised that this auth is for OV only.  , Will fax Joelle this approval. |  |  |  |  | 0 |
| 12082017 | 2017-12-08T14:58:26+00:00 |  | 000099528-01 | Larry | Conrad | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12132017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208117 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 94, 94, 94, 94, 94, 94 | HCPCS | HC |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T10:02:32+00:00 |  | 000085641-01 | LINDA | GRIESHEIMER | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12142017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208101 | D119, R220 | Localized swelling, mass and lump, head | ICD10 | 01042018 | 42104, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 33, 33 | HCPCS | HC |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T11:21:09+00:00 |  | 000101580-01 | LEE | WHITMER | OSU INTERNAL MED LLC | 907477 | STEVEN M | DEVINE | 1124036579 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12122017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211096 | C8310 | Mantle cell lymphoma, unspecified site | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82947, 84439, 84443, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T09:50:25+00:00 |  | 000049571-01 | MARGARET | STEINMETZ | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12182017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171204009 | S52501D, S53105D | Unsp dislocation of left ulnohumeral joint, subs encntr | ICD10 | 01042018 | 99214, 73080, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T10:51:16+00:00 |  | 000083407-01 | Joseph | Power Jr. | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12142017 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211097 | Z8521 | Personal history of malignant neoplasm of larynx | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T11:15:00+00:00 |  | 000063213-01 | DENNIS | WAUGH | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12132017 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211098 | C9101, D89811, Z9481 | Bone marrow transplant status | ICD10 | 01042018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, 36522, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | HCPCS | HC |  |  |  |  |  | 0 |
