Feature: Process Essette Extract RUN2EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-25
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
| 08282017 | 2017-08-28T08:51:26+00:00 |  | 000010851-01 | PAULINE | BALDWIN | ST JOSEPH MERCY HOSPITAL | 906547 |  | ST JOSEPH MERCY HOSPITAL | 1780658443 | ST JOSEPH MERCY HOSPITAL | 906547 | 1780658443 | ST JOSEPH MERCY HOSPITAL | 1780658443 | Out of Network Services | OONS | Pre-Service | PRE |  | ST JOSEPH MERCY HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828089 | S81812A | Laceration without foreign body, left lower leg, init encntr | ICD10 | 09252017 | 11042 | DEBRIDEMENT SKIN & SUBCU TISSUE | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Request clinical documentation for authorization processing. |  |  |  |  | 0 |
| 09222017 | 2017-09-22T11:16:00+00:00 | Q19376341 | 000108069-01 | Eleanor | James | GENESIS PRIMARY CARE PHY | 914049 | SEAN B | BARNES | 1164620290 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 09252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925047 | R079 | Chest pain, unspecified | ICD10 | 09252017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T14:03:27+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 09202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920034 | C9000, Z9481 | Bone marrow transplant status | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T15:10:00+00:00 | Q19316170 | 000110574-01 | Lawrence | Huxell | ONCOLOGY HEMATOLOGY CARE | 921848 | BENJAMIN T | HERMS | 1730218876 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 09252017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925020 | C689 | Malignant neoplasm of urinary organ, unspecified | ICD10 | 09252017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T14:14:44+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09192017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907138 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T12:52:00+00:00 | Q19377849 | 000085768-01 | Bertha | Boyer | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 09252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925055 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 09252017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T15:27:54+00:00 | NCT02143414 . | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907122 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T14:31:21+00:00 |  | 000099528-01 | Larry | Conrad | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09202017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911124 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09082017 | 2017-09-08T09:39:31+00:00 |  | 000021535-01 | SARAH | FIELDS | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908112 | C01 | Malignant neoplasm of base of tongue | ICD10 | 09252017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T10:02:09+00:00 |  | 000098636-01 | Sheila | Smith | NEUROSCIENCE CENTER | 937422 |  | NEUROSCIENCE CENTER | 1962431817 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09252017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09262017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920018 | G40219 | Local-rel symptc epi w cmplx part seiz, ntrct, w/o stat epi | ICD10 | 09252017 | 99212, 99213, 99214, 99215, G0463, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T07:21:00+00:00 | Q19372259 | 000090564-01 | Adam | Jones | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 09252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925072 | R2681 | Unsteadiness on feet | ICD10 | 09252017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:48:13+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913160 | D7581 | Myelofibrosis | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 82495, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 84155, 84100, 82310, 83735, G0463, 82247 | BILIRUBIN, TOTAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T11:05:26+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 934386 | CAROLYN A | MCCLERKING | 1639374846 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 09262017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922129 | C9100, Z5112 | Encounter for antineoplastic immunotherapy | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82495, 84132, 82947, 88112, G0463, 82435 | CHLORIDES; BLOOD (SPECIFY CHEMICAL OR ELECTROMETRIC) | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T15:23:51+00:00 | NCT02143414. | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 946116 | JACQUELA | ROBINSON-DJAKU | 1124401567 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 09122017 | 12222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907125 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102 | CPT | C4 |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T10:34:44+00:00 |  | 000114558-01 | ROBERT | MOSEL | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09192017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907136 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09112017 | 2017-09-11T14:55:00+00:00 | Q19283771 | 000108780-01 | Chuck | Bowman | DAYTON PHYSICIANS LLC | 908833 | MARK A | MARINELLA | 1801888482 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 09252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09112017 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918019 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 09252017 | J9263, J2469, J9201 | GEMCITABINE HCL, 200 MG | HCPCS | 1110, 30, 24 | 1110, 30, 24 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 1110: INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 185.00 mg  1 treatment(s) each cycle  3 cycle(s): J9201: 24: INJECTION  GEMCITABINE HYDROCHLORIDE  200 MG  Dispensed as: 1450.00 mg  1 treatment(s) each cycle  3 cycle(s): J2469: 30: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  3 cycle(s) |  |  |  |  | 0 |
| 09072017 | 2017-09-07T14:27:34+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 09252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170911096 | G250 | Essential tremor | ICD10 | 09252017 | 95978, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T14:03:42+00:00 |  | 000037946-01 | PETER | PALM | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09072017 | 12072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908093 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
Approved | X170922150 | C01 | Malignant neoplasm of base of tongue | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T13:02:00+00:00 | Q19378003 | 000076087-01 | Sharon | Aebersold | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 09252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925014 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 09252017 | 74177, 70460, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T15:54:05+00:00 |  | 000048046-01 | CAROLYN | RIFE | OSU INTERNAL MED LLC | 937566 |  | OSU INTERNAL MEDICINE LLC | 1740231448 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09272017 | 12272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921020 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 80053, 83883, 86334, 82784, 84165, G0463, 85025 | HMOGRM/PLTLT CT,AUTO/AUTO CMP DIFFT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:44:02+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913140 | D7581 | Myelofibrosis | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 84155, 84100, 82310, 83735, G0463, 82247 | BILIRUBIN, TOTAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T16:04:55+00:00 |  | 000072507-01 | Teresa | Jakob | MEDICAL & SURG ASSOC INC | 950991 | JEREMY | CAMPBELL | 1477533826 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170914122 | R102 | Pelvic and perineal pain | ICD10 | 09252017 | 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | HCPCS | HC | ROI=PAUL  SPOUSE. |  |  |  |  | 0 |
| 09212017 | 2017-09-21T10:41:30+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU HLTH SYS ORTHO ONC P | 942750 | THUAN V | LY | 1487697637 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921271 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 09252017 | G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:40:09+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 943770 | MEGHAN | KROMER | 1477931533 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913127 | D7581 | Myelofibrosis | ICD10 | 09252017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 84100, 82310, 83735, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T15:08:43+00:00 |  | 000021535-01 | SARAH | FIELDS | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907143 | C01, R220 | Localized swelling, mass and lump, head | ICD10 | 09252017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T08:32:00+00:00 | Q19373029 | 000086264-01 | Jerry | Carrier | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925025 | S065X0S | Traum subdr hem w/o loss of consciousness, sequela | ICD10 | 09252017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
