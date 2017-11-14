Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-13_URGEMERG
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
| 09262017 | 2017-09-26T12:24:00+00:00 |  | 000064064-01 | LOUISE | GOMPF | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926083 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11132017 | 11062017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10102017 | 2017-10-10T11:20:13+00:00 |  | 000100950-01 | Michael | Hook | OSU SURGERY LLC | 920262 | ALAN E | HARZMAN | 1497964084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016108 | N321 | Vesicointestinal fistula | ICD10 | 11132017 | 10302017 | 11102017 | 45110, 51590 | CYSTECTOMY AND BRICKER | CPT | 1, 1 | 1, 1 | Approved, Approved | 12, 12 | CPT | C4 |  |  |  | 3.0 |
| 10122017 | 2017-10-12T07:03:10+00:00 |  | 000026316-01 | Wilbur | Erlenbach | SOUND PHYSICIANS OF OHI0 | 924167 | JONG H | LEE | 1093961120 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012017 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11132017 | 10112017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10162017 | 2017-10-16T14:30:05+00:00 | 025978557-7255 | 000099507-01 | Michael | Davis | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017046 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 11132017 | 11062017 | 11102017 | 22852, 63047, 22633, 22853, 22842, 22848, 20936, 20930, 22830, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 10182017 | 2017-10-18T11:37:46+00:00 |  | 000064531-01 | PAUL | DICUS | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019036 | T84032A | Mech loosening of internal right knee prosthetic joint, init | ICD10 | 11132017 | 11062017 | 11082017 | 27487, 27488 | RMVL KNEE PROS INC TOTAL KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 10302017 | 2017-10-30T09:06:50+00:00 |  | 000118099-01 | STEVEN | HOCKETT | WILMINGTON PHYS GRP LLC | 946657 | RACHEL C | LOVANO | 1710128855 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 11132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031010 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11132017 | 11022017 | 11122017 | 44160, 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 11, 11 | CPT | C4 |  |  |  | 10.0 |
| 10312017 | 2017-10-31T09:53:09+00:00 |  | 000101709-01 | Nancy | Fry | GENESIS MEDICAL GRP LLC | 909216 | THOMAS H | DIEHL | 1851329528 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031062 | K668 | Other specified disorders of peritoneum | ICD10 | 11132017 | 10302017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10302017 | 2017-10-30T15:11:30+00:00 |  | 000091962-01 | Kenneth | Dyer Jr | DAYTON SURGEONS INC | 923165 | JULIE | GILKESON | 1558544270 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10282017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031026 | I998 | Other disorder of circulatory system | ICD10 | 11132017 | 10282017 | 10292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T11:46:31+00:00 |  | 000056887-01 | HELEN | SCOTT | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031077 | S32592A | Oth fracture of left pubis, init encntr for closed fracture | ICD10 | 11132017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11012017 | 2017-11-01T09:39:12+00:00 |  | 000108900-01 | Donald | Hance | TRIHEALTH H LLC | 929912 | BRYAN P | STRADER | 1275647935 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 11132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101024 | I4891 | Unspecified atrial fibrillation | ICD10 | 11132017 | 10312017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11012017 | 2017-11-01T15:53:10+00:00 |  | 000092361-01 | Mary | Haggard | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101074 | J189, R748, R7989, S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 11132017 | 11012017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11022017 | 2017-11-02T08:37:11+00:00 | 168601957306 | 000086490-01 | Marvin | Curtis | SOUND PHYSICIANS OF OHI0 | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11022017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102013 | K2210, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11132017 | 11022017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11012017 | 2017-11-01T09:55:33+00:00 |  | 000109717-01 | Thelma | Cohagen | GENESIS MEDICAL GRP LLC | 928371 | ROY J | PETERS | 1063701035 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101028 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11132017 | 10312017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11022017 | 2017-11-02T07:02:24+00:00 |  | 000100486-01 | Mary | Barker | OSU INTERNAL MED LLC | 941950 | KERRY A | ROGERS | 1659534246 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102001 | C8330, H4920, H532, I10, J449, M3500, R51, R5381 | Other malaise | ICD10 | 11132017 | 11012017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T09:57:27+00:00 | 250833667305 | 000015705-01 | OTTO | NEIKE | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102023 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 11132017 | 11012017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11032017 | 2017-11-03T09:36:01+00:00 | 250437687307 | 000055880-01 | Delores | Grossman | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11032017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103017 | I214, I509 | Heart failure, unspecified | ICD10 | 11132017 | 11032017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11062017 | 2017-11-06T09:47:56+00:00 |  | 000112431-01 | William J | Monroe Jr | APOGEE MED GRP OHIO INC | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11052017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106122 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 11132017 | 11052017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11022017 | 2017-11-02T11:23:47+00:00 |  | 000106376-01 | Irene | Rees | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102041 | R4182 | Altered mental status, unspecified | ICD10 | 11132017 | 11012017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T09:53:25+00:00 | 175745497306 | 000098026-01 | Gary | Lustgarten | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 11022017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103026 | G9340 | Encephalopathy, unspecified | ICD10 | 11132017 | 11022017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11062017 | 2017-11-06T10:02:04+00:00 | 251065667309 | 000043954-01 | SANDRA | SCHOLL | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11052017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106024 | E2749 | Other adrenocortical insufficiency | ICD10 | 11132017 | 11052017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11062017 | 2017-11-06T10:06:40+00:00 |  | 000077003-01 | Diane | Saxton | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107011 | A419, E039, E785 | Hyperlipidemia, unspecified | ICD10 | 11132017 | 11042017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11012017 | 2017-11-01T09:43:43+00:00 |  | 000073934-01 | Bernice | Mccoy | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11132017 | 11102017 | 11112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T05:55:00+00:00 |  | 000114032-01 | Roy | Bradley | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11132017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103027 | D62, K921 | Melena | ICD10 | 11132017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11072017 | 2017-11-07T10:00:01+00:00 | 257816797310 | 000024141-01 | GEORGE | GANTZ JR | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107033 | J189 | Pneumonia, unspecified organism | ICD10 | 11132017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T14:30:49+00:00 |  | 000052306-01 | JOHN | WESTLAKE | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103037 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11132017 | 11062017 | 11102017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 11062017 | 2017-11-06T09:49:06+00:00 |  | 000109999-01 | Ocey | Olney | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106028 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11132017 | 11042017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11082017 | 2017-11-08T15:51:25+00:00 |  | 000101627-01 | Larry | Frick | SOUND INPATIENT PHYS OF | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109017 | D72829, E876, J441, R05 | Cough | ICD10 | 11132017 | 11072017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11082017 | 2017-11-08T08:40:15+00:00 |  | 000109597-01 | Dorothy | Monroe | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108016 | N19, R001 | Bradycardia, unspecified | ICD10 | 11132017 | 11062017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11082017 | 2017-11-08T09:48:54+00:00 | 251456867311 | 000013073-01 | DONALD | COPLEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11072017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108025 | J159 | Unspecified bacterial pneumonia | ICD10 | 11132017 | 11072017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:49:36+00:00 |  | 000110257-01 | Bessie | Holpp | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11032017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106030 | I509 | Heart failure, unspecified | ICD10 | 11132017 | 11032017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T16:15:09+00:00 |  | 000088104-01 | Robert | Newton | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107040 | J189, R4182 | Altered mental status, unspecified | ICD10 | 11132017 | 11032017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11092017 | 2017-11-09T08:14:27+00:00 |  | 000089003-01 | Gerald | Ruppel | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109024 | L03116 | Cellulitis of left lower limb | ICD10 | 11132017 | 11082017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T10:16:56+00:00 | 258916837308 | 000029997-01 | LARRY | MATTES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106032 | N179, N200 | Calculus of kidney | ICD10 | 11132017 | 11042017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11062017 | 2017-11-06T13:27:31+00:00 |  | 000094388-01 | Michael | Spencer | SCHUSTER CARDIOLOGY ASSO | 907817 | MILTON F | NATHAN | 1114909744 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11052017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107049 | I213, R079 | Chest pain, unspecified | ICD10 | 11132017 | 11052017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11092017 | 2017-11-09T09:36:46+00:00 | 263457087314 | 000106202-01 | Gary | Gifford | SOUND PHYSICIANS OF OHI0 | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109025 | J9601, T783XXA | Angioneurotic edema, initial encounter | ICD10 | 11132017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11062017 | 2017-11-06T16:43:23+00:00 |  | 000105094-01 | JOHN | EMERY JR | S DAYTON ACUTE CARE CNSL | 922839 | KARLO A | RUFO | 1194956581 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107050 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 11132017 | 11032017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11082017 | 2017-11-08T10:22:45+00:00 | 251244487311 | 000016831-01 | DENNIS | WILKINSON | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11072017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108033 | J159, K863 | Pseudocyst of pancreas | ICD10 | 11132017 | 11072017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T08:20:27+00:00 |  | 000085888-01 | Johnnie | Lawson | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11042017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106087 | A419, E860, J189 | Pneumonia, unspecified organism | ICD10 | 11132017 | 11042017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11062017 | 2017-11-06T13:38:32+00:00 |  | 000097198-01 | Jesse | Snader | COMPREHENSIVE INTL MED A | 927576 | MANISH | SACHDEVA | 1649223074 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11032017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107054 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 11132017 | 11032017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11092017 | 2017-11-09T09:40:32+00:00 | 251116927312 | 000048038-01 | BOYD | SHANNON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11082017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109028 | D649, D696 | Thrombocytopenia, unspecified | ICD10 | 11132017 | 11082017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11082017 | 2017-11-08T17:22:25+00:00 |  | 000091041-01 | Pauline | Allen | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109048 | I639 | Cerebral infarction, unspecified | ICD10 | 11132017 | 11082017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T09:24:07+00:00 |  | 000042290-01 | BARBARA | GARGARO | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 12042017 | 01042018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171113019 | R109 | Unspecified abdominal pain | ICD10 | 11132017 |  |  | 50548 | LAPARO REMOVE K/URETER | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 11102017 | 2017-11-10T09:54:03+00:00 | 250326387313 | 000030779-01 | SHIRLEY | ESTEP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110033 | D649 | Anemia, unspecified | ICD10 | 11132017 | 11092017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T10:37:31+00:00 |  | 000108424-01 | Kenneth | Brooks | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113023 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 11132017 | 11092017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11102017 | 2017-11-10T10:38:17+00:00 | 252291307314 | 000054058-01 | WILLIAM | SHAFFER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110040 | D649 | Anemia, unspecified | ICD10 | 11132017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
