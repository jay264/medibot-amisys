Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-01
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
| 01292018 | 2018-01-29T13:46:58+00:00 |  | 000102092-01 | Michael | Painter | MOUNT CARMEL HLTH SYS | 914346 | SCOTT D | YOUNG | 1720160914 | CENTRAL OH ENDOSCOPY CENTER | 916292 | 1467768549 | CENTRAL OH ENDOSCOPY CENTER | 1467768549 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02052018 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180130097 | K5190, Z86010 | Personal history of colonic polyps | ICD10 | 02282018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 29, 29, 29, 29 | CPT | C4 | Sent as a in and out but member has had several colonoscopy 01/03/17  02/05/18 needs to be review by a prior authorization. |  |  |  |  | 0 |
| 02282018 | 2018-02-28T07:42:53+00:00 | Q20508378 | 000070531-01 | Dolores | Mcintyre | GERALD K PERELMAN DPM | 935726 | MARK W | HODGES | 1710974209 | FAYETTE COUNTY MEM HSP 1 | 935806 | 1508978677 | DENNIS A MESKER | 1467446146 | Radiology (HH) | OP RAD | Pre-Service | PRE | DENNIS A | MESKER | 03012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282018 | 03302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301050 | R109 | Unspecified abdominal pain | ICD10 | 03012018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02232018 | 2018-02-23T13:34:11+00:00 |  | 000080384-01 | Norma | Ingles | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03012018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03072018 | 06072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180223120 | C4492, C760, C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 03012018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 02262018 | 2018-02-26T14:21:53+00:00 |  | 000047805-01 | JUDITH | HEISLER | MOUNT CARMEL HLTH SYS | 900677 | DAVID A | SABOL | 1902890569 | CENTRAL OH ENDOSCOPY CENTER | 916292 | 1467768549 | CENTRAL OH ENDOSCOPY CENTER | 1467768549 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 03012018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03022018 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180226107 | K5100 | Ulcerative (chronic) pancolitis without complications | ICD10 | 03012018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:44:08+00:00 |  | 000054303-01 | RITA | VELLANI | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03012018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02282018 | 05302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180228114 | B351, E1140 | Type 2 diabetes mellitus with diabetic neuropathy, unsp | ICD10 | 03012018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 1 | 1 | Approved | 92 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T16:12:51+00:00 |  | 000099121-01 | Mary | Moler | CARDIOVASC ASSESSMENT AN | 935902 | SHANTANU | SINHA | 1124029426 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | DME | DME | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03012018 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03012018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180228142 | R002 | Palpitations | ICD10 | 03012018 | 0296T | EXT ECG RECORDING | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Dr. SHANTANU SINHA is PAR per AA |  |  |  |  | 0 |
| 02282018 | 2018-02-28T08:56:09+00:00 | Q20509501 | 000118644-01 | SHARON | MENTGES | MOUNT CARMEL HLTH SYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL HLTH SYS | 937331 | 1457617235 | JAMES E POPP | 1639162753 | Radiology (HH) | OP RAD | Pre-Service | PRE | JAMES E | POPP | 03012018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 03072018 | 04062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301063 | M545 | Low back pain | ICD10 | 03012018 | 72148, 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T08:31:40+00:00 |  | 000005236-01 | JAMES | MORGAN | OSU NEPHROLOGY | 939190 |  | OSU NEPHROLOGY | 0 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03192018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301064 | N186 | End stage renal disease | ICD10 | 03012018 | 99245 | CONSULTS - INITIAL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:51:57+00:00 | Q20510631 | 000084213-01 | Robert | Lochmeyer | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03012018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02282018 | 03302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301071 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 03012018 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T10:13:39+00:00 | Q20511154 | 000105171-01 | Vicky | Smith | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 948350 | 1205887023 | SAYED TARIQ RIZVI | 1114198348 | Radiology (HH) | OP RAD | Pre-Service | PRE | SAYED | TARIQ RIZVI | 03012018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301076 | R079 | Chest pain, unspecified | ICD10 | 03012018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T11:00:33+00:00 |  | 000081722-01 | Lee | Rathbun | OSU INTERNAL MED LLC | 927893 | ASHLEY E | ROSKO | 1235339805 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03012018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03022018 | 09022018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180301121 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 03012018 | 99201, 99202, 99203, 99204, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83909, 83900, 86900, 86901, 86850, 82728, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 84165, 84155, 85730, 85610, 82306, 84550, 83615, 80053, 99205 | OFFICE CALL - NEW PATIENT | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | CPT | C4 |  |  |  |  |  | 0 |
