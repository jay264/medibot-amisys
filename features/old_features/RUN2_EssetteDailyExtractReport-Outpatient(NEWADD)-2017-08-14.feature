Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-14
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
| 08042017 | 2017-08-04T00:30:45+00:00 | Q18999842 | 000057061-01 | LAWRENCE | MOCK | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805049 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08142017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08032017 | 2017-08-03T09:30:44+00:00 |  | 000116495-01 | Vivian | Shutts | FIRST SETTLEMENT ORTHOS | 924320 | JASON L | GESSEL | 1861672669 | FIRST SETTLEMENT ORTHOS | 924319 | 1215992458 | FIRST SETTLEMENT ORTHOPAEDICS INC | 1215992458 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FIRST SETTLEMENT ORTHOPAEDICS INC | 08142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08032017 | 09032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803132 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08142017 | 20610, J7326 | Gel-one | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T13:21:15+00:00 | Q19049770 | 000015960-01 | CHARITY | NEECE | ADENA MEDICAL GROUP LLC | 935877 | LLOYD W | COATS | 1477558906 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812100 | R911 | Solitary pulmonary nodule | ICD10 | 08142017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T06:41:14+00:00 | Q19016543 | 000044240-01 | SARA | MYERS | COPC CENTRAL OHIO PRIMAR | 932486 | MAGDALENA | TEODORESCU | 1750674693 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805080 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 08142017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T09:29:39+00:00 |  | 000115330-01 | DIANA | JOHNSON | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 08142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807004 | S62102A, S7222XA | Displaced subtrochanteric fracture of left femur, init | ICD10 | 08142017 | 99024, 99214, 73510, 73550, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T18:02:21+00:00 |  | 000028177-01 | PATRICIA | CHANDLEY | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07112017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170801074 | C189, Z803, Z8042 | Family history of malignant neoplasm of prostate | ICD10 | 08142017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 63, 63 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:27:10+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810060 | K831 | Obstruction of bile duct | ICD10 | 08142017 | 43260, 43262, 43264, 43274, 43275, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC | PC to provider  LVMM  auth approved  advised of auth number. |  |  |  |  | 0 |
