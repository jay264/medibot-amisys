Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-12_thru_2018-01-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-12_thru_2018-01-14
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
| 01042018 | 2018-01-04T13:13:58+00:00 | Q20097898 | 000044666-01 | JOHN | SPEARS | CENTRAL OH FAM PHYS INC | 939198 |  | CENTRAL OH FAMILY PHYS INC | 1639264351 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180112004 | M66829 | Spontaneous rupture of other tendons, unspecified upper arm | ICD10 | 01122018 | 73201 | CAT SCAN UPPER EXTREMITY ENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T11:58:03+00:00 | Q20138991 | 000032593-01 | LYNNE | MARA | EKG INC | 935423 | TODD N | CARDWELL | 1891794913 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01102018 | 03112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180112011 | R0789 | Other chest pain | ICD10 | 01122018 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01102018 | 2018-01-10T12:26:43+00:00 | Q20139488 | 000051883-01 | CAROLE | RAUTIO | ADENA HEALTH SYSTEMS | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 01122018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180112012 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 01122018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01112018 | 2018-01-11T07:27:00+00:00 | Q20145784 | 000107736-01 | James | Gehring | ALLIANCE PHYSICIANS INC | 908980 | JOHN J | HALUSCHAK | 1407895535 | BLOOM FAM EYE SURGEONS | 934968 | 1649342890 | MICHAEL S BLOOM | 1639128689 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | MICHAEL S | BLOOM | 01122018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01222018 | 07212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180112053 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 01122018 | J2405 | INJECTION, ONDANSETRON HYDROCHLORIDE, PER 1 MG | HCPCS | 384 | 384 | Approved | 181 | HCPCS | HC | J2405: 384: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01112018 | 2018-01-11T08:57:11+00:00 | Q20146334 | 000097344-01 | Dallas | Kazee | ADENA MEDICAL GROUP LLC | 922224 | ADAM L | ESHAM | 1801090469 | PIKE COMMUNITY HOSPITAL | 904846 | 1720018971 | PIKE COMMUNITY HOSPITAL | 1720018971 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PIKE COMMUNITY HOSPITAL | 01122018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01152018 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180112062 | R1033 | Periumbilical pain | ICD10 | 01122018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T14:37:38+00:00 |  | 000113838-01 | Sandra | Wells | ALLIANCE PHYSICIANS INC | 917982 | STEPHEN R | FLEISCHER | 1134335805 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 01122018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12012017 | 01022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025175 | R1013, R1314, R197 | Diarrhea, unspecified | ICD10 | 01122018 | 43235, 43774, 43775 | LAP SLEEVE GASTRECTOMY | CPT | 1, 1, 0 | 1, 1, 1 | Approved, Approved, Void | 33, 33, 33 | CPT | C4 | Provider submitted orginally with the wrong code 43775 wanted it correct and letter resent to them with the correct code of 43774 this was done today. |  |  |  |  | 0 |
