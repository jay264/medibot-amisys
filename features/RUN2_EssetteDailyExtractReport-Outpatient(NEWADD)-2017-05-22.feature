Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-22
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-22
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
| 05182017 | 2017-05-18T13:32:44+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Transplant Eval | TRANS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 05222017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05252017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518182 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05222017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T09:34:56+00:00 |  | 000033479-01 | JOHN | KURTZ | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05222017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05222017 | 08222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519137 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05222017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T15:11:47+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05222017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519150 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 05222017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T16:29:25+00:00 | Q18433311 | 000081799-01 | David | Mays | SEASTERN OHIO OTOLARYNGO | 921889 | JACK B | BOOTH | 1982765152 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05222017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522007 | H9042 | Snsrnrl hear loss, uni, left ear, w unrestr hear cntra side | ICD10 | 05222017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T07:42:08+00:00 | Q18465508 | 000104383-01 | STEVEN | SCHAFER | MOUNT CARMEL HLTH PRVDRS | 932450 | JOSHUA R | SILVERSTEIN | 1952587743 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522009 | R072 | Precordial pain | ICD10 | 05222017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T08:44:15+00:00 | Q18466214 | 000062898-01 | PAMELA | SKEESE | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522032 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05222017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T08:43:41+00:00 | Q18466237 | 000063721-01 | JAMES | EVILSIZOR | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | OH INSTITUTE OF CARDIAC | 900683 | 1477576619 | OH INSTITUTE OF CARDIAC CARE INC | 1801098512 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH INSTITUTE OF CARDIAC CARE INC | 05222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522033 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 05222017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T08:47:26+00:00 | Q18466284 | 000118465-01 | Martin | Vlas | AMERICAN HLTH NETWORK OF | 912160 | VALERIE J | KUENZLI | 1710147509 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522035 | R079 | Chest pain, unspecified | ICD10 | 05222017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T09:31:11+00:00 | Q18467083 | 000093318-01 | Roy | Fowler | MOUNT CARMEL HLTH PRVDRS | 932449 | TYLER B | ANDERSON | 1720240633 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05222017 | Approved | THE TIMKEN COMPANY | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522043 | Z87891 | Personal history of nicotine dependence | ICD10 | 05222017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T10:00:36+00:00 | Q18467687 | 000062781-01 | MICHAEL | HANCOCK | LICKING MEMORIAL ER MED | 901197 | ANDREW C | SEIPEL | 1578530127 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522049 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 05222017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T10:30:59+00:00 | Q18468413 | 000067305-01 | JAMES | COOPER | ADENA MEDICAL GROUP LLC | 943451 | JASON W | FOSTER | 1528350691 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522056 | M25561 | Pain in right knee | ICD10 | 05222017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05192017 | 2017-05-19T12:05:26+00:00 | Q18470165 | 000058087-01 | JANET | KUHN | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522066 | R590 | Localized enlarged lymph nodes | ICD10 | 05222017 | 70490 | CAT SCAN SFT TIS NECK WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T14:10:51+00:00 | Q18462200 | 000098846-01 | Donald | Scott | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05262017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522103 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05222017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T09:03:36+00:00 |  | 000027780-01 | PHILLIP | ALSPACH | OSU INTERNAL MED LLC | 914101 | MATTHEW D | RINGEL | 1306853106 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05222017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05232017 | 08232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522111 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 05222017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T11:36:29+00:00 | NCT02143414 | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 947014 | GREGORY K | BEHBEHANI | 1053679217 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05222017 | Approved | MediGold Medical Only | Fax | Clinical Trial | Outpatient | 05222017 | 08222017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522115 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 05222017 | 85025, 80053, 84703, G0364, 88313, 93005, 99211, 36415, 36592, 82947, 84100, 83615, 84550, 85730, 85610, 71020, 96413, A9579, Q9966, J1100, J7506, G0463, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 6, 6, 6, 3, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 3, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T15:40:12+00:00 | 18477101 | 000050584-01 | LUISA | NICKEL | ORTHO FOOT & ANKLE CNTR | 904283 | CHRISTOPHER F | HYER | 1033185152 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 05222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522125 | M21171 | Varus deformity, not elsewhere classified, right ankle | ICD10 | 05222017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T15:48:52+00:00 |  | 000059842-01 | STEPHEN | HOYT | CAPITAL CITY PAIN CARE | 905179 | SARAH E | BLAKE | 1689606295 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05222017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 05192017 | 06182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170522126 | M5417, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 05222017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T10:31:57+00:00 |  | 000114343-01 | Christina | Russell | MERCY HEALTH PHYSICIANS | 921201 | TIMOTHY D | BRENNAN | 1174579510 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 05222017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 05222017 | 05232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170426119 | I272 | Other secondary pulmonary hypertension | ICD10 | 05222017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Notified appeals department of uphold by Dr. Durbin for denial for OON request for services. |  |  |  |  | 0 |
