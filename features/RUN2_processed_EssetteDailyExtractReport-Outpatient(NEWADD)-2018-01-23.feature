Feature: RUN 2 Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-23
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2_EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-23
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
| 01222018 | 2018-01-22T09:27:30+00:00 |  | 000049571-01 | MARGARET | STEINMETZ | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 01232018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01292018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122030 | S52501D, S53105D | Unsp dislocation of left ulnohumeral joint, subs encntr | ICD10 | 01232018 | 73080, 73110, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T16:35:56+00:00 |  | 000116828-01 | Annette | Stevenson | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123039 | D332 | Benign neoplasm of brain, unspecified | ICD10 | 01232018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T09:15:00+00:00 | Q20197522 | 000045394-01 | ROBERT | DIXON | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 01232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02072018 | 08062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123071 | C61 | Malignant neoplasm of prostate | ICD10 | 01232018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 4 | 4 | Approved | 181 | HCPCS | HC | J9217: 4: Leuprolide 30 mg  IM  day 1  every 4 months  1 cycle |  |  |  |  | 0 |
| 01182018 | 2018-01-18T12:30:55+00:00 | Q20199941 | 000054144-01 | DAVID | HARPER | BERGER HEALTH PARTNERS | 930680 | SHABANA J | DEWANI | 1306928817 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01292018 | 07282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123075 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 01232018 | J9041, J8530, J8540 | DEXAMETHASONE, ORAL, 0.25 MG | HCPCS | 1, 432, 7680 | 1, 432, 7680 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9041: 352: (BCD) Bortezomib 1.3 mg/m2  IV  days 1  4  8  11  every 28 days  4 cycles: J8530: 432: Cyclophosphamide 300 mg/m2  PO  days 1  8  15  22  every 28 days  4 cycles: J8540: 7680: Dexamethasone 40 mg  PO  days 1-4  9-12  17-20  every 28 days  4 cycles |  |  |  |  | 0 |
| 01222018 | 2018-01-22T13:24:43+00:00 |  | 000120144-01 | Dale | Watson | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122124 | C61 | Malignant neoplasm of prostate | ICD10 | 01232018 | 52000, 88108 | CYTOPATH. CONC TECH, SMEARS & INT | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T16:30:08+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01232018 | 04232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123023 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 01232018 | 99211, 99212, 99213, 99214, 99215, 73552, 82310, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 82150, 83690, 81001 | URINALYSIS, BY DIP STICK OR TABLET REAGENT FOR BILIRUBIN, | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01232018 | 2018-01-23T08:12:17+00:00 |  | 000078569-01 | Dave | Wilson | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01252018 | 04252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123072 | C4721 | Malig neoplasm of prph nerves of right lower limb, inc hip | ICD10 | 01232018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01232018 | 2018-01-23T08:20:30+00:00 |  | 000100237-01 | JOYCE | PARKER | OSU GENERAL INTL MED LLC | 912032 | RITA M | KONFALA | 1518947621 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123081 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 01232018 | 93000, 71020, 94760, 85730, 85610, 83036, 36415, 85025, 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01232018 | 2018-01-23T12:34:24+00:00 |  | 000041901-01 | DONALD | LITTERINI | OSU OTOLARYNGOLOGISTS LL | 935177 | LOWELL ARICK | FORREST | 1912918616 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02032018 | 05032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180123124 | J383 | Other diseases of vocal cords | ICD10 | 01232018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
