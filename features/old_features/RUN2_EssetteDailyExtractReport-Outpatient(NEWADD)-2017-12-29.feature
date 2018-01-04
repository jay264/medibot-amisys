Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-29
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
| 12282017 | 2017-12-28T08:16:34+00:00 | Q20057628 | 000089067-01 | Beverly | Laucher | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01172018 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171229035 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 12292017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12192017 | 2017-12-19T06:37:12+00:00 | Q20008226 | 000006283-01 | MARY ANN | MCKEE | MOUNT CARMEL HLTH PRVDRS | 917813 | JESSICA N | POWELL | 1386893832 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 12292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12222017 | 01212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227034 | R791 | Abnormal coagulation profile | ICD10 | 12292017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Cannot find servicing provider. Please update with correct provider. Other information can be found in the 278-5010 folder under the date 12/26 and in the Initial folder. |  |  |  |  | 0 |
| 12282017 | 2017-12-28T09:30:14+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12282017 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228084 | C029, R1313 | Dysphagia, pharyngeal phase | ICD10 | 12292017 | 99211, 99212, 99213, 99214, 99215, 92610, 92612, 92526, 31575, 31579, 92507, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94 | HCPCS | HC |  |  |  |  |  | 0 |
| 12282017 | 2017-12-28T14:59:36+00:00 |  | 000079515-01 | Thomas | Dodd | OSU SURGERY LLC | 943637 | MARY E | DILLHOFF | 1518174739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 01032018 | 04032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228104 | R634, K8689 | OTHER SPECIFIED DISEASES OF PANCREAS | ICD10 | 12292017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T14:04:59+00:00 |  | 000067080-01 | LENORA | TUTTLE | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02082018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171221080 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 12292017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T16:11:01+00:00 |  | 000075805-01 | Jean | Kessler | CLEVELAND CLINIC FNDN | 914982 | DOUGLAS R | JOHNSTON | 1790957991 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 12292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01222018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171227067 | I2510, I4891, I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 12292017 | 99211, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T15:11:43+00:00 |  | 000091437-01 | Samuel | Wollum | LAWS, JAMES G | 902649 | JAMES G | LAWS | 1720016884 | LAWS, JAMES G | 902649 | 1720016884 | JAMES G LAWS | 1720016884 | Out of Network Services | OONS | Pre-Service | PRE | JAMES G | LAWS | 12292017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01022018 | 02022018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171229085 | R0789 | Other chest pain | ICD10 | 12292017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
