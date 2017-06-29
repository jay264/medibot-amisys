Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-27
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
| 06212017 | 2017-06-21T16:11:28+00:00 |  | 000095025-01 | Sharon | Mccann | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06262017 | 09262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621159 | E042 | Nontoxic multinodular goiter | ICD10 | 06272017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463, 93000, 71020, 94760, 85730, 85610, 83036, 36415, 85025 | HMOGRM/PLTLT CT,AUTO/AUTO CMP DIFFT | CPT | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T07:53:01+00:00 | Q18090852 | 000010803-01 | ROBERT | WHITE | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 09262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622127 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 06272017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9031: 6 BCG 81 mg Intravesical every 1 week x 6 weeks (6 treatments ).  Total billing units = 6 |  |  |  |  | 0 |
| 06222017 | 2017-06-22T12:38:50+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622180 | C779 | Secondary and unsp malignant neoplasm of lymph node, unsp | ICD10 | 06272017 | 92507, 92610, 92612, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 1, 1, 1, 3 | 3, 3, 3, 3, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T13:18:14+00:00 |  | 000100451-01 | Eugene | Allen | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622182 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06272017 | 77334, G0463, 77399 | UNLISTED PROC, EXT RAD. DOSIMETRY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T11:01:55+00:00 |  | 000100451-01 | Eugene | Allen | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06272017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623130 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06272017 | 93284, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 8, 8 | 8, 8 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T08:20:18+00:00 | Q18686875 | 000027036-01 | NANCY | BUONI | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07102017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627001 | I7101 | Dissection of thoracic aorta | ICD10 | 06272017 | 71275, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T11:37:22+00:00 | Q18731657 | 000086252-01 | Rodger | Martin | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06272017 | 12242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627018 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 06272017 | J9201, J1100, J1626, J9060, J1453 | Fosaprepitant injection | HCPCS | 120, 480, 240, 120, 900 | 120, 480, 240, 120, 900 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9201: 120 Gemcitabine 1000 mg/m2  IV  days 1  15  every 28 days  6 cycles; J9060: 120 Cisplatin 50 mg/m2  IV  days 1  15  every 28 days  6 cycles; J1100: 480 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s); J1626: 240 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s); J1453: 900 Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 06262017 | 2017-06-26T10:31:07+00:00 | Q18730328 | 000047022-01 | CAROLE | SCHOONOVER | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627019 | C5702 | Malignant neoplasm of left fallopian tube | ICD10 | 06272017 | 74178, 71270 | CAT SCAN THORAX W/WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T11:28:56+00:00 | Q18716384 | 000057962-01 | VERNON | BROWN | RCHP WILMINGTON LLC | 947943 | ADEWALE A | FAWOLE | 1073742359 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627020 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 06272017 | J9047, J1100, J8540 | DEXAMETHASONE, ORAL, 0.25 MG | HCPCS | 4464, 480, 3840 | 4464, 480, 3840 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T21:10:38+00:00 | Q18708492 | 000075812-01 | Gloria | Morris | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 904350 | 1598868655 | GENESIS HEALTHCARE SYSTEM 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM 1500 | 06272017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627022 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 06272017 | J9171, J1100, J1453, J9070, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 600, 320, 600, 48, 40 | 600, 320, 600, 48, 40 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9171: 600 (TC) Docetaxel 75 mg/m2  IV  day 1  every 21 days  4 cycles; J9070: 48 Cyclophosphamide 600 mg/m2  IV  day 1  every 21 days  4 cycles; J1100: 320 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  4 cycle(s); J1453: 600 Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  4 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 06152017 | 2017-06-15T15:35:40+00:00 | Q18590901 | 000051251-01 | RICHARD | BANKS | PICKAWAY HEALTH SERVICES | 937270 | ARNOLD N | PALMER | 1740274539 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627025 | K580 | Irritable bowel syndrome with diarrhea | ICD10 | 06272017 | 74160, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T09:31:01+00:00 | Q18726128 | 000112323-01 | Anita | Samson | ALLIANCE PHYSICIANS INC | 904472 | ROBERT G | SICKINGER | 1740210277 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 06272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627051 | D869 | Sarcoidosis, unspecified | ICD10 | 06272017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T18:09:19+00:00 | Q18726931 | 000006262-01 | LARRY | BICE | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627056 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06272017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06242017 | 2017-06-24T06:50:58+00:00 | Q18709716 | 000069283-01 | VIRGINIA | TAWZER | ADENA MEDICAL GROUP LLC | 939749 | GREGORY M | THOMPSON | 1750512349 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06302017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627061 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06272017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T07:37:41+00:00 | Q18713687 | 000084491-01 | Dorothy | Campbell | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627066 | Z9861 | Coronary angioplasty status | ICD10 | 06272017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T12:02:23+00:00 | Q18732140 | 000048221-01 | KIRK | OLNEY | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627085 | R2242 | Localized swelling, mass and lump, left lower limb | ICD10 | 06272017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T06:39:58+00:00 | Q18727378 | 000093606-01 | Valerie | Snider | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 06272017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627113 | M5416 | Radiculopathy, lumbar region | ICD10 | 06272017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T08:17:22+00:00 | Q18727991 | 000026292-01 | DONALD | MCKEE | COPC CENTRAL OHIO PRIMAR | 927416 | ANDREW K | RHINEHART | 1427360643 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06272017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627125 | R42 | Dizziness and giddiness | ICD10 | 06272017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T08:27:22+00:00 | Q18728055 | 000045553-01 | Ronald | Young | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627127 | Z45018 | Encounter for adjust and mgmt oth prt cardiac pacemaker | ICD10 | 06272017 | 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T09:17:00+00:00 | Q18728898 | 000117886-01 | David | Smith | AVERA QUEEN OF PEACE | 928006 | JESSICA M | THURMAN | 1235401852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627140 | R0609 | Other forms of dyspnea | ICD10 | 06272017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T09:47:08+00:00 | Q18729372 | 000080533-01 | Harry | Sizemore | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627146 | I4430 | Unspecified atrioventricular block | ICD10 | 06272017 | 33207, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T12:28:42+00:00 |  | 000102808-01 | JULIE | BYRD | R WADE MCKENNA DO | 951350 | R WADE | MCKENNA | 1063477552 | R WADE MCKENNA DO | 951350 | 1063477552 | R WADE MCKENNA | 1063477552 | Out of Network Services | OONS | Pre-Service | PRE | R WADE | MCKENNA | 06272017 | Denied | MediGold Southeast OH Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 06272017 | 06282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170626116 | M25569 | Pain in unspecified knee | ICD10 | 06272017 | 20999 | UNLSTD PROC MUSCULOSKELETAL SYSTEM | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
