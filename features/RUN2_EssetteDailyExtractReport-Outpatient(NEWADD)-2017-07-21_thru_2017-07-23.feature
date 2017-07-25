Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-21_thru_2017-07-23
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-21_thru_2017-07-23
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
| 04242017 | 2017-04-24T09:38:19+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424008 | J439 | Emphysema, unspecified | ICD10 | 07222017 | G0463, 71020, 78582, 93307, 93306, 93320, 93000, 94010, 94060, 94720, 36600, 94620, 99245, 97802, 77080, 78264, 91034, 91010, 93880, 45378, 83894, 83912, 83898, 86695, 86696, 85705, 86832, 86833, 86828, 85303, 85306, 86765, 86777, 86787, 87389, 86803, 87340, 86706, 86704, 86708, 83890, 84311, 83892, 86665, 86645, 86644, 84156, 84540, 82570, 86900, 86901, 86850, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 80061, 83735, 84100, 84134, 85730, 85610, 84439, 80307, 84443, 82306, 83540, 84466, 83036, 82977, 82728, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86780, 86480, 86147 | CARDIOLIPIN (PHOSPHOLIPID) ANTIBODY | CPT | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T14:35:04+00:00 | Q18261837 | 000105506-01 | MAX | CARPENTER | MARIETTA MEM HSP | 947328 | SHINOJ | PATTALI JAYAVA | 1275849788 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 07222017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170427002 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 07222017 | 78815, J9201, J9264 | INJECTION, PACLITAXEL PROTEIN-BOUND PARTICLES, 1 MG | HCPCS | 1, 162, 3780 | 1, 162, 3780 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9201: 162 Gemcitabine 1670mg IV days 1 8 and 15 x 6 cycles (18 treatments).  Total billing units = 162; J9264: 3780 Paclitaxel 210mg IV day 1  8 and 15 x 6 cycles (18 treatments).  Total billing units = 3780 |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:09:53+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 07222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06062017 | 09062017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605005 | I8501, R7989, Z944 | Liver transplant status | ICD10 | 07222017 | 43260, 43262, 43264, 43274, 43275, 43276, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T15:39:07+00:00 |  | 000006937-01 | WILLIAM | SCHWARTZ | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | SANCTUARY TUTTLE CROSSING | 936556 | 1740274125 | SANCTUARY TUTTLE CROSSING | 1740274125 | Part B Therapy | OP THER | Pre-Service | PRE |  | SANCTUARY TUTTLE CROSSING | 07212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606162 | F0281, M6281, R278, R293 | Abnormal posture | ICD10 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  | Called facility  left voice mail for Laura in medical records requesting the signed NOMNC to close auth case with my number to call back with any questions 614-546-3102., Non Compliant NOMNC received |  |  |  |  | 0 |
| 06062017 | 2017-06-06T17:50:24+00:00 |  | 000093789-01 | Leila | Hollett | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607007 | K7460, K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 07222017 | 49083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T14:36:57+00:00 |  | 000081308-01 | Kathy | Shaw | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Predetermination Request | PR | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712170 | L987 | EXCESSIVE AND REDUNDANT SKIN AND SUBCUTANEOUS TISSUE | ICD10 | 07212017 | 15830 | EXCISION EXCESSIVE SKIN AND SUBCUTANEOUS TISSUE (INC LIPECTOMY) ABDOMEN | CPT | 1 | 1 | Approved | 63 | CPT | C4 | PHONE CALL TO SANDY W/DR BERNACKI  GAVE HER MY CONFIDENTIAL E-MAIL TO SEND PHOTOS.  SHE CONFIRMED E-MAIL AND WILL SEND., REC'D PHOTOS VIA E-MAIL 7/19/17 AT 1109 |  |  |  |  | 0 |
| 07132017 | 2017-07-13T16:53:00+00:00 |  | 000044466-01 | BETTY | MOORE | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170714052 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 07212017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Essette fax did not fax  Authorization and approval manually right faxed to JOELLE FERGUSON/ SAMEEK ROYCHODHURY MD  PhD AT THE JAMES COMPREHENSIVE CANCER CENTER |  |  |  |  | 0 |
| 07202017 | 2017-07-20T12:28:18+00:00 |  | 000070376-01 | Thomas | Joyce | RCHP WILMINGTON LLC | 949038 | STEVEN A | WALSTON | 1053623397 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720123 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 07212017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T15:47:10+00:00 |  | 000065626-01 | FRANK | HOLTER | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07242017 | 10242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720143 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 07212017 | 93294, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T09:08:46+00:00 | Q18841521 | 000044466-01 | BETTY | MOORE | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 01082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721007 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 07212017 | J2505, J2469, J9045, J9267, J1453, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 8, 60, 66, 2040, 900, 480 | 8, 60, 66, 2040, 900, 480 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9045: 66 INJECTION  CARBOPLATIN  50 MG  Dispensed as: 510.00 mg  1 treatment(s) each cycle  6 cycle(s); J9267: 2040 INJECTION  PACLITAXEL  1 MG  Dispensed as: 340.00 mg  1 treatment(s) each cycle  6 cycle(s); J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s); J1453: 900 Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s); J1100: 480 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 07202017 | 2017-07-20T12:56:37+00:00 | Q18908670 | 000028059-01 | MARY | SELBE | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721011 | C241 | Malignant neoplasm of ampulla of Vater | ICD10 | 07212017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T07:27:32+00:00 | Q18898786 | 000057744-01 | HELENE | FELTY | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | ADENA HEALTH SYSTEMS | 938858 | 0 | ADENA HEALTH SYSTEMS | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA HEALTH SYSTEMS | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721014 | C321 | Malignant neoplasm of supraglottis | ICD10 | 07212017 | 71260, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T15:53:43+00:00 | Q18870582 | 000112819-01 | PEGGY | VANHOOSIER | ONCOLOGY HEMATOLOGY CARE | 921705 | DAVID R | DROSICK | 1699768499 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07232017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721017 | C541 | Malignant neoplasm of endometrium | ICD10 | 07232017 | J9045, J1100, J1626, J9267, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 126, 560, 280, 2450, 70 | 126, 560, 280, 2450, 70 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T08:11:12+00:00 | Q18903050 | 000057688-01 | ALICE | LINVILLE | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721033 | D461 | Refractory anemia with ring sideroblasts | ICD10 | 07212017 | J0881 | INJECTION, DARBEPOETIN ALFA, 1 MICROGRAM (NON-ESRD USE) | HCPCS | 7200 | 7200 | Approved | 181 | HCPCS | HC | J0881: 7200 Darbepoetin Alfa (Aranesp) 150-300 mcg  SQ  QW  every 28 days  6 cycles |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:15:35+00:00 | Q18905422 | 000049754-01 | PAMELA | DAVIS | OH PHY MED & REHAB INC | 937306 | JON H | PEARLMAN | 1215915897 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721042 | M4722 | Other spondylosis with radiculopathy, cervical region | ICD10 | 07212017 | 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:19:33+00:00 | Q18905511 | 000076977-01 | Mary | Hill | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721043 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 07212017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:49:15+00:00 | Q18906142 | 000047737-01 | KENNETH | KENNARD | GRANDVIEW FAMILY PRCT | 937152 | CHARLES | MAY | 1982608642 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721044 | J329 | Chronic sinusitis, unspecified | ICD10 | 07212017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T11:47:57+00:00 | Q18907467 | 000029375-01 | RUBY | ZUMBRUN | COPC CENTRAL OHIO PRIMAR | 943140 | MIRIAM | GARCELLANO | 1710107180 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 07212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721055 | R1032 | Left lower quadrant pain | ICD10 | 07212017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T15:09:53+00:00 |  | 000063130-01 | JANET | FRAZEE | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHO ASSOC OF ZANESVILL | 933437 | 1942292388 | LACIE D BAKER | 1194126797 | DME | DME | Pre-Service | PRE | LACIE D | BAKER | 07212017 | Denied | TRINITY HEALTH | Fax | Not a Covered Benefit (PA) | Outpatient | 07212017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170712172 | M76821 | Posterior tibial tendinitis, right leg | ICD10 | 07212017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., 072117  X170712172 DENIAL LETTER & Denial auth Manually faxed |  |  |  |  | 0 |
| 07122017 | 2017-07-12T15:31:44+00:00 |  | 000100333-01 | Kathryn | Foor | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | ORTHOPEDIC ONE INC | 936949 | 1548289697 | DAVID F HUBER | 1518950740 | DME | DME | Pre-Service | PRE | DAVID F | HUBER | 07212017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 07212017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170712173 | E1140, L84, M2062 | Acquired deformities of toe(s), unspecified, left foot | ICD10 | 07212017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Received a call from Wanda Engle in Dr Huber's office at Orthopedic One  She stated MBR is to come in 7/26/17 for orthotic and was also wondering if we had processed denial Aware we need to take clinical documentation to Medical Director, Letter is written in appropriate language with no abbreviations and is therefore approved., Manually faxed denial letter and denial to Dr Huber's office and saved with case under attached documents |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:48:57+00:00 |  | 000118040-01 | Ronald | Forsythe | CHEN, CHAUR S | 902446 | CHAUR S | CHEN | 1447362603 | CHEN, CHAUR S | 902446 | 1447362603 | CHAUR S CHEN | 1447362603 | Out of Network Services | OONS | Pre-Service | PRE | CHAUR S | CHEN | 07212017 | Denied | MediGold Southeast OH Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 07212017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170717120 | M545, R52 | Pain, unspecified | ICD10 | 07212017 | 99572 | ACUPUNCTURE | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Called Dr Chan's office and requested fax number- 614-488-3415, Called Dr Chan's office and requested fax number- 614-488-3415, Manually faxed Denial letter and Denial to Dr Chen's office fax 614-488-3415 |  |  |  |  | 0 |
