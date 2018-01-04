Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-03_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-03_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
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
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 12202017 | 2017-12-20T09:29:27+00:00 |  | 000060356-01 | JOSEPH | GUILER | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01022018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220032 | M25551, R296 | Repeated falls | ICD10 | 01022018 | 12192017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12132017 | 2017-12-13T09:33:53+00:00 |  | 000081229-01 | JOHN | MILLER | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12142017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213061 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 01022018 | 12142017 | 01022018 | 49203 | EXC ABD TUM 5 CM OR LESS,29.93,29.93 | CPT | 1 | 1 | Approved | 20 | CPT | C4 |  |  |  | 19.0 |
| 12262017 | 2017-12-26T09:46:40+00:00 | 252474117358 | 000098094-01 | Arlene | Weaver | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01022018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12242017 | 01022018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226042 | R0602 | Shortness of breath | ICD10 | 01022018 | 12242017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12312017 | 2017-12-31T09:24:47+00:00 | 025187018-7364 | 000023356-01 | ELVA | JACONETTE | COPC CENTRAL OHIO PRIMAR | 906976 | KRISTOPHER M | HANSON | 1174675268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01022018 | Approved | MediGold Classic Preferred | EMR | ACO - Pulmonary | Inpatient | 12302017 | 01022018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171231005 | I495 | Sick sinus syndrome | ICD10 | 01022018 | 12302017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12312017 | 2017-12-31T09:33:23+00:00 | 026669622-7363 | 000074714-01 | Norma | Ramsey | HOSPITALIST MEDICINE PHY | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01022018 | Approved | MediGold Southeast OH Classic Preferred | EMR | Inpatient | Inpatient | 12292017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171231007 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 01022018 | 12292017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01012018 | 2018-01-01T13:27:34+00:00 |  | 000022832-01 | LOLA | HAYES | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12292017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180101010 | R4182 | Altered mental status, unspecified | ICD10 | 01032018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T07:57:23+00:00 |  | 000089705-01 | Jack | Reynard Jr | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12232017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226027 | I214, I509 | Heart failure, unspecified | ICD10 | 01032018 | 12232017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12272017 | 2017-12-27T08:55:16+00:00 | 265158327360 | 000042609-01 | KAY | ADKINS | IMTIAZ KAZI FAMILY PRCT | 935421 | IMTIAZ U | KAZI | 1851331706 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12262017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227015 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01032018 | 12262017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11292017 | 2017-11-29T10:00:44+00:00 |  | 000110178-01 | Beatrice | Reid | UNIVERSITY OF CINCINNATI | 927304 | MATTHEW L | FLAHERTY | 1417998584 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 01032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129096 | I63511 | Cereb infrc d/t unsp occls or stenos of right mid cereb art | ICD10 | 01032018 | 11282017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 35.0 |
| 12262017 | 2017-12-26T10:59:13+00:00 |  | 000096518-01 | Dannette | Rosner | ONCOLOGY HEMATOLOGY CARE | 916044 | PRASAD R | KUDALKAR | 1013094382 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 926482 | 1912992215 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 1912992215 | Inpatient | IP | Concurrent Review | CONC |  | NORTHERN WESTCHESTER HOSPITAL ASSOC | 01032018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12252017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226119 | K839, K921, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01032018 | 12252017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12212017 | 2017-12-21T12:53:14+00:00 |  | 000010013-01 | RONALD | WEISENBERGER | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12202017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221051 | I442, R55 | Syncope and collapse | ICD10 | 01032018 | 12202017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12132017 | 2017-12-13T07:52:11+00:00 |  | 000051842-01 | GARRY | BIRD | OSU INTERNAL MED LLC | 947014 | GREGORY K | BEHBEHANI | 1053679217 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01032018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 12122017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213027 | C9590 | Leukemia, unspecified not having achieved remission | ICD10 | 01032018 | 12122017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01022018 | 2018-01-02T08:32:49+00:00 |  | 000064776-01 | HARRY | SLYGH | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102056 | I714, K5900, R112, K56609 | K56609 | ICD10 | 01032018 | 12292017 | 01012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T16:18:26+00:00 |  | 000001055-01 | MARY | JONES | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121036 | M48062 | M48062 | ICD10 | 01032018 | 12282017 | 01022018 | 63047, 63048, 22633, 22853, 22840, 20936, 20930, 22830, 22852, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 12182017 | 2017-12-18T09:01:20+00:00 |  | 000096147-01 | Frederick | Goerler | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12172017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218117 | A419 | Sepsis, unspecified organism | ICD10 | 01032018 | 12172017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T10:57:27+00:00 | 250665417360 | 000040667-01 | DANIEL | LAYCOCK | HOSPITALIST MEDICINE PHY | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12262017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226074 | I509, I959 | Hypotension, unspecified | ICD10 | 01032018 | 12262017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01032018 | 2018-01-03T08:56:28+00:00 |  | 000068057-01 | MARGARET | MOORE | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12292017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103019 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 01032018 | 12292017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12212017 | 2017-12-21T09:19:07+00:00 | 251244487354 | 000016831-01 | DENNIS | WILKINSON | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12202017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01032018 | 12202017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01032018 | 2018-01-03T09:15:00+00:00 |  | 000095533-01 | Gwendolyn | Carroll | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA HEALTH SYSTEMS | 916765 | 0 | ADENA HEALTH SYSTEMS | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADENA HEALTH SYSTEMS | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103020 | J9601, R6521 | Severe sepsis with septic shock | ICD10 | 01032018 | 12292017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T12:00:01+00:00 |  | 000118070-01 | YVONNE | ROBERTS | FAIRFIELD HLTHCARE PROFS | 918203 | AVNEET S | HIRA | 1750570669 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12312017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103005 | F3130 | Bipolar disord, crnt epsd depress, mild or mod severt, unsp | ICD10 | 01032018 | 12312017 | 01012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T10:10:27+00:00 |  | 000107304-01 | Johnny | Weiss | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12222017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226061 | L03115 | Cellulitis of right lower limb | ICD10 | 01032018 | 12222017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12012017 | 2017-12-01T09:21:18+00:00 |  | 000111131-01 | Evelyn | Varrasso | LICKING MEM HLTH PROF | 936036 | ROBERT W | MUELLER | 1316916752 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201030 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 01032018 | 12272017 | 12292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12262017 | 2017-12-26T10:12:03+00:00 |  | 000072664-01 | Mary | Hill | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12212017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226069 | R531, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 01032018 | 12212017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12182017 | 2017-12-18T15:55:28+00:00 |  | 000030677-01 | LOIS | MELVIN | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12152017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219051 | D65, N179 | Acute kidney failure, unspecified | ICD10 | 01032018 | 12152017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11272017 | 2017-11-27T13:53:31+00:00 |  | 000113390-01 | Linda | Sockman | WILMINGTON PHYS GRP LLC | 952220 | PETER A | SNITOVSKY | 1710951520 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12282017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128052 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01032018 | 12282017 | 12312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 12272017 | 2017-12-27T14:32:29+00:00 |  | 000072253-01 | Sandra | Clark | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227089 | A419, J189, R0902 | Hypoxemia | ICD10 | 01032018 | 12262017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12292017 | 2017-12-29T11:30:40+00:00 |  | 000079919-01 | William | Day | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 01032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229055 | E162, R0602 | Shortness of breath | ICD10 | 01032018 | 12282017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01022018 | 2018-01-02T12:43:43+00:00 |  | 000106522-01 | Carol | Gibson | BAYONET POINT RMC | 939437 |  | BAYONET POINT RMC | 0 | BAYONET POINT RMC | 939437 | 0 | BAYONET POINT RMC | 0 | Inpatient | IP | Concurrent Review | CONC |  | BAYONET POINT RMC | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103041 | J189 | Pneumonia, unspecified organism | ICD10 | 01032018 | 12302017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T08:50:51+00:00 | 251874697358 | 000011532-01 | DOLLY | JONES | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12242017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226020 | M25559 | Pain in unspecified hip | ICD10 | 01032018 | 12242017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 12312017 | 2017-12-31T09:45:49+00:00 | 025698936-7364 | 000019403-01 | MARY | STEFANIDIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 12312017 | 01032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171231010 | K810 | Acute cholecystitis | ICD10 | 01032018 | 12312017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12132017 | 2017-12-13T16:26:34+00:00 |  | 000046927-01 | Sue | Lanum | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213110 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 01032018 | 12272017 | 12302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10262017 | 2017-10-26T17:18:40+00:00 |  | 000102696-01 | Linda | Carpenter | CLEVELAND CLINIC FNDN | 914982 | DOUGLAS R | JOHNSTON | 1790957991 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 01032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11052017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027033 | I715 | Thoracoabdominal aortic aneurysm, ruptured | ICD10 | 01032018 | 11052017 | 01022018 | 33870 | ANEURYSM TRNSVRS ARCH & BRNCH/BYPSS | CPT | 1 | 1 | Approved | 59 | CPT | C4 |  |  |  | 6.0 |
| 12262017 | 2017-12-26T10:29:22+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01032018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 12242017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226072 | D61818 | Other pancytopenia | ICD10 | 01032018 | 12242017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T11:25:50+00:00 |  | 000107061-01 | Sharon | Arledge | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103004 | I4891 | Unspecified atrial fibrillation | ICD10 | 01032018 | 12312017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12222017 | 2017-12-22T15:30:46+00:00 | 264314677356 | 000092922-01 | Paul | Hoag | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12222017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222071 | I309 | Acute pericarditis, unspecified | ICD10 | 01032018 | 12222017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01022018 | 2018-01-02T10:00:48+00:00 | 267970187364 | 000067192-01 | MARY | LEGG | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102017 | J189 | Pneumonia, unspecified organism | ICD10 | 01032018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T15:21:03+00:00 | 025373347-7363 | 000004421-01 | PATRICIA | NARIKE | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12292017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103112 | I509 | Heart failure, unspecified | ICD10 | 01032018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12222017 | 2017-12-22T16:09:59+00:00 |  | 000097953-01 | Joyce | Campbell | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222079 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01032018 | 12302017 | 01022018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 4 | CPT | C4 |  |  |  | 3.0 |
| 01012018 | 2018-01-01T12:27:57+00:00 |  | 000020381-01 | MABEL | HUPP | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12302017 | 01032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180101004 | S82899A | Oth fracture of unsp lower leg, init for clos fx | ICD10 | 01032018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T15:40:54+00:00 | 026277735-7363 | 000105689-01 | RONALD | CONLEY | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12292017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103116 | I4891 | Unspecified atrial fibrillation | ICD10 | 01032018 | 12292017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12272017 | 2017-12-27T09:28:22+00:00 |  | 000066313-01 | DOLORES | THOMPSON | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227045 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 01032018 | 01022018 | 01032018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01012018 | 2018-01-01T12:55:18+00:00 |  | 000030709-01 | CURTIS | SCARBERRY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180101007 | R109 | Unspecified abdominal pain | ICD10 | 01032018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T09:37:50+00:00 |  | 000115534-01 | PHYLLIS | FRANK | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01022018 | 01032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130048 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01032018 | 01022018 | 01032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12152017 | 2017-12-15T16:33:50+00:00 |  | 000100718-01 | Virginia | Mayne | MERCY HEALTH PHYSICIANS | 921063 | BRIAN | ROTTINGHAUS | 1912238890 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01032018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218002 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01032018 | 12272017 | 12292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 12122017 | 2017-12-12T15:44:29+00:00 |  | 000120360-01 | Jon | Atkinson | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01032018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01022018 | 01032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213016 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01032018 | 01022018 | 01032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
