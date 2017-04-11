Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-03
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-03
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
| 03132017 | 2017-03-13T14:13:26+00:00 |  | 000027029-01 | GLENNA | ROGERS | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330029 | C8293 | Follicular lymphoma, unsp, intra-abdominal lymph nodes | ICD10 | 04032017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:33:43+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330142 | R911 | Solitary pulmonary nodule | ICD10 | 04032017 | 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T08:28:39+00:00 |  | 000075995-01 | Kenneth | Ruprecht | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403063 | C9000, Z9481 | Bone marrow transplant status | ICD10 | 04032017 | 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 85730, 85610, 86900, 86901, 86850, 36145, 85025, 82947 | GLUCOSE; EXC. UA (EG BLD, SP FLD) | CPT | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T13:06:37+00:00 |  | 000083518-01 | Rose | Dorsey | RCHP WILMINGTON LLC | 939625 | CASSANDRA | GRENADE | 1770744807 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 03312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403065 | C7A8, C7B8 | Other secondary neuroendocrine tumors | ICD10 | 04032017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:57:58+00:00 | Q18022399 | 000107771-01 | Ted | Berry | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403078 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 04032017 | J9045, J9181, J2469, J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC | J9045: 90 Carboplatin 10mg/mL-475mg (at 5 AUC (CrCl) IV q21 days x6 cycles (6 treatments). Total billing units = 90; J9181: 120 Etoposide 20mg/mL - 194mg (at 100 mg/m2) IV q21 days x6 cycles (6 treatments). Total billing units = 120; J2469: 60 Palonosetron HCI 0.25mg/5mL - 0.25mg IV q21 days x6 cycles (6 treatments). Total billing units = 60; J2505: 6 Neulasta On Body Injector 6mg/0.6mL - 6mg Subcutaneous once q21 days x6 cycles (6 treatments). Total billing units = 6 |  |  |  |  | 0 |
| 04032017 | 2017-04-03T13:04:48+00:00 | Q17450779 | 000068551-01 | CAROLYN | STONE | LICKING MEM PROF CORP | 930953 | ASEGID H | KEBEDE | 1598716201 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 04032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403088 | E279 | Disorder of adrenal gland, unspecified | ICD10 | 04032017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T13:46:04+00:00 |  | 000095877-01 | Clifford | Bruner Jr | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04032017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 04062017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403091 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04032017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:26:04+00:00 | Q18107346 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04032017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403099 | C180 | Malignant neoplasm of cecum | ICD10 | 04032017 | J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:36:35+00:00 |  | 000082943-01 | Jeffrey | Ledsome | MARIETTA HLTH CARE PHYS | 922070 | DORAI T | RAJAN | 1831297654 | MICHAEL SHRAMOWIAT LLC | 923894 | 1003820374 | MICHAEL SHRAMOWIAT | 1568485233 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | SHRAMOWIAT | 04032017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 04032017 | 04042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329112 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 04032017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Message left for Chasity at provider's office.  Request is a retro request with date of service of 3/22/17 and request date 3/29/17.  Clinical information also still needed to process request., Expedited portion removed from request as per phone call with Chasity.  Date of service is 3/22. |  |  |  |  | 0 |
