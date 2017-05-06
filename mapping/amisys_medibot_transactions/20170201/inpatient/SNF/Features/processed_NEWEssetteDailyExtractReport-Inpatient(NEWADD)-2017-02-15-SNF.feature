Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-15
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

	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02072017 | 2017-02-07T13:22:07+00:00 |  | 000093029-01 | William | Clark Sr. | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02152017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210051 | I214, R251 | Tremor, unspecified | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  | 78 year old male presented to the ED from the ECF with c/o bilateral hand /arm tremors.  HKG CBC  CMP WNL troponin mildly elevated.  admitted for further work up of neurological change  and to trend troponin to ensure stability. | 02062017, 02072017, 02082017, 02092017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation,  | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 02142017 | 2017-02-14T11:31:08+00:00 |  | 000003454-01 | NANCY | WAGNER | OSU FAMILY PRACTICE SVCS | 917486 | DONALD O | MACK | 1316980311 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 02152017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170214084 | S329XXD | Fx unsp parts of lumbosacr spin & pelv, 7thD | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02132017 | 2017-02-13T16:35:57+00:00 |  | 000083622-01 | Eila | Custer | HOSP SVC MED GRP OF CLAR | 901387 | IMTIAZ | AHMED | 1619986155 | VILLA SPRINGFIELD | 906468 | 1922138098 | VILLA SPRINGFIELD | 1922138098 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | VILLA SPRINGFIELD | 02152017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170214114 | Z471 | Aftercare following joint replacement surgery | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  | per telephone with Anna at facility  PT/OT - 50 min/day, Per SNF Face Sheet member admitted 02/12/2017  updated Essette to reflect. | 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T09:18:18+00:00 |  | 000078638-01 | Carol | Stretcher | SOUND KENWOOD HSPISTS OF | 925605 | SHAZIA | KHAN | 1154367290 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 02152017 | Denied | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170214121 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T12:38:03+00:00 |  | 000032334-01 | KATHLEEN | JEFFERS | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02152017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170214122 | S72001D | Fx unsp part of nk of r femr, subs for clos fx w routn heal | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  | out to hospital 2/13/17 | 02132017 | SNF | SNF | Approved | 0 |
| 02142017 | 2017-02-14T14:19:30+00:00 |  | 000029654-01 | JUDITH | WARD | MISKEN CONSULTING INC | 905904 | KENNETH A | WRITESEL | 1023078532 | ST CATHERINES MANOR OF W | 920011 | 1649294216 | ST CATHERINES MANOR OF WASHINGTON CO | 1649294216 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ST CATHERINES MANOR OF WASHINGTON CO | 02152017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215007 | J189, J918, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  | per telephone call with Betsy  DX: pleural effusion; acute/chronic respiratory failure; pneumonia | 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T14:37:14+00:00 |  | 000108524-01 | William | Hamilton | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | CEDAR HILL CARE CENTER | 924191 | 1326035130 | CEDAR HILL CARE CENTER | 1326035130 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CEDAR HILL CARE CENTER | 02152017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215010 | G20, R296 | Repeated falls | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T14:49:49+00:00 |  | 000085052-01 | Loretta | Wolfe | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 02152017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215012 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T16:01:04+00:00 |  | 000086155-01 | Polly | Bartholomew | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 02152017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215028 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T16:22:58+00:00 |  | 000112483-01 | Betty | Vineyard | HUMPHREY, FREDERIC A | 906929 | FREDERIC A | HUMPHREY | 1366438848 | ARBORS AT MARIETTA | 943315 | 1265830012 | ARBORS AT MARIETTA | 1265830012 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MARIETTA | 02152017 | Denied | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215031 | M479 | Spondylosis, unspecified | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T17:19:19+00:00 |  | 000051330-01 | WILLIAM | MYERS | FAIRFIELD HLTHCARE PROFS | 900819 | BRIAN L | HENDRICKSON | 1710961412 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 02152017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215050 | G20, I2510, I509, M4856XD, M4856XS, M545, Z7409 | Other reduced mobility | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02152017 | 2017-02-15T08:34:37+00:00 |  | 000083914-01 | Mary | Meier | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 02152017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215055 | M86659, T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02152017 | 2017-02-15T09:34:30+00:00 |  | 000081676-01 | Mark | Kempf | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 02152017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170215074 | L03116 | Cellulitis of left lower limb | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02142017 | 2017-02-14T15:22:58+00:00 |  | 000073214-01 | Sandra | Betkey | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02152017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152017 | 02162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215085 | R4182 | Altered mental status, unspecified | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
