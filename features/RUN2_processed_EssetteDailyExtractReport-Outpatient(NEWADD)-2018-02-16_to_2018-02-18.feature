Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-16_to_2018-02-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-16_to_2018-02-18
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
| 02142018 | 2018-02-14T15:01:20+00:00 | Q20407943 | 000100149-01 | Linda | Gallenstein | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02162018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03142018 | 04132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216027 | C8218 | Follicular lymphoma grade II, lymph nodes of multiple sites | ICD10 | 02162018 | 70491, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T15:11:39+00:00 | Q20408158 | 000107470-01 | Richard | Pummill | BELLBROOK FAMILY PRCT | 915952 | JOHN E | MURPHY IV | 1508044082 | CASSANO COMMUNITY HEALTH | 904949 | 1588630347 | INGRID M BROWN | 1952309726 | Radiology (HH) | OP RAD | Pre-Service | PRE | INGRID M | BROWN | 02162018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216028 | R51 | Headache | ICD10 | 02162018 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02152018 | 2018-02-15T07:37:56+00:00 | Q20410204 | 000012558-01 | MARILYN | WILSON | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216038 | N200 | Calculus of kidney | ICD10 | 02162018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02152018 | 2018-02-15T08:17:40+00:00 | Q20410711 | 000044494-01 | PAUL | WITHERSPOON | CEN OH RADIATION ONCOLOG | 936034 | CHUCK C | CHO | 1528069945 | LANCASTER RADIATION ONCO | 945022 | 1205837663 | HUALEI LI | 1730492539 | Cardiology (HH) | OP CARD | Pre-Service | PRE | HUALEI | LI | 02162018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216046 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 02162018 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 10 | 10 | Approved | 91 | HCPCS | HC | G6013: 10: G6013 10 |  |  |  |  | 0 |
| 02162018 | 2018-02-16T10:30:41+00:00 | Q20422606 | 000100653-01 | Rose | Martin | MOUNT CARMEL HLTH PRVDRS | 950860 | DAVID V | BIEDERMAN | 1811382344 | MOUNT CARMEL HLTH PRVDRS | 950860 | 1013942630 | DAVID V BIEDERMAN | 1811382344 | Radiology (HH) | OP RAD | Pre-Service | PRE | DAVID V | BIEDERMAN | 02162018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216062 | I890 | Lymphedema, not elsewhere classified | ICD10 | 02162018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T11:25:17+00:00 |  | 000037946-01 | PETER | PALM | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02192018 | 05192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216105 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 02162018 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, 97597 | ACTIVE WOUND CARE/20 CM OR < | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02152018 | 2018-02-15T12:38:57+00:00 | Q20415970 | 000088545-01 | Ila | Koehler | GRADY MEMORIAL HOSPITAL | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | LAVERNE G | MENSAH | 02162018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 08252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216106 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 02162018 | J9201, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 270, 240 | 270, 240 | Approved, Approved | 181, 181 | HCPCS | HC | J9201: 270: Gemcitabine 1000-1500 mg/m2  IV  days 1  8  15  every 28 days  6 cycles: J1626: 240: Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 02162018 | 2018-02-16T15:29:21+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02162018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02192018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180216128 | C9201 | Acute myeloblastic leukemia, in remission | ICD10 | 02162018 | 36415, 85025, 88237, 88262, 88271, 88275, 88305, 38221, 88313, 38222, 83909, 83900, 88184, 88185 | FLOWCYTOMETRY/TC, ADD-ON | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
