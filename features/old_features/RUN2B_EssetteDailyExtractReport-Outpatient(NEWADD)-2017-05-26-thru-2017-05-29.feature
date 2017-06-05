Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-26-thru-2017-05-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-26-thru-2017-05-29
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
| 05112017 | 2017-05-11T15:35:45+00:00 | Q18410819 | 000055872-01 | SANDRA | SPARACINO | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | TAYLOR STATION SURGICAL CENTER | 936507 | 1942231493 | TAYLOR STATION SURGICAL CENTER | 1942231493 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | TAYLOR STATION SURGICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05152017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526162 | I442 | Atrioventricular block, complete | ICD10 | 05262017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05162017 | 2017-05-16T07:50:52+00:00 | Q18423488 | 000013204-01 | RICHARD | COLLINS | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | TAYLOR STATION SURGICAL CENTER | 936507 | 1942231493 | TAYLOR STATION SURGICAL CENTER | 1942231493 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | TAYLOR STATION SURGICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526167 | R001 | Bradycardia, unspecified | ICD10 | 05262017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T18:45:10+00:00 | Q18448854 | 000050271-01 | PATRICIA | MCCOLLEY | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526175 | T82110A | Breakdown (mechanical) of cardiac electrode, init encntr | ICD10 | 05262017 | 33217, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05252017 | 2017-05-25T12:30:02+00:00 | Q18497217 | 000087849-01 | Paul | Dilliard | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05232017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526184 | R001 | Bradycardia, unspecified | ICD10 | 05262017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T15:50:15+00:00 |  | 000006032-01 | ELMER | ETTERS | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | ADVANCED RESPIRATORY INC | 937839 | 1053357905 | ADVANCED RESPIRATORY INC | 1053357905 | DME | DME | Pre-Service | PRE |  | ADVANCED RESPIRATORY INC | 05262017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05262017 | 05272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170522131 | J479 | Bronchiectasis, uncomplicated | ICD10 | 05262017 | E0483 | HIGH FREQUENCY CHEST WALL OSCILLATION AIR-PULSE GENERATOR SYSTEM, (INCLU | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Message left for Patty (Dr Writz) assistant to request for additional clinical documentation for vest airway clearance system., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05232017 | 2017-05-23T15:06:43+00:00 |  | 000097209-01 | Audrey | Rawlings | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05262017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 05262017 | 05272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170523137 | J320 | Chronic maxillary sinusitis | ICD10 | 05262017 | 07210 | SURGICAL REMOVAL OF ERUPTED TOOTH | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Per Supervisor Lindsey G this dental service must go through Delta Dental. |  |  |  |  | 0 |
