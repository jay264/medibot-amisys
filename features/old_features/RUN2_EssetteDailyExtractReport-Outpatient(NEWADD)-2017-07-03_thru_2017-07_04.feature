Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-03_thru_2017-07_04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-03_thru_2017-07_04
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
| 05232017 | 2017-05-23T12:24:59+00:00 |  | 000025507-01 | HELEN | CARVOUR | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | SANCTUARY TUTTLE CROSSING | 936556 | 1740274125 | SANCTUARY TUTTLE CROSSING | 1740274125 | Part B Therapy | OP THER | Pre-Service | PRE |  | SANCTUARY TUTTLE CROSSING | 07032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06012017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523123 | M6281, R2681, R2689, R278, S72402D, Z9181, Z741 | Need for assistance with personal care | ICD10 | 07032017 | 97110, 97530, 97535, 97110, 97112, 97116, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | , , , , , ,  | 30, 30, 30, 30, 30, 30, 30 | CPT | C4 | This auth is a Part B extension from auth# X170426109  so same SCA being used for the extension., Called SNF  spoke with Heather in Therapy  requested the NOMNC to close auth case  she verbalized understanding and with fax NOMNC to MediGold., NOMNC received |  |  |  |  | 0 |
| 05232017 | 2017-05-23T10:39:47+00:00 | Q18475368 | 000111591-01 | Nancy | Draves | ORTHO ASSOC OF DAYTON | 911218 | MELINDA A | SCOTT | 1356310403 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 07032017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 05212017 | 06202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170524071 | M7582 | Other shoulder lesions, left shoulder | ICD10 | 07032017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T14:57:10+00:00 | Q18767511 | 000076203-01 | Michael | Grove | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703009 | C7A00 | Malignant carcinoid tumor of unspecified site | ICD10 | 07032017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T09:13:26+00:00 | Q18771336 | 000118270-01 | Diana | Brown | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 12302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703012 | C252 | Malignant neoplasm of tail of pancreas | ICD10 | 07032017 | J9264, J1626, J1100, J9201 | GEMCITABINE HCL, 200 MG | HCPCS | 1, 240, 480, 180 | 1, 240, 480, 180 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9264: 4500 Albumin-bound Paclitaxel 125 mg/m2  IV  days 1  8  15  every 28 days  6 cycles; J9201: 180 Gemcitabine 1000 mg/m2  IV  days 1  8  15  every 28 days  6 cycles; J1626: 240 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s); J1100: 480 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 06292017 | 2017-06-29T14:47:40+00:00 | Q18767108 | 000097339-01 | Diane | Graham | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06302017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703016 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 07032017 | J9355 | TRASTUZUMAB, 10 MG | HCPCS | 288 | 288 | Approved | 181 | HCPCS | HC | J9355: 288 Trastuzumab 6 mg/kg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 06292017 | 2017-06-29T14:45:08+00:00 | Q18767281 | 000075807-01 | John | Tredway | GENESIS MEDICAL GRP LLC | 921908 | BENJAMIN R | GIBSON | 1619257508 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 07032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703017 | C61 | Malignant neoplasm of prostate | ICD10 | 07032017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T11:55:21+00:00 | Q18774128 | 000002472-01 | JOHN | MUNCY | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703026 | I255 | Ischemic cardiomyopathy | ICD10 | 07032017 | 33249, 33225, 33233, 33235, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T14:17:09+00:00 | Q18776577 | 000111600-01 | MARVIN | ANDERSON | ONCOLOGY HEMATOLOGY CARE | 921072 | JOHN F | SACCO | 1336133685 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07032017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 10032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703043 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07032017 | G0339 | IMAGE-GUIDED ROBOTIC LINEAR ACCELERATOR-BASED STEREOTACTIC RADIOSURGERY, | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T11:17:33+00:00 | Q18773602 | 000048152-01 | MICHAEL | SIVICK | COPC CENTRAL OHIO PRIMAR | 935014 | MICHAEL D | WALUZAK | 1053394601 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 07032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07122017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703053 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 07032017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T08:33:42+00:00 | Q18770525 | 000086130-01 | Burton | Miller | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 01162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703077 | C8331 | Diffuse large B-cell lymphoma, nodes of head, face, and neck | ICD10 | 07032017 | J1453 | Fosaprepitant injection | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J1453: 900 Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 06302017 | 2017-06-30T12:47:41+00:00 | Q18759875 | 000001616-01 | PATRICIA | LEDFORD | AMERICAN HLTH NETWORK OF | 909945 | MICHAEL J | SIMEK | 1407077472 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703104 | M5416 | Radiculopathy, lumbar region | ICD10 | 07032017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T08:41:17+00:00 | Q18752594 | 000102162-01 | Martin | Moran | FAIRFIELD HLTHCARE PROFS | 949440 | JAMES A | WRIGHT | 1386640613 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 07282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703113 | M25551 | Pain in right hip | ICD10 | 07032017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
