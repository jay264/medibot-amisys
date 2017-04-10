Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-29
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
| 03132017 | 2017-03-13T15:11:40+00:00 |  | 000073550-01 | Leota | Shook | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 03292017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03132017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314124 | E119, M150 | Primary generalized (osteo)arthritis | ICD10 | 03292017 | K0821, E2365, E2365 | POWER WHEELCHAIR ACCESSORY, U-1 SEALED LEAD ACID BATTERY, EACH (E.G. GEL | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC | Spoke with Nicole At Dr Mehra's office MBR is 235.8lb and 5'5 Spoke with Seth @ Rehab Medical Phone # 855-386-3124  stated sje can use K0821 and E2365 batteries |  |  |  |  | 0 |
| 03142017 | 2017-03-14T10:09:08+00:00 | Q17958960 | 000114101-01 | Lenora | Bolinger | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 03292017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03142017 | 09122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170314140 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 03292017 | J9060, J9060, J9181 | ETOPOSIDE, 10 MG | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 183, 183, 183 | HCPCS | HC |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T09:43:59+00:00 |  | 000110543-01 | Alter | Freeman | MERCY HEALTH PHYSICIANS | 921155 | DENVER | STANFIELD | 1477551406 | PROSCAN IMAGING CT AT MIDTOWN | 928566 | 1508856667 | PROSCAN IMAGING CT AT MIDTOWN | 1508856667 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING CT AT MIDTOWN | 03292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170327101 | M25561 | Pain in right knee | ICD10 | 03292017 | 73702 | CAT SCAN LOWER EXTRMTY W/WO CNTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T12:11:25+00:00 |  | 000021196-01 | FLORCE | HIGGINS | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03292017 | Approved | THE TIMKEN COMPANY | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328041 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 03292017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T14:21:25+00:00 |  | 000055345-01 | ERIC | CROKER | OSU INTERNAL MED LLC | 944258 | YAN | CHEN | 1255777470 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328119 | C01, C7801, Z86718 | Personal history of other venous thrombosis and embolism | ICD10 | 03292017 | 93970, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T16:38:14+00:00 |  | 000045339-01 | Alice | Jansons | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03292017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329054 | C069 | Malignant neoplasm of mouth, unspecified | ICD10 | 03292017 | 92507, 92610, 92611, 92612, 92526, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T12:52:04+00:00 | Q18069757 | 000067295-01 | JAMES | WILSON | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 03292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04012017 | 05012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329079 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03292017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T11:05:33+00:00 | Q18075114 | 000108323-01 | RONALD | HENRY | DERALD MADSON MD INC | 919540 |  | DERALD MADSON MD INC | 1134229305 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 03292017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03292017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | No child records to display. |  |  |  |  |  |  | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T08:56:59+00:00 |  | 000081512-01 | Robert | Strutton | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03292017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04022017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329107 | J439 | Emphysema, unspecified | ICD10 | 03292017 | 91034, 91010, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T15:37:52+00:00 | Q18076704 | 000088856-01 | Sandra | Williams | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 03292017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03292017 | 06272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | No child records to display. |  |  |  |  |  |  | J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 0 | 1 |  | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T15:18:19+00:00 |  | 000095682-01 | Raymond | Rieckhoff | GERIATRIC PROVIDERS AND | 945455 | ORLANDO | HERNANDEZ | 1962405308 | BIOTECH X-RAY | 946708 | 1770949737 | BIOTECH X-RAY | 1770949737 | Out of Network Services | OONS | Pre-Service | PRE |  | BIOTECH X-RAY | 03292017 | Denied | MediGold Southwest OH Essential Care | Fax | Administrative Denial | Outpatient | 03292017 | 03302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170328124 | J00, J069 | Acute upper respiratory infection, unspecified | ICD10 | 03292017 | 71010, R0070, Q0092 | SET-UP PORTABLE X-RAY EQUIPMENT | HCPCS | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC | P/c to Susan Haffner 513-771-1779 left a VM that the CPT code she provided 20092 is not an active code.  I need the correct code so I can submit the request to the nurses.  Left call back information., R/C from Susan H she said the correct CPT code is Q0092.  Thanked her for calling back. |  |  |  |  | 0 |
