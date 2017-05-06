Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-02-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-02-01
	Given I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	#And in the "certification" page I convert "<auth_requested_date>" into the "req_dates_1" image
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	#And in the "Certification" page I enter the "<diagnosis_code>" into the "Primary Diag Dt 1" field
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I enter the first "<service_code>" into the "Primary Proc Number 1" service code field and save the variable
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
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
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
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
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<diagnosis_code>" into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And I use the auth class "<auth_class>" and approved days "<auth_approval_days>" to input the hospital services page if it is inpatient

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | type   |	type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 01312017 | 2017-01-31T15:58:23+00:00 |  | 000078631-01 | Larry | Jean | NCHMD INC | 949577 | RICHARD J | DE ASLA | 1053387191 | NCHMD INC | 949577 | 1831120195 | RICHARD J DE ASLA | 1053387191 | Out of Network Services | OONS | Pre-Service | PRE | RICHARD J | DE ASLA | 02012017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01252017 | 02252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201001 | S86011A | Strain of right Achilles tendon, initial encounter | ICD10 | 02012017 | 27650 | RUPT ACHILLES TENDON FROM INSERTION | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01312017 | 2017-01-31T15:58:56+00:00 |  | 000027780-01 | PHILLIP | ALSPACH | OSU INTERNAL MED LLC | 945910 | ASHIMA | GOYAL | 1134424492 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02012017 | 04022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201004 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 02012017 | 84443, 84439, 86800, 84432 | THYROGLOBULIN | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 61, 61, 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01312017 | 2017-01-31T15:59:23+00:00 |  | 000085348-01 | Nelson | Collins | CORNERSTONE MEDICAL SRVS MIDWEST LLC | 907289 |  | CORNERSTONE MEDICAL SRVS MIDWEST LLC | 1023026499 | CORNERSTONE MEDICAL SRVS MIDWEST LLC | 907289 | 1023026499 | CORNERSTONE MEDICAL SRVS MIDWEST LLC | 1023026499 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS MIDWEST LLC | 02012017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02012017 | 05022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201009 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 02012017 | E0601, E0562, A7029, A7039, A4604 | TUBING WITH INTEGRATED HEATING ELEMENT FOR USE WITH POSITIVE | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 01302017 | 2017-01-30T10:23:45+00:00 |  | 000093372-01 | Ella | Weckbacher | FIRST SETTLEMENT ORTHOS | 924320 | JASON L | GESSEL | 1861672669 | FIRST SETTLEMENT ORTHOS | 924319 | 1215992458 | FIRST SETTLEMENT ORTHOPAEDICS INC | 1215992458 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FIRST SETTLEMENT ORTHOPAEDICS INC | 02012017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02012017 | 05012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201013 | S82852D | Displ trimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 02012017 | 29405, Q4038 | CAST SUPPLIES, SHORT LEG CAST, ADULT (11 YEARS +), FIBERGLASS | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 90, 90 | HCPCS | HC |  |  |  |  |  | 0 |
