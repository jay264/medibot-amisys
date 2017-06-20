Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-16_thru_2017-06-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-16_thru_2017-06-18
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
| 04192017 | 2017-04-19T15:08:55+00:00 | Q17329105 | 000100364-01 | Duane | White | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12162016 | 03142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170419185 | C61 | Malignant neoplasm of prostate | ICD10 | 06162017 | G0340, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 5 | 1, 5 | Void, Approved | 89, 89 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:38:19+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424008 | J439 | Emphysema, unspecified | ICD10 | 06162017 | G0463, 71020, 78582, 93307, 93306, 93320, 93000, 94010, 94060, 94720, 36600, 94620, 99245, 97802, 77080, 78264, 91034, 91010, 93880, 45378, 83894, 83912, 83898, 86695, 86696, 85705, 86832, 86833, 86828, 85303, 85306, 86765, 86777, 86787, 87389, 86803, 87340, 86706, 86704, 86708, 83890, 84311, 83892, 86665, 86645, 86644, 84156, 84540, 82570, 86900, 86901, 86850, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 80061, 83735, 84100, 84134, 85730, 85610, 84439, 80307, 84443, 82306, 83540, 84466, 83036, 82977, 82728, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86780, 86480, 86147 | CARDIOLIPIN (PHOSPHOLIPID) ANTIBODY | CPT | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:46:09+00:00 |  | 000107286-01 | Nancy | Oliver | GENESIS PRIMARY CARE PHY | 921951 | MITESH H | PAREKH | 1053376764 | FOUNDATION CARE | 916053 | 1205831963 | FOUNDATION CARE | 1205831963 | DME | DME | Pre-Service | PRE |  | FOUNDATION CARE | 06162017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06162017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615118 | N3941, R3915 | Urgency of urination | ICD10 | 06162017 | L8681 | PATIENT PROGRAMMER (EXTERNAL) FOR USE WITH IMPLANTABLE PROGR | HCPCS | 1 | 1 | Approved | 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T14:55:58+00:00 |  | 000053909-01 | RICHARD | TURNER | OSU INTERNAL MED LLC | 910383 | RAMI | KAHWASH | 1053515718 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06162017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615126 | D869 | Sarcoidosis, unspecified | ICD10 | 06162017 | 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T11:57:00+00:00 | Q18660514 | 000108353-01 | Robert | Hinkle | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06272017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616017 | C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 06162017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T15:34:46+00:00 |  | 000048830-01 | CAREY | DUDGEON | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 06222017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616020 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 06162017 | 99211, 99212, 99213, 99214, 99215, 85025, 84550, 83615, 84100, 80053, G0463, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T09:30:43+00:00 | Q18657277 | 000104194-01 | James | Brewer | MERCY HEALTH PHYSICIANS | 921313 | JEFFERSON M | BURROUGHS | 1740289453 | JEWISH HOSPITAL LLC | 949378 | 1609251891 | JEWISH HOSPITAL LLC | 1609251891 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JEWISH HOSPITAL LLC | 06162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616024 | I4892 | Unspecified atrial flutter | ICD10 | 06162017 | 93653, 93655, 93621, 93622, 93623, 93609 | INTRA-VENTRICULAR AND/OR -ATRIAL MAPPING TACHY SITE C CATH. MANIPULAT. | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T09:57:59+00:00 | Q18657946 | 000091380-01 | John | Heston | BATTEN, WILLIAM H | 937179 | WILLIAM H | BATTEN | 1437124112 | BATTEN, WILLIAM H | 937179 | 1437124112 | WILLIAM H BATTEN | 1437124112 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | WILLIAM H | BATTEN | 06162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 12122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616032 | C61 | Malignant neoplasm of prostate | ICD10 | 06162017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9217: 4 LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION)  7.5 MG  Dispensed as: 30.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 06162017 | 2017-06-16T07:15:21+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 06232017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616053 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 06162017 | 84520, 82435, 82040, 84075, 84155, 84295, 84450, 84132, 82374, 84460, 85025, 83690, 82150, 83615, 84450, 84100, 83735, 82310, 82247, 82565, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T11:52:41+00:00 | Q18646018 | 000102204-01 | Robin | Cross Jr | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07272017 | 01232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616063 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 06162017 | J1569 | Gammagard liquid injection | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J1569: 6 INJECTION  IMMUNE GLOBULIN  (GAMMAGARD LIQUID)  NON-LYOPHILIZED  (E.G.  LIQUID)  500 MG  Dispensed as: 45.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 06162017 | 2017-06-16T08:19:59+00:00 |  | 000065626-01 | FRANK | HOLTER | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06202017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616070 | D3702 | Neoplasm of uncertain behavior of tongue | ICD10 | 06162017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 21076, 21077, 21079, 21080, 21083, 21084, 21086, 21087, 21089, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T08:49:22+00:00 |  | 000065721-01 | JUDY | BINKLEY | MOUNT CARMEL HLTH SYS | 940524 | PATRICK P | YOUSSEF | 1144343484 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06152017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616084 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 06162017 | 36224, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC | THIS AUTH IS AFFILIATED W/AUTH X170614133 |  |  |  |  | 0 |
| 06152017 | 2017-06-15T07:30:45+00:00 | Q18655387 | 000049515-01 | DONALD | MURPHY | OH ONCOLOGY & HEMATOLOGY | 937209 | TIMOTHY D | MOORE | 1144278243 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | THE TIMKEN COMPANY | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616093 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 06162017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T09:12:34+00:00 | Q18603097 | 000040051-01 | Earl | Johnson | ADENA MEDICAL GROUP LLC | 943415 | REBECCA A | SCHUSTER | 1730492141 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616119 | J328 | Other chronic sinusitis | ICD10 | 06162017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:34:06+00:00 | Q18661049 | 000008066-01 | SALLY | THOMAS | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616127 | G35 | Multiple sclerosis | ICD10 | 06162017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:54:58+00:00 | Q18661495 | 000046355-01 | JAMES | CALHOUN | MOUNT CARMEL HLTH PRVDRS | 933346 | MICHAEL E | BUSCHUR | 1851418107 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 08142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616134 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 06162017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T13:19:06+00:00 | Q18661982 | 000116077-01 | Ronald | Goldsmith | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06162017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616143 | R0609 | Other forms of dyspnea | ICD10 | 06162017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T11:22:18+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Phone | Medical Criteria Met | Outpatient | 06202017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616169 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 06162017 | 36415, 85025, 80048, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 82784, 82785, 88184, 84550, 82232, 84100, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | RECEIVED PHONE REQUEST 6/14/17 FROM TAMMY C W/DR BHATNAGAR  REQUESTED LABS/TESTS ON PREVIOUS AUTHS ARE INCOMPLETE. RECEIVED LIST OF REQUESTED CPT CODES FOR LABS/TESTS.  REQUESTING 3 OCCURRENCES. |  |  |  |  | 0 |
