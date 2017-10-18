Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-16
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
| 10122017 | 2017-10-12T15:19:39+00:00 | Q19532589 | 000028398-01 | MILDRED | SAUL | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016028 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10162017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T07:14:42+00:00 | Q19534387 | 000064003-01 | MARVIN | YODER | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016037 | C7A092 | Malignant carcinoid tumor of the stomach | ICD10 | 10162017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T09:59:36+00:00 | Q19536708 | 000101238-01 | Rebecca | Stone | ONCOLOGY HEMATOLOGY CARE | 921640 | CYNTHIA C | CHUA | 1700879582 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 10162017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016064 | C8283 | Oth types of follicular lymphoma, intra-abd lymph nodes | ICD10 | 10162017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T10:37:24+00:00 | Q19537518 | 000082178-01 | Glenn | Butters | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 11152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016067 | S83207D | Unsp tear of unsp meniscus, current injury, left knee, subs | ICD10 | 10162017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T13:28:00+00:00 | Q19314201 | 000099972-01 | Keith | Kinney | DAYTON PHYSICIANS LLC | 903729 | MANISH R | SHETH | 1205832730 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 10162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915010 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 10162017 | 70460, 70491, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | CPT | C4 | Providing facility needs to be changed  however  the new facility cannot be -found in the system. Please find the necessary information in the changes folder for 9/19 278-5010 and update the necessary information. Thank you! |  |  |  |  | 0 |
| 09062017 | 2017-09-06T07:21:00+00:00 | Q19244735 | 000074891-01 | Netta | Mills | LICKING MEM HLTH PROF | 948693 | FIKADU G | TEKLEYES | 1679787386 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170912076 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T09:47:02+00:00 |  | 000079468-01 | Rebecca | Hussong | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10162017 | 01162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013109 | C9000, Z9484 | Stem cells transplant status | ICD10 | 10162017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 82784, 86334, 82784, 84165, 83883, 84156, 84550, 82306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T13:34:19+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10162017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 10162017 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013129 | C9101 | Acute lymphoblastic leukemia, in remission | ICD10 | 10162017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 82945, 89051, 85610, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124, 124 | HCPCS | HC |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T16:04:00+00:00 |  | 000013173-01 | YASUE | SAKAOKA | MOUNT CARMEL HLTH SYS | 947978 | VIRAL D | PATEL | 1346566858 | CENTRAL OH ENDOSCOPY CENTER | 916292 | 1467768549 | CENTRAL OH ENDOSCOPY CENTER | 1467768549 | Predetermination Request | PR | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016018 | K921 | Melena | ICD10 | 10162017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 | Colonoscopy performed prior to the 2 year range last dated 10/13/2016 |  |  |  |  | 0 |
| 10092017 | 2017-10-09T18:16:31+00:00 |  | 000047729-01 | KATIE | ELFRINK | OH GASTRO GRP INC | 908695 | SCOTT W | ARLIN | 1962495465 | CENTRAL OH ENDOSCOPY CENTER | 917213 | 1295911154 | CENTRAL OH ENDOSCOPY CENTER | 1295911154 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010051 | Z86010 | Personal history of colonic polyps | ICD10 | 10162017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 | Provider states that this is less than two years since last exam |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:38:25+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | UNIVERSITY RADIATION ONC | 928811 | DUKAGJIN | BLAKAJ | 1144483272 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10182017 | 01182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010138 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 10162017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T10:02:52+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | UNIVERSITY RADIATION ONC | 928811 | DUKAGJIN | BLAKAJ | 1144483272 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010141 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 10162017 | 62303, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T14:19:46+00:00 | Q19466565 | 000085811-01 | Doug | Nohrer | ALLIANCE PHYSICIANS INC | 921258 | DENNIS M | ANTHONY | 1396784963 | FORT HAMILTON HOSPITAL | 926711 | 1104867167 | FORT HAMILTON HOSPITAL | 1063447167 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FORT HAMILTON HOSPITAL | 10162017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171006072 | R413 | Other amnesia | ICD10 | 10162017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T13:23:45+00:00 |  | 000083179-01 | Thomas | Pfaffenbach | MOUNT CARMEL HLTH PRVDRS | 928528 | MORGAN E | WHITE | 1003241696 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 10162017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 10162017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170925147 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 10162017 | E1399 | DURABLE MEDICAL EQUIPMENT, MISCELLANEOUS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10032017 | 2017-10-03T09:48:01+00:00 |  | 000081103-01 | Mark | Longstreth | REGENTS OF THE U OF M | 939406 |  | REGENTS OF THE U OF M | 1003878539 | REGENTS OF THE U OF M | 939406 | 1003878539 | REGENTS OF THE U OF M | 1003878539 | Clinical Trial | TRIAL | Pre-Service | PRE |  | REGENTS OF THE U OF M | 10162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052017 | 12052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003129 | C9210 | Chronic myeloid leuk, BCR/ABL-positive, not achieve remis | ICD10 | 10162017 | 99205, 88321, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 09282017 | 2017-09-28T11:00:34+00:00 |  | 000116092-01 | Sue | Banks | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | COMPRESSION SOLUTIONS INC | 934024 | 1295727931 | COMPRESSION SOLUTIONS INC | 1295727931 | DME | DME | Pre-Service | PRE |  | COMPRESSION SOLUTIONS INC | 10162017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 10162017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170928144 | M1712, M25569 | Pain in unspecified knee | ICD10 | 10162017 | E0676 | Inter limb compress dev NOS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Outreach to provider for clinical documentation made., This is going to be faxed today 092917, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10022017 | 2017-10-02T10:00:42+00:00 |  | 000049571-01 | MARGARET | STEINMETZ | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 10162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10162017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002135 | S53124A | Posterior dislocation of right ulnohumeral joint, init | ICD10 | 10162017 | 99214, 73080 | ELBOW, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T07:19:11+00:00 | Q19447334 | 000119413-01 | Dickie | Roark | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 10162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004011 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10162017 | J9267, J1442, J2405, J8540, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1500, 9999, 576, 2880, 78 | 1500, 9999, 576, 2880, 78 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9267: 1500: followed by Paclitaxel 200 mg/m2  IV  day 1  every 21 days  2 cycles; Paclitaxel 45-50 mg/m2  IV  day 1  every 7 days  7 cycles: J9045: 78: Carboplatin AUC 2 (max 300 mg)  IV  day 1  every 7 days  7 cycles; Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days 2 cycles: J1442: 40320: Filgrastim (Neupogen) 480 mcg  SQ  days 2-8  every 14 days  12 cycles: J2405: 576: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  9 cycle(s): J8540: 2880: Dexamethasone up to 20 mg  PO  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  9 cycle(s) |  |  |  |  | 0 |
