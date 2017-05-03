Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-01
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
| 03272017 | 2017-03-27T16:03:19+00:00 |  | 000031767-01 | MARJORIE | THORNTON | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 05012017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170328097 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05012017 | E0570 | NEBULIZER, WITH COMPRESSOR | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:36:35+00:00 |  | 000082943-01 | Jeffrey | Ledsome | MARIETTA HLTH CARE PHYS | 922070 | DORAI T | RAJAN | 1831297654 | MICHAEL SHRAMOWIAT LLC | 923894 | 1003820374 | MICHAEL SHRAMOWIAT | 1568485233 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | SHRAMOWIAT | 05012017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329112 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 05012017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Message left for Chasity at provider's office.  Request is a retro request with date of service of 3/22/17 and request date 3/29/17.  Clinical information also still needed to process request., Expedited portion removed from request as per phone call with Chasity.  Date of service is 3/22. |  |  |  |  | 0 |
| 04202017 | 2017-04-20T15:15:18+00:00 |  | 000097461-01 | Christopher | Harding | EQUITAS HEALTH INC | 924978 |  | EQUITAS HEALTH INC | 1518227453 | EQUITAS HEALTH INC | 924978 | 1518227453 | EQUITAS HEALTH INC | 1518227453 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | EQUITAS HEALTH INC | 05012017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04102017 | 07102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425102 | F319, R41840 | Attention and concentration deficit | ICD10 | 05012017 | 90834, 90835, 90836, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 5, 5, 5, 5 | 5, 5, 5, 5 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T09:57:33+00:00 |  | 000032352-01 | CECIL | ASHCRAFT | MOUNT CARMEL HLTH SYS | 937383 | PHILIP D | BERGER | 1851339725 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 05012017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04212017 | 05212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425117 | H5000 | Unspecified esotropia | ICD10 | 05012017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T12:51:46+00:00 |  | 000031682-01 | WILLIAM | BOWLING | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425126 | D499 | Neoplasm of unspecified behavior of unspecified site | ICD10 | 05012017 | G0463, 72190, 73552 | X-RAY EXAM OF FEMUR 2/> | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T13:39:21+00:00 |  | 000104661-01 | Deloris | Girard | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05022017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425127 | L03221 | Cellulitis of neck | ICD10 | 05012017 | 92507, 92610, 92526, 92612, 31595, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:16:48+00:00 |  | 000103915-01 | Dianne | Summers | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 05012017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170425143 | Z96649 | Presence of unspecified artificial hip joint | ICD10 | 05012017 | E0676 | Inter limb compress dev NOS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04262017 | 2017-04-26T09:24:41+00:00 |  | 000042193-01 | THERESA | JONES | OSU INTERNAL MED LLC | 913646 | TODD | PESAVENTO | 1629085030 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05012017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 03222017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170426107 | Z940 | Kidney transplant status | ICD10 | 05012017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 04262017 | 2017-04-26T15:09:46+00:00 |  | 000090351-01 | Doris | Cotterman | CARE TO CURE LLC | 901000 | MARK D | SCHMIDT | 1760469837 | CARE TO CURE LLC | 906238 | 1467615088 | CARE TO CURE LLC | 1467615088 | Out of Network Services | OONS | Pre-Service | PRE |  | CARE TO CURE LLC | 05012017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170427117 | C4491, D472, D649, E119, E784, E785, I10, I4891, M1990, M353, M810 | Age-related osteoporosis w/o current pathological fracture | ICD10 | 05012017 | 99349 | HOME VISIT, EST PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04272017 | 2017-04-27T15:53:13+00:00 |  | 000114511-01 | Joyce | Althoff | OH GASTRO GRP INC | 932482 | JOSEPH D | THOMAS | 1083876288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 05012017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170428126 | K7460 | Unspecified cirrhosis of liver | ICD10 | 05012017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04272017 | 2017-04-27T16:34:00+00:00 |  | 000037903-01 | ROSEMARY | LONGBERRY | MOUNT CARMEL HLTH PRVDRS | 935992 | WILLIAM M | CHINN | 1801870985 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 05012017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170428127 | R0989 | Oth symptoms and signs involving the circ and resp systems | ICD10 | 05012017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04272017 | 2017-04-27T14:35:24+00:00 |  | 000091287-01 | Edward | Ausborn | HEMATOLOGY ONCOLOGY CONS | 933419 | ANITHA S | NALLARI | 1881649879 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05012017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 05012017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170428128 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 05012017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 38204, 86813, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04272017 | 2017-04-27T16:58:45+00:00 | Q18239405 | 000085983-01 | William | Walsh | RANGANATHAN, VADAK H | 905298 | VADAK H | RANGANATHAN | 1992773212 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 05012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04262017 | 05262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501006 | R410 | Disorientation, unspecified | ICD10 | 05012017 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T10:56:35+00:00 | Q18269233 | 000066295-01 | BRENDA | PRITCHARD | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501011 | C211 | Malignant neoplasm of anal canal | ICD10 | 05012017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04272017 | 2017-04-27T13:30:25+00:00 | Q18301552 | 000084173-01 | Raymond | Grothjan | THE UROLOGY GROUP | 921457 | KEVIN G | CAMPBELL | 1700820776 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 05012017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05012017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501039 | C61 | Malignant neoplasm of prostate | ICD10 | 05012017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04272017 | 2017-04-27T18:47:02+00:00 | Q18285033 | 000070176-01 | Sue | Collins | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | BERGER HOSPITAL | 05012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501061 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 05012017 | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 60 | 60 | Approved | 91 | HCPCS | HC | J2469: 60 Palonosetron 0.25mg IN weekly x6 cycles (6 treatments).  Total billing units = 60 |  |  |  |  | 0 |
| 04282017 | 2017-04-28T09:16:20+00:00 | Q18291489 | 000090141-01 | Stephen | Flynn | ALLIANCE PHYSICIANS INC | 902095 | RONALD S | TAYLOR | 1760482178 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 05012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501067 | R0609 | Other forms of dyspnea | ICD10 | 05012017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T08:49:23+00:00 | Q18296274 | 000115275-01 | Freeman | Burke Jr | BARNETT JR, GEORGE W | 900431 | GEORGE W | BARNETT JR | 1487602389 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501069 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 05012017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T07:41:24+00:00 | Q18297820 | 000074776-01 | Jean | Millington | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 05012017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501071 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 05012017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T13:01:00+00:00 | Q18311032 | 000081195-01 | Nancy | Pfaffenbach | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05012017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501081 | M24111 | Other articular cartilage disorders, right shoulder | ICD10 | 05012017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T08:37:36+00:00 |  | 000077275-01 | Donald | Chamberlain | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05032017 | 08032017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501096 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05012017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T07:49:07+00:00 |  | 000033770-01 | LUISITO | TOLENTINO | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 05012017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 05012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170501098 | I509, J189, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05012017 | R0070, Q0092, 71010 | CHEST, SINGLE VIEW, POSTEROANTERIOR | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T10:22:54+00:00 |  | 000069460-01 | VIRGINIA | HUGHES | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05012017 | Approved | THE TIMKEN COMPANY | Fax | Services Not Available In-Network | Outpatient | 05092017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170501099 | C495, D492, Z853 | Personal history of malignant neoplasm of breast | ICD10 | 05012017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
