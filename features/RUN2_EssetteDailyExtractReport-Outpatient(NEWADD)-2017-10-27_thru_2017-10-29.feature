Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-27_thru_2017-10-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-27_thru_2017-10-29
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
| 10252017 | 2017-10-25T14:57:02+00:00 | Q19628026 | 000098623-01 | Charlene | Smith | PULMONARY MED OF DAYTON | 907975 | MEDIAN | ALI | 1649253113 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 10272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027054 | R911 | Solitary pulmonary nodule | ICD10 | 10272017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T13:36:11+00:00 | Q19636970 | 000075439-01 | Linda | Hyland | MOUNT CARMEL HLTH PRVDRS | 933528 | JOSEPH | JOZIC | 1700863149 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11062017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027076 | R079 | Chest pain, unspecified | ICD10 | 10272017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T10:55:14+00:00 | Q19634049 | 000036479-01 | STANLEY | SMITH | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 10272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027086 | C248 | Malignant neoplasm of overlapping sites of biliary tract | ICD10 | 10272017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T11:27:41+00:00 | Q19634621 | 000115518-01 | Deborah | Corrado | ORTHOPEDIC ONE INC | 906672 | BRENT A | BICKEL | 1336203645 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10272017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027087 | M25542 | PAIN IN JOINTS OF LEFT HAND | ICD10 | 10272017 | 73218 | MRI UPPER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T12:48:34+00:00 | Q19636046 | 000059564-01 | PHYLLIS | BORDERS | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027097 | T8484XD | Pain due to internal orthopedic prosth dev/grft, subs | ICD10 | 10272017 | 73201 | CAT SCAN UPPER EXTREMITY ENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T16:29:24+00:00 |  | 000083924-01 | Linda | Thomas | OSU EYE PHYS & SURGEONS | 952102 | FATOUMATA | YANOGA | 1861747529 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 10272017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019133 | H33021 | Retinal detachment with multiple breaks, right eye | ICD10 | 10272017 | 99213, 92250, 92134, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T17:29:11+00:00 |  | 000043343-01 | JACK | DODRILL | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10312017 | 01312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019137 | D0439 | Carcinoma in situ of skin of other parts of face | ICD10 | 10272017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T12:53:47+00:00 |  | 000090623-01 | GARY | JENKINS | OSU SURGERY LLC | 947961 | BASSAM | SHUKRALLAH | 1205977634 | ALERE HOME MONITORING, INCORPORATED | 925926 | 1760418370 | ALERE HOME MONITORING, INCORPORATED | 1760418370 | DME | DME | Pre-Service | PRE |  | ALERE HOME MONITORING, INCORPORATED | 10272017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09192017 | 09192018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026149 | Z95811 | Presence of heart assist device | ICD10 | 10272017 | Q0508, Q0508 | MISC SUP/ACC EXT VAD | HCPCS | 30, 12 | 30, 12 | Approved, Approved | 366, 366 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T13:56:53+00:00 | Q19615876 | 000113934-01 | Lori | Mccreary | OSU HLTH SYSTEM NEUROSUR | 922402 | GLORIA M | GALLOWAY | 1265433635 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 10272017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025125 | G35 | Multiple sclerosis | ICD10 | 10272017 | 70553, 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T13:12:05+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10272017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 10302017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027118 | C9101 | Acute lymphoblastic leukemia, in remission | ICD10 | 10272017 | G0463, 88184, 38221, 88313, 88305, 88237, 88262, 88275, 96450 | CHEMOTHERAPY ADM. INTO CNS (EG, INTRATHECAL) REQUIRING LUMBAR PUNCTURE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T15:35:02+00:00 |  | 000046255-01 | DONALD | JUSTICE | PATIENT TRANSPORT SRVS O | 912320 |  | COLUMBUS CONNECTION | 0 | PATIENT TRANSPORT SRVS O | 912320 | 1164750451 | COLUMBUS CONNECTION | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | COLUMBUS CONNECTION | 10272017 | Denied | MediGold Classic Preferred | Phone | Non-Covered Services (SNF, Rehabs) | Outpatient | 10272017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171027117 | R6889 | Other general symptoms and signs | ICD10 | 10272017 | A0425, A0428 | AMBULANCE SERVICE, BASIC LIFE SUPPORT, NON-EMERGENCY TRANSPORT, (BLS) | HCPCS | 0, 0 | 1, 1 | ,  | 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T12:57:15+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10252017 | 01252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025152 | C9000, D720, Z9481 | Bone marrow transplant status | ICD10 | 10272017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 86334, 82310, 82247, 82565, 84520, 82435, 82040, 84075, 84155, 84295, 84450, 84132, 82374, 84460, 82310, 83615, 83883, 82784, 84165, 84155, 88262, G0364, 88305, 38221, 88313, 88237, 88262, 88271, 88275 | CYTOGENETICS, 100-300 | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T08:45:47+00:00 | NCT02253316 | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Clinical Trial | TRIAL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10252017 | 01252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019154 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 10272017 | 85025, 80053, 84703, 88313, 93005, 99211, 36415, 36592, 99213, 82947, 84100, 83615, 85730, 85610, 71020, 96413, A9579, Q9966, S9990, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Debbie from OSU called requesting a status.  Told her auth is IN PROCESS. |  |  |  |  | 0 |
| 10262017 | 2017-10-26T11:45:47+00:00 | Q19634937 | 000033389-01 | ARTHUR | TIMMONS | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 10272017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027090 | I255 | Ischemic cardiomyopathy | ICD10 | 10272017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 10272017 | 2017-10-27T13:16:42+00:00 |  | 000096147-01 | Frederick | Goerler | OSU INTERNAL MED LLC | 941548 | JAMES S | BLACHLY | 1679779284 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10312017 | 01312018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171027126 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 10272017 | S9990, 85025, 80053, 84703, 81001, G0364, 88313, 99211, 93005, 36415, 36592, 99213, 82947, 84100, 83615, 84550, 85730, 85610, 82248, 82150, 83690, 83735, 83001, 88184, 88185, 88271, 88274, 88275, 88237, 88262, 87340, 86706, 86704, 86705, 86803, 80076, 96413, 96415, 93325, 93307, 93320, A9560, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 3 | 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | REQUEST FAXED TO HEALTHHELP FOR REVIEW OF CPT 78472 AND J0894 |  |  |  |  | 0 |
| 10232017 | 2017-10-23T18:51:12+00:00 |  | 000012265-01 | VIRGINIA | ANDREWS | OSU SURGERY LLC | 942268 | HOSAM F | EL SAYED | 1063598977 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11022017 | 12282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024068 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 10292017 | 75956, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 57, 57 | HCPCS | HC | Received voice request for status from Jessica at OSU.  Told her auth was IN PROCESS. |  |  |  |  | 0 |
| 10172017 | 2017-10-17T15:29:40+00:00 |  | 000039040-01 | HARRY | EVANS | OH GASTRO GRP INC | 936338 | RICHARD A | EDGIN | 1477547719 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10292017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10292017 | 11292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018152 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 10292017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 | Last Colonoscopy 03/03/2016 |  |  |  |  | 0 |
| 10192017 | 2017-10-19T07:09:10+00:00 |  | 000100451-01 | Eugene | Allen | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11142017 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019142 | Z08 | Encntr for follow-up exam after trtmt for malignant neoplasm | ICD10 | 10292017 | 99211, 99212, 99213, 99214, 99215, 84443, 84439, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10202017 | 2017-10-20T10:31:24+00:00 |  | 000060764-01 | ARETTA | ESTEP | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 10292017 | Approved | MediGold Classic Preferred | Member | Medical Criteria Met | Outpatient | 10202017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171020143 | H33009 | Unsp retinal detachment with retinal break, unspecified eye | ICD10 | 10292017 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 | The provider is not in Essette yet Asit Pruthi npi#  1770580375 phone# 831-771-3900, PC to member 831-975-4798  advised that emergent visit for detached retina would be covered.  Advised that we are waiting on clinical information from the eye doctor. Has an appointment at 11:30 EST., Researched Asiti Pruthi on internet to obtain better phone number. Dr is Asit Pruthi. The practice is  Vantage Eye Center 831-771-3900., LVMM at Vantage Eye Center for insurance and/or precert staff  asked if our member had been seen and for clinical information to be faxed to us. |  |  |  |  | 0 |
