Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-11_thru_2017-08-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-11_thru_2017-08-13
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
| 08102017 | 2017-08-10T10:14:12+00:00 | Q19061215 | 000118099-01 | STEVEN | HOCKETT | WILMINGTON PHYS GRP LLC | 930375 | STEVEN R | WEBER | 1396701926 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811020 | R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 08112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T12:07:41+00:00 |  | 000026597-01 | JAMES | DEFAZIO | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | ADVANCED RESPIRATORY INC | 937839 | 1053357905 | ADVANCED RESPIRATORY INC | 1053357905 | DME | DME | Pre-Service | PRE |  | ADVANCED RESPIRATORY INC | 08112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07312017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731108 | J479 | Bronchiectasis, uncomplicated | ICD10 | 08112017 | E0483 | HIGH FREQUENCY CHEST WALL OSCILLATION AIR-PULSE GENERATOR SYSTEM, (INCLU | HCPCS | 1 | 1 | Approved | 93 | HCPCS | HC | Called Samantha Moraguerra at Advanced Respiratory (Phone 651-234-1629 requesting another fax # She gave me 800-870-8452, Essette fax did not fax Authorization and approval manually right faxed to DYLAN J WIRTZ MD  MOUNT CARMEL HLTH PRVDR &  Samantha Moraguerra/Advanced Respiratory INC |  |  |  |  | 0 |
| 08102017 | 2017-08-10T17:06:17+00:00 | Q19068653 | 000020641-01 | ROBERT | CLIFTON | CEN OH UROLOGY GRP INC | 901105 | LINDA | OSBORNE | 1861463721 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812071 | C61 | Malignant neoplasm of prostate | ICD10 | 08122017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08092017 | 2017-08-09T14:07:15+00:00 | Q19053532 | 000029726-01 | Bernard | Edwards | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811066 | C61 | Malignant neoplasm of prostate | ICD10 | 08112017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J9217: 8 Leuprolide 22.5 mg  IM  day 1  every 84 days  2 cycles |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:29:31+00:00 | Q19057638 | 000111157-01 | Dorothea | Morgan | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811009 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 08112017 | 70491, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T07:42:37+00:00 | Q19069401 | 000075397-01 | Sylvia | Kinney | S ZANESVILLE FAM MED CTR | 922038 | RONALD J | KALCHIK | 1043200249 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 08122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812019 | J45909 | Unspecified asthma, uncomplicated | ICD10 | 08122017 | 71270 | CAT SCAN THORAX W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T13:50:17+00:00 | Q18977200 | 000044632-01 | CAROLE | VANHOOSE | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803069 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 08112017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J3489: 8 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 08102017 | 2017-08-10T08:32:25+00:00 | Q19059190 | 000114166-01 | Shelby | Farr | BEAVERTOWN CLINIC INC | 900900 | KARL G | ROSE | 1235136029 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811094 | I482 | Chronic atrial fibrillation | ICD10 | 08112017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T11:11:13+00:00 | Q18806118 | 000101894-01 | Judith | Pacino | FAIRFIELD HLTHCARE PROFS | 920348 | LINDA A | STALEY | 1821251497 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170711070 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 08112017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T13:10:34+00:00 | Q19064615 | 000073186-01 | Karolyn | Shaw | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811038 | C50312 | Malig neoplasm of lower-inner quadrant of left female breast | ICD10 | 08112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T07:55:32+00:00 |  | 000093734-01 | Michael | Bland | OSU SURGERY LLC | 909342 | CARL R | SCHMIDT | 1386802460 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726107 | K868 | Other specified diseases of pancreas | ICD10 | 08112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T14:34:03+00:00 | Q18981934 | 000067681-01 | PAMELA | BARRETT | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803075 | C7A010 | Malignant carcinoid tumor of the duodenum | ICD10 | 08112017 | J2353 | INJECTION, OCTREOTIDE, DEPOT FORM FOR INTRAMUSCULAR INJECTION, 1 MG | HCPCS | 120 | 120 | Approved | 182 | HCPCS | HC | J2353: 120 INJECTION  OCTREOTIDE  DEPOT FORM FOR INTRAMUSCULAR INJECTION  1 MG  Dispensed as: 30.00 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 08102017 | 2017-08-10T10:08:03+00:00 | Q19061080 | 000068453-01 | THOMAS | COVENTRY | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | ORTHO SPEC & SPORTS MED | 938453 | 1710983200 | ORTHOPAEDIC SPEC & SPORTS MED INC | 1710983200 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPAEDIC SPEC & SPORTS MED INC | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811018 | M5412 | Radiculopathy, cervical region | ICD10 | 08112017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T09:08:41+00:00 | Q19059936 | 000072011-01 | Marjorie | Lott | COPC CENTRAL OHIO PRIMAR | 936781 | MARY S | GRULKOWSKI | 1760420707 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811098 | R1906 | Epigastric swelling, mass or lump | ICD10 | 08112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T14:43:39+00:00 | Q19066472 | 000087451-01 | William | Short | DAYTON PHYSICIANS LLC | 909670 | KETAN S | SHAH | 1083664023 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 08122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812058 | C61 | Malignant neoplasm of prostate | ICD10 | 08122017 | J9293, J7510 | PREDNISOLONE ORAL PER 5 MG | HCPCS | 40, 336 | 40, 336 | Approved, Approved | 181, 181 | HCPCS | HC | J9293: 40 Mitoxantrone 12 mg/m2  IV  day 1  every 21 days  8 cycles; J7510: 336 Prednisone 5 mg  PO  BID  QD  every 21 days  8 cycles |  |  |  |  | 0 |
| 08112017 | 2017-08-11T10:53:58+00:00 | Q19072619 | 000097025-01 | Suzanne | Lawrence | CANYON MEDICAL CENTER | 935666 | PAUL E | SHOAPS | 1902855562 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812089 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08122017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T09:53:39+00:00 |  | 000077003-01 | Diane | Saxton | OSU INTERNAL MED LLC | 907311 | DON M | BENSON | 1003862236 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08112017 | Denied | MediGold Classic Preferred | Mail | Services Available In-Network | Outpatient | 08112017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170802124 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 08112017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08102017 | 2017-08-10T11:31:01+00:00 | Q19062742 | 000075563-01 | Barbara | Dowell | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 02062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811027 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 08112017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08102017 | 2017-08-10T17:55:44+00:00 | Q19068844 | 000057322-01 | JOHN | DOUGLAS | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812072 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08122017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:22:20+00:00 | Q19042236 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 02122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811010 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 08112017 | J9025, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 3906, 240 | 3906, 240 | Approved, Approved | 181, 181 | HCPCS | HC | J9025: 3906 INJECTION  AZACITIDINE  1 MG  Dispensed as: 93.00 mg  7 treatment(s) each cycle  6 cycle(s); J1626: 240 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08102017 | 2017-08-10T10:02:35+00:00 | Q19022360 | 000030358-01 | Joseph | Sullivan | CEN OH UROLOGY GRP INC | 937030 | RICHARD | KLUMP | 1114971512 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812096 | C61 | Malignant neoplasm of prostate | ICD10 | 08122017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:30:59+00:00 | Q18995121 | 000097238-01 | Ruth | Wright | OH ONCOLOGY & HEMATOLOGY | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804077 | D480 | Neoplasm of uncertain behavior of bone/artic cartl | ICD10 | 08112017 | J0897 | Denosumab injection | HCPCS | 1440 | 1440 | Approved | 181 | HCPCS | HC | J0897: 1440 INJECTION  DENOSUMAB  1 MG  Dispensed as: 120.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 08092017 | 2017-08-09T14:24:13+00:00 | Q19055120 | 000075590-01 | Roberta | Savage | MERCY HEALTH PHYSICIANS | 923525 | KRISTA M | HODGES | 1134274756 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 08112017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811070 | R911 | Solitary pulmonary nodule | ICD10 | 08112017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T11:24:21+00:00 | Q19073200 | 000044222-01 | JOHN | MEEKER | MOUNT CARMEL HLTH SYS | 947978 | VIRAL D | PATEL | 1346566858 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812093 | R110 | Nausea | ICD10 | 08122017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
