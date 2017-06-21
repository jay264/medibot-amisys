Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-19
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
| 06012017 | 2017-06-01T16:21:37+00:00 |  | 000113549-01 | Ronald | Bering | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06192017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06052017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602114 | K1379 | Other lesions of oral mucosa | ICD10 | 06192017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | PHONE CALL TO PLACE TO BRANDI C W/OSU PRE-CERT  MESSAGE LEFT ON CONFIDENTIAL VM REQUESTING CLINICAL DOCUMENTATION. CALL BACK NUMBER LEFT AS WELL., RETURN CALL FROM BRANDI  THIS REQUEST IS ADDENDUM TO AUTH X170516118.  NO ADDITIONAL CLINICALS TO BE SENT. |  |  |  |  | 0 |
| 06092017 | 2017-06-09T09:55:04+00:00 |  | 000082631-01 | Leslie | Kennedy Jr | UNIVERSITY OF CINCINNATI | 931953 | AMIT | GOVIL | 1447208566 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 06192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609116 | I10 | Essential (primary) hypertension | ICD10 | 06192017 | 99354, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T09:12:09+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06192017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612109 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 06192017 | G0364, 38221, 88313, 88237, 88262, 88184, 88342, 88307, 36415, 85025, 80042, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 82784, 82785, 88184, 84550, 82232, 84100, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T14:24:31+00:00 |  | 000065429-01 | JAMES | RAINEY | BUCKEYE HEART AND VASCUL | 902332 | SUKIRTHARAN | SINNATHAMBY | 1538138037 | BUCKEYE HEART AND VASCUL | 902332 | 1982805610 | SUKIRTHARAN SINNATHAMBY | 1538138037 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | SUKIRTHARAN | SINNATHAMBY | 06192017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08302017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612155 | I83893, I872, R600 | Localized edema | ICD10 | 06192017 | 36478, 36471 | INJ. SCLEROSING SOL.,MULT VNS, 1 LG | CPT | 1, 2 | 1, 2 | Approved, Approved | 124, 124 | CPT | C4 | Previously approved under auth 170428140.  Mbr unable to schedule all services prior to auth expiring. |  |  |  |  | 0 |
| 06132017 | 2017-06-13T14:57:48+00:00 | Q18640784 | 000062041-01 | DAVID | HAYS | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ADENA REGIONAL MEDICAL CENTER | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 12102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170613143 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06192017 | J9267, J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1500, 78, 90 | 1500, 78, 90 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T15:01:13+00:00 |  | 000068535-01 | MARILYN | WINKFIELD | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Clinical Trial | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170616167 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06192017 | 74177, 70553, 71260, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T10:48:01+00:00 | Q18669797 | 000087819-01 | Carol | Wenstadt | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619008 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06192017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T15:50:38+00:00 | Q18589978 | 000039580-01 | BARBARA | STAFFORD | DAYTON PHYSICIANS LLC | 909507 | JAMES H | SABIERS | 1447205638 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 12032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619011 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06192017 | J9045, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 48, 40 | 48, 40 | Approved, Approved | 181, 181 | HCPCS | HC | J9045: 48 INJECTION  CARBOPLATIN  50 MG  Dispensed as: 580.00 mg  1 treatment(s) each cycle  4 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 06162017 | 2017-06-16T10:03:49+00:00 | Q18630416 | 000044450-01 | MARGARET | NICOLIA | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619014 | C163 | Malignant neoplasm of pyloric antrum | ICD10 | 06192017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T10:00:57+00:00 | Q18668871 | 000085666-01 | Arthur | Pack | AMERICAN HLTH NETWORK OF | 909710 | ERIC C | SCHROER | 1508805680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619098 | I10 | Essential (primary) hypertension | ICD10 | 06192017 | 74175 | CT ANGIO ABDOM W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T13:15:06+00:00 | Q18640427 | 000072830-01 | Ruth | Brown | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 06192017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619103 | R079 | Chest pain, unspecified | ICD10 | 06192017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T13:01:21+00:00 | Q18640728 | 000072893-01 | Barry | Weber | MERCY HEALTH PHYSICIANS | 904113 | FAIQ S | AKHTER | 1801896303 | MERCY HEALTH PHYSICIANS | 911477 | 1205887023 | MERCY HEALTH PHYSICIANS CINCINNATI L | 1205887023 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HEALTH PHYSICIANS CINCINNATI L | 06192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619104 | Z9861 | Coronary angioplasty status | ICD10 | 06192017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T08:36:04+00:00 |  | 000084783-01 | John | Phillips | OSU SURGERY LLC | 912283 | JUAN A | CRESTANELLO | 1477505048 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06192017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07182017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619116 | I5020, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 06192017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 45, 45 | HCPCS | HC |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T09:25:43+00:00 |  | 000111455-01 | Barbara | Butcher | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06262017 | 09262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619122 | J439 | Emphysema, unspecified | ICD10 | 06192017 | 36600, 94726, 94620, 94010, 94729, 71020, 78580, 94621, 93307, 93325, 93320, 99213, 99214, G0239, G0424, 94799, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T17:08:21+00:00 | Q18588237 | 000080662-01 | Robert | Kelling | JEFFREY J HAGGENJOS | 916460 | JEFFREY J | HAGGENJOS | 1417940172 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06192017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619133 | R634 | Abnormal weight loss | ICD10 | 06192017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T10:24:06+00:00 |  | 000082883-01 | Paul | Sager | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 06192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06192017 | 09192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619141 | G20 | Parkinson's disease | ICD10 | 06192017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T10:25:07+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06192017 | 09192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619142 | C329, J398 | Other specified diseases of upper respiratory tract | ICD10 | 06192017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31575, 31579, 31231, G0463, 31237 | NASAL/SINUS ENDOSCOPY, SURGICAL; | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T10:22:00+00:00 |  | 000085979-01 | Kenneth | Hopper | MIDWEST NEPHROLOGY & HYP | 902396 | PIUS | KURIAN | 1174516652 | MIDWEST NEPHROLOGY & HYP | 902396 | 1881823193 | PIUS KURIAN | 1174516652 | Outpatient Surgery/Procedure | OP SURG | Post-Service | POST | PIUS | KURIAN | 06192017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 06192017 | 06202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170616152 | D631, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 06192017 | J0885 | INJECTION, EPOETIN ALFA, (FOR NON-ESRD USE), 1000 UNITS | HCPCS | 4 | 4 | Approved | 0 | HCPCS | HC | THIS IS A RETRO AUTH  WITH START DATE OF SERVICE OF 11/16/16. |  |  |  |  | 0 |
| 06162017 | 2017-06-16T14:27:49+00:00 |  | 000073876-01 | Dorothy | David | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | WESLEY GLEN | 939364 | 1215988423 | WESLEY GLEN | 1215988423 | Out of Network Services | OONS | Post-Service | POST |  | WESLEY GLEN | 06192017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 06192017 | 06202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170616166 | M6281, R269, R279 | Unspecified lack of coordination | ICD10 | 06192017 | 97110, 97112, 97116, 97162, 97530, 97542 | WHEELCHAIR MANAGEMENT/PROPULSION TRAINING, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | , , , , ,  | 0, 0, 0, 0, 0, 0 | CPT | C4 | RETRO REQUEST FOR OON SERVICES THAT BEGAN ON 5/25/17  IN-NETWORK PROVIDERS AVAILABLE |  |  |  |  | 0 |
