Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-11
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
| 12082017 | 2017-12-08T14:58:26+00:00 |  | 000099528-01 | Larry | Conrad | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 12132017 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208117 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 94, 94, 94, 94, 94, 94 | HCPCS | HC |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T10:02:32+00:00 |  | 000085641-01 | LINDA | GRIESHEIMER | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12142017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171208101 | D119, R220 | Localized swelling, mass and lump, head | ICD10 | 12112017 | 42104, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 33, 33 | HCPCS | HC |  |  |  |  |  | 0 |
| 12072017 | 2017-12-07T14:01:46+00:00 | Q19935338 | 000065934-01 | ROBERT | LOTT | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211018 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 12112017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12072017 | 2017-12-07T14:13:52+00:00 | Q19935563 | 000077438-01 | Carol | Hatfield | ONCOLOGY HEMATOLOGY CARE | 921204 | PATRICK J | WARD | 1093709297 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 12112017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12072017 | 01062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211019 | Z08 | Encntr for follow-up exam after trtmt for malignant neoplasm | ICD10 | 12112017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T09:15:37+00:00 | Q19940029 | 000103236-01 | SHARON | GRAVES | ADENA MEDICAL GROUP LLC | 936107 | ROBERT D | VIOLETTE | 1346245875 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 12112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12082017 | 01072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211046 | R93429 | ABNORMAL RADIOLOGIC FINDINGS ON DX IMAGING OF UNSP KIDNEY | ICD10 | 12112017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12072017 | 2017-12-07T13:24:53+00:00 |  | 000029024-01 | CHARLENE | EVANS | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 12112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12072017 | 12222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207167 | I240, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 12112017 | 92610, 92526 | TREATMENT OF SWALLOWING DYSFUNCTION AND/OR ORAL FUNCTION FOR | CPT | 8, 8 | 8, 8 | Approved, Approved | 16, 16 | CPT | C4 | E-Mail sent to contracting department for SCA., EMail from JP:, Your fax has been successfully sent to Tyler Buchanan at 917409640804., ------------------------------------------------------------, 12/8/2017 7:32:58 AM Transmission Record,    Sent to 917409640804 with remote ID 740 964 0804,    Result: (0/339;0/0) Success,    Page record: 1 - 6,    Elapsed time: 03:54 on channel 6, SCA agreement has been rec'd and uploaded. |  |  |  |  | 0 |
| 12082017 | 2017-12-08T10:34:23+00:00 | Q19941593 | 000015918-01 | ANN | WASS | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 12112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12112017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211064 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12112017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T11:43:00+00:00 | Q19942819 | 000072998-01 | John | Carter | COPC CENTRAL OHIO PRIMAR | 911665 | CHARLENE M | CRISP | 1558514794 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 12112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211075 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 12112017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T13:11:23+00:00 | Q19944207 | 000086357-01 | Frank | Hoffman | DAYTON PHYSICIANS LLC | 925670 | RYAN D | STEINMETZ | 1902007651 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 12112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12082017 | 01072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211083 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 12112017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10302017 | 2017-10-30T13:49:31+00:00 | Q19656658 | 000104193-01 | Beverly | Bintz | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10312017 | 04292018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171031126 | C8316 | Mantle cell lymphoma, intrapelvic lymph nodes | ICD10 | 12112017 | J9310, J9041, J9000, J9070, J2505, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 8, 32, 8, 8, 8, 8, 8 | 8, 32, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T11:21:09+00:00 |  | 000101580-01 | LEE | WHITMER | OSU INTERNAL MED LLC | 907477 | STEVEN M | DEVINE | 1124036579 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12122017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211096 | C8310 | Mantle cell lymphoma, unspecified site | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82947, 84439, 84443, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T09:50:25+00:00 |  | 000049571-01 | MARGARET | STEINMETZ | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 12112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12182017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171204009 | S52501D, S53105D | Unsp dislocation of left ulnohumeral joint, subs encntr | ICD10 | 12112017 | 99214, 73080, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T10:51:16+00:00 |  | 000083407-01 | Joseph | Power Jr. | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 12142017 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211097 | Z8521 | Personal history of malignant neoplasm of larynx | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12112017 | 2017-12-11T11:15:00+00:00 |  | 000063213-01 | DENNIS | WAUGH | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12132017 | 06132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211098 | C9101, D89811, Z9481 | Bone marrow transplant status | ICD10 | 12112017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, 36522, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | HCPCS | HC |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T08:58:55+00:00 |  | 000081761-01 | James | Powers | RETINA CONSULTANTS | 929923 | ABRAHAM S | MITIAS | 1750328241 | RETINAL CONSULTANTS INC | 938742 | 0 | RETINAL CONSULTANTS INC | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINAL CONSULTANTS INC | 12112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01102018 | 02102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205059 | H353211, H353221 | EXDTVE AGE-REL MCLR DEGN, LEFT EYE, WITH ACTV CHRDL NEOVAS | ICD10 | 12112017 | 92012, 92014, 67028, J0178, 92134, 92235, 42250 | REPAIR OROANTRAL OR ORONASAL FISTULA, UP TO 1 CM | CPT | 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T10:12:50+00:00 |  | 000073543-01 | Shirley | Ricketts | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 12112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 12132017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205126 | C6932 | Malignant neoplasm of left choroid | ICD10 | 12112017 | 99213, 76510, 92250, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12052017 | 2017-12-05T17:36:46+00:00 |  | 000087673-01 | Reva | Young | CNP OPERATING CO LLC | 952193 | PEGGY | HITCHCOCK | 1396278107 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Out of Network Services | OONS | Pre-Service | PRE |  | SIGNATURE HEALTHCARE OF COSHOCTON | 12112017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12042017 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171206017 | F0390, M1990, Z9181 | History of falling | ICD10 | 12112017 | 99307, 99308, 99309, 99310 | NURSING FAC CARE, SUBSEQ | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 12082017 | 2017-12-08T12:40:16+00:00 | Q19943707 | 000112611-01 | Tammy | Maynard | JEFFREY VANMETER MD INC | 917889 | JEFFREY P | VANMETER | 1073599262 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 12112017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12122017 | 01112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171211079 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12112017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
