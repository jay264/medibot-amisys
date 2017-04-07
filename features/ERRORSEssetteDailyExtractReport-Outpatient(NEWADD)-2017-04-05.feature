Feature: Process Essette Extract ERRORSEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: ERRORSEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-05
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 04042017 | 2017-04-04T09:27:25+00:00 | Q18118194 | 000057172-01 | VIVIAN | THOMPSON | COPC CENTRAL OHIO PRIMAR | 927416 | ANDREW K | RHINEHART | 1427360643 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405076 | R079 | Chest pain, unspecified | ICD10 | 04052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T12:12:09+00:00 | Q18121436 | 000063242-01 | SUSAN | DRAKE | GROVE CITY FAM HLTH INC | 937407 | GREGORY | RUNSER | 1750320347 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405088 | R079 | Chest pain, unspecified | ICD10 | 04052017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T13:14:05+00:00 |  | 000116467-01 | Thomas | Molitor | CHRIST HSP ORTHO ASSOC I | 944697 | ROBERT S | JOLSON | 1225084593 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 04052017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405097 | M2242 | Chondromalacia patellae, left knee | ICD10 | 04052017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T15:27:31+00:00 | Q18114381 | 000101545-01 | Charles | Rhinesmith | ADENA MEDICAL GROUP LLC | 932927 | CHRISTOPHER M | WRIGHT | 1427041276 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 04052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405115 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 04052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T07:17:37+00:00 |  | 000071205-01 | Michael | Misch | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405122 | I071 | Rheumatic tricuspid insufficiency | ICD10 | 04052017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T07:21:45+00:00 | Q18116173 | 000066560-01 | CLENSEY | BROOME | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405125 | R413 | Other amnesia | ICD10 | 04052017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T15:20:33+00:00 |  | 000044172-01 | MARTHA | CAUDY STRAWSER | ADENA MEDICAL GROUP LLC | 927962 | REGINA B | BRAY | 1003127218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03312017 | 04302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405134 | R64 | Cachexia | ICD10 | 04052017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T12:37:01+00:00 |  | 000085626-01 | John | Karr | PICKAWAY HEALTH SERVICES | 937270 | ARNOLD N | PALMER | 1740274539 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405137 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 04052017 | 70496 | CT ANGIOGRAPHY, HEAD | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T15:28:59+00:00 | Q18127241 | 000064648-01 | MARY | HUNDLEY | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04052017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170405141 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 04052017 | J9355 | TRASTUZUMAB, 10 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T10:01:47+00:00 |  | 000083390-01 | ROBERT | PENLAND | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405144 | C8589 | Oth types of non-hodg lymph, extrnod and solid organ sites | ICD10 | 04052017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T12:46:22+00:00 |  | 000057268-01 | KATHLEEN | HUFFMAN | ADENA MEDICAL GROUP LLC | 927004 | BRUCE J | CHEN | 1285835926 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405147 | R0600 | Dyspnea, unspecified | ICD10 | 04052017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T15:31:20+00:00 | Q18130995 | 000110716-01 | FRANCIS | MILLER | MARIETTA HLTH CARE PHYS | 921983 | KENNETH M | WEISMAN | 1194785642 | MARIETTA HLTH CARE PHYS | 921983 | 1912965732 | KENNETH M WEISMAN | 1194785642 | Radiology (HH) | OP RAD | Initial Review | INIT | KENNETH M | WEISMAN | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 04052017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170405152 | C61 | Malignant neoplasm of prostate | ICD10 | 04052017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T00:00:00+00:00 |  | 000095620-01 | Donald | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 04052017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 04052017 | 04062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405003 | R6889 | Other general symptoms and signs | ICD10 | 04052017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04042017 | 2017-04-04T10:28:00+00:00 |  | 000095618-01 | Danguole | DeMaria | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 04052017 | Denied | MediGold Southwest OH Essential Care | Member | Services Available In-Network | Outpatient | 04052017 | 04062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170405004 | R6889 | Other general symptoms and signs | ICD10 | 04052017 | 04910, 01110 | POSTERIOR INTEGUMENT PELVIS EXC GEN | CPT | 0, 0 | 4, 4 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
