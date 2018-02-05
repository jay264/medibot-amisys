Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-01
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
| 01302018 | 2018-01-30T12:23:44+00:00 | Q20285956 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | LAVERNE G | MENSAH | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 08112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201011 | C180 | Malignant neoplasm of cecum | ICD10 | 02012018 | J9206, J1100, J2469, J0640, J9190, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 216, 960, 120, 192, 144, 492 | 216, 960, 120, 192, 144, 492 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9206: 216: (FOLFIRI) Irinotecan 180 mg/m2  IV  day 1  every 14 days  12 cycles: J0640: 192: Leucovorin 400 mg/m2  IV  day 1  every 14 days  12 cycles: J9190: 144: 5-Fluorouracil (5-FU) 1200 mg/m2  CIV  days 1-2  every 14 days  12 cycles; 5-Fluorouracil (5-FU) 400 mg/m2  IV  day 1  every 14 days  12 cycles: J9035: 492: Bevacizumab 5 mg/kg  IV  day 1  every 14 days  12 cycles: J1100: 960: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  12 cycle(s): J2469: 120: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 01302018 | 2018-01-30T13:27:41+00:00 | Q20287148 | 000029209-01 | Olive | Mcclurg | MOUNT CARMEL HLTH SYS | 948057 | PRACHI S | BIYANI | 1508185398 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201012 | R110 | Nausea | ICD10 | 02012018 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T13:33:30+00:00 | Q20287269 | 000104936-01 | Shirley | Foster | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA MEDICAL GROUP LLC | 928524 | 1235468083 | CHRISTIN L SPAHN | 1861654105 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHRISTIN L | SPAHN | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02072018 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201013 | D0511 | Intraductal carcinoma in situ of right breast | ICD10 | 02012018 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 16 | 16 | Approved | 91 | CPT | C4 | 77412: 16: 77412 16 |  |  |  |  | 0 |
| 01302018 | 2018-01-30T14:07:26+00:00 | Q20287988 | 000021738-01 | YVONNE | COSIMATI | CEN OH PRIMARY CARE SPEC | 935835 | TERRANCE A | CASTOR | 1285610857 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201020 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 02012018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T13:57:11+00:00 |  | 000015420-01 | BARBARA | WRIGHT | OSU OTOLARYNGOLOGISTS LL | 920274 | LAURA A | MATRKA | 1447476536 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01312018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131126 | J387 | Other diseases of larynx | ICD10 | 02012018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 13, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 13, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T14:15:24+00:00 |  | 000049570-01 | JAMES | WALLER | SMITH FACIAL PLASTICS | 908002 | STEPHEN P | SMITH JR | 1518923119 | SMITH FACIAL PLASTICS | 908002 | 1043614589 | STEPHEN P SMITH JR | 1518923119 | Predetermination Request | PR | Pre-Service | PRE | STEPHEN P | SMITH JR | 02012018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03012018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131129 | H02021, H02024, H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 02012018 | 67900, 67900, 21282 | LATERAL CANTHOPEXY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T08:46:36+00:00 | Q20292368 | 000119104-01 | William | Scaggs | ONCOLOGY HEMATOLOGY CARE | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 943625 | 1790778041 | RHONDA R GOTTMANN | 1417286626 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | RHONDA R | GOTTMANN | 02012018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 07302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201058 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 02012018 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 20 | 20 | Approved | 181 | HCPCS | HC | J2469: 20: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 01302018 | 2018-01-30T10:14:56+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 934386 | CAROLYN A | MCCLERKING | 1639374846 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01302018 | 07312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180130129 | D849, E119, Z794, Z9481, V4281, V5867, 25000 | 25000.0 | ICD10 | 02012018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82247, 82248, 84155, 83615, 87497, 80197, 83735 | MAGNESIUM, BLOOD, CHEMICAL | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | CPT | C4 | PC from Tammy at OSU  request was for 6 visits in 6 months. |  |  |  |  | 0 |
| 01312018 | 2018-01-31T10:49:29+00:00 | Q20295139 | 000082444-01 | Charles | Dixon | MERCY HEALTH PHYSICIANS | 901616 | DAVID G | MONJOT | 1316906811 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201074 | R911 | Solitary pulmonary nodule | ICD10 | 02012018 | 78816 | TUMOR IMAGE PET/CT FULL BODY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T12:47:19+00:00 | Q20297291 | 000104987-01 | Matsue | Toney | ADENA MEDICAL GROUP LLC | 915470 | NIRANJAN | SESHADRI | 1306840210 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02012018 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201083 | R079 | Chest pain, unspecified | ICD10 | 02012018 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T13:19:27+00:00 | Q20297980 | 000092530-01 | Lenville | Jones | ONCOLOGY HEMATOLOGY CARE | 901547 | DALJEET | SINGH | 1598784092 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201089 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 02012018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T13:54:45+00:00 | Q20298674 | 000077848-01 | Janice | Blevins | DAYTON GASTRO INC | 922766 | DAVIDA D | PRATER | 1447287230 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201097 | R932 | Abnormal findings on dx imaging of liver and biliary tract | ICD10 | 02012018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T10:56:10+00:00 | Q20304365 | 000080894-01 | Yvonne | Keeton | BERGER HEALTH PARTNERS | 905899 | SUDHATHI | CHENNURU | 1689740326 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201101 | R109 | Unspecified abdominal pain | ICD10 | 02012018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T14:01:53+00:00 |  | 000071942-01 | Helen | Adams | FAIRFIELD HLTHCARE PROFS | 918916 | ALYSON A | ADAMS | 1477820462 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | DME | DME | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02022018 | 03022018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201111 | R002 | Palpitations | ICD10 | 02012018 | 0296T | EXT ECG RECORDING | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
