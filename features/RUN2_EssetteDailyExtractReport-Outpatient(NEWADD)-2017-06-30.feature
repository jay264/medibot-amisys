Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-30
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-30
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
| 06212017 | 2017-06-21T11:13:51+00:00 |  | 000080168-01 | Daniel | Hunter | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | MOLECULAR PROFILING INSTITUTE | 915766 | 1013973866 | MOLECULAR PROFILING INSTITUTE | 1013973866 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MOLECULAR PROFILING INSTITUTE | 06302017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06232017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621158 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 06302017 | 81170, 81202, 81211, 81235, 81245, 81272, 81295, 81298, 81311, 81314, 81401, 81403, 81404, 81405, 81406, 81407, 81408, 81479, 81401, 81405, 81479, 88360 | TUMOR IMMUNOHISTOCHEM/MANUAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T14:28:24+00:00 |  | 000031212-01 | JERRY | MUSICK | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08152017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626125 | J439 | Emphysema, unspecified | ICD10 | 06302017 | 36600, 94726, 94620, 94010, 94729, 99213, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T00:16:18+00:00 | Q18752793 | 000002159-01 | RUTH | ANDERSON | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 06302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630014 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 06302017 | J9305, J2505, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 8, 640, 80 | 1, 8, 640, 80 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9305: 800 Pemetrexed 500 mg/m2  IV  day 1  every 21 days  8 cycles; J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 21 days  8 cycles; J1100: 640 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s); J2469: 80 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 06292017 | 2017-06-29T10:35:20+00:00 | Q18762550 | 000028059-01 | MARY | SELBE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630017 | C241 | Malignant neoplasm of ampulla of Vater | ICD10 | 06302017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T11:49:51+00:00 | Q18751974 | 000092802-01 | James | Thompson | GENESIS MEDICAL GRP LLC | 941995 | GRANT V | CHOW | 1184771701 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06302017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 08272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630020 | T82110A | Breakdown (mechanical) of cardiac electrode, init encntr | ICD10 | 06302017 | 33235, 33216, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T12:20:25+00:00 | Q18764468 | 000079671-01 | William | Aguiluz | ONCOLOGY HEMATOLOGY CARE | 920856 | EVAN Z | LANG | 1639163033 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 06302017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07072017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630029 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06302017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T11:41:11+00:00 | Q18750869 | 000087064-01 | James | Hall | SELBY GENERAL HOSPITAL | 921969 | DEVAKI S | SIVA | 1982823290 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 06302017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 01082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630038 | C61 | Malignant neoplasm of prostate | ICD10 | 06302017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J9217: 8 Leuprolide 22.5 mg  IM  day 1  every 84 days  2 cycles |  |  |  |  | 0 |
| 06292017 | 2017-06-29T09:56:51+00:00 | Q18761779 | 000053270-01 | STANLEY | GUNN | COPC CENTRAL OHIO PRIMAR | 934893 | KIMBERLY A | STOCK | 1053307827 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630074 | K4001 | Bilateral inguinal hernia, w obst, w/o gangrene, recurrent | ICD10 | 06302017 | 72192 | CAT SCAN PELVIS WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T08:46:48+00:00 |  | 000065994-01 | ARNOLD | WITT | CLEVELAND CLINIC FNDN | 943467 | KRISTIN B | HIGHLAND | 1740384528 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06302017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630094 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 06302017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T08:28:00+00:00 | Q18760006 | 000002818-01 | KATHALENE | THOMAS | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630124 | S064X9A | Epidural hemorrhage w LOC of unsp duration, init | ICD10 | 06302017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T10:13:17+00:00 |  | 000030473-01 | MARY JO | STRATTON | OSU SURGERY LLC | 908231 | E C | ELLISON | 1700838604 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07072017 | 08072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630135 | K869 | Disease of pancreas, unspecified | ICD10 | 06302017 | 43232, 43238, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
