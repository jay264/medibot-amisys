Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-05
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
| 08242017 | 2017-08-24T09:15:38+00:00 |  | 000078923-01 | Nancy | Ugie | OSU INTERNAL MED LLC | 950537 | MAYUMI | ENDO | 1285946541 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09052017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827002 | C021 | Malignant neoplasm of border of tongue | ICD10 | 09052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T15:49:46+00:00 |  | 000073923-01 | Sharon | Cline | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 09052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09302017 | 12302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827010 | G250 | Essential tremor | ICD10 | 09052017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08312017 | 2017-08-31T14:15:00+00:00 | Q19222101 | 000028504-01 | VIRGIL | GOODWIN | COPC CENTRAL OHIO PRIMAR | 948461 | KATHRYN Z | GATHOF | 1801162896 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 09052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905021 | R42 | Dizziness and giddiness | ICD10 | 09052017 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T12:56:56+00:00 |  | 000063213-01 | DENNIS | WAUGH | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09062017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828136 | C9101, D89811 | Chronic graft-versus-host disease | ICD10 | 09052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 82615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, 36522, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 13, 19 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | HCPCS | HC |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T11:08:00+00:00 | Q19208438 | 000103714-01 | Carlton | Burt | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08302017 | 02262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905023 | C20 | Malignant neoplasm of rectum | ICD10 | 09052017 | J9206, J2469, J1100, J0640, J9190, J1453, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T09:19:07+00:00 |  | 000038561-01 | ROBERT | TALMADGE | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09062017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827003 | R220 | Localized swelling, mass and lump, head | ICD10 | 09052017 | 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T08:39:24+00:00 |  | 000005196-01 | MARJORIE | YOUNG | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08242017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827011 | G20 | Parkinson's disease | ICD10 | 09052017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T08:53:00+00:00 | Q19205734 | 000073673-01 | Donna | Goins | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 09052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11032017 | 05022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905049 | M810 | Age-related osteoporosis w/o current pathological fracture | ICD10 | 09052017 | J0897 | Denosumab injection | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T13:32:50+00:00 |  | 000077026-01 | Michael | Workman | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | COCHLEAR AMERICA GROUP | 904032 | 1336149426 | COCHLEAR AMERICA GROUP | 1336149426 | DME | DME | Pre-Service | PRE |  | COCHLEAR AMERICA GROUP | 09052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827012 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 09052017 | L8624 | BATTERY REPLACEMENT FOR COCHLEAR IMPLANT DEVICE | HCPCS | 2 | 2 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
