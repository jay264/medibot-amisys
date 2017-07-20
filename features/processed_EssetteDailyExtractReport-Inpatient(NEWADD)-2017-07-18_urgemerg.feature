Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-18_URGEMERG
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 06152017 | 2017-06-15T15:07:15+00:00 |  | 000076271-01 | Betty | Jenkins | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615080 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07182017 | 07102017 | 07122017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06162017 | 2017-06-16T13:23:07+00:00 |  | 000070556-01 | Nancy | Styers | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNITY HOSPITAL | 1033263835 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616049 | F0630 | Mood disorder due to known physiological condition, unsp | ICD10 | 07182017 | 06162017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 06212017 | 2017-06-21T16:27:28+00:00 | 025044282-7173 | 000052063-01 | DONALD | GOURLEY | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621079 | T8454XA | Infect/inflm reaction due to internal left knee prosth, init | ICD10 | 07182017 | 07102017 | 07172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 06272017 | 2017-06-27T14:10:45+00:00 |  | 000075543-01 | William | Napier | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627084 | L03116 | Cellulitis of left lower limb | ICD10 | 07182017 | 06212017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 06272017 | 2017-06-27T14:25:10+00:00 |  | 000115425-01 | MICHAEL | RAY | ALLIANCE PHYSICIANS INC | 942185 | PETER A | BOUZ | 1538326392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627089 | M952, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 07182017 | 07132017 | 07152017 | 62141, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06272017 | 2017-06-27T16:52:16+00:00 |  | 000101145-01 | Virginia | Sachs | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627108 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 07182017 | 07062017 | 07132017 | 33400 | AORTIC VALVULOPLASTY, OPEN C BYPASS | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 06302017 | 2017-06-30T15:58:25+00:00 |  | 000114032-01 | Roy | Bradley | OSU INTERNAL MED LLC | 942966 | LANLA F | CONTEH | 1497964399 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07182017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630071 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 07182017 | 07102017 | 07142017 | 37182 | INSERT HEPATIC SHUNT (TIPS) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 1.0 |
| 07032017 | 2017-07-03T10:08:55+00:00 |  | 000004112-01 | KENNETH | BRYSON | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703060 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07182017 | 07112017 | 07172017 | 33533, 33405 | REPLACEMENT AORTIC VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 07032017 | 2017-07-03T07:52:43+00:00 |  | 000074999-01 | Asbell | Bean | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 07182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07012017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703080 | E872, R0902, R4182, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07182017 | 07012017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07032017 | 2017-07-03T17:32:09+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 945440 | DAVID S | FELDMAN | 1386688711 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 07182017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07032017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705014 | R1112 | Projectile vomiting | ICD10 | 07182017 | 07032017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T11:49:45+00:00 |  | 000104147-01 | RAYMOND | SLASOR | L & P SERVICES INC | 922113 | DAVID P | HILL | 1073518114 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07182017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07032017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705055 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 07182017 | 07032017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07052017 | 2017-07-05T13:08:35+00:00 |  | 000074446-01 | Clarice | Hughes | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07182017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07042017 | 07072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705068 | I509 | Heart failure, unspecified | ICD10 | 07182017 | 07042017 | 07072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T14:45:16+00:00 |  | 000084140-01 | Alfred | Perry | GENESIS MEDICAL GRP LLC | 945643 | GRETCHEN L | WEBER | 1083848097 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07172017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705093 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 07182017 | 07112017 | 07172017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 2.0 |
| 07052017 | 2017-07-05T14:45:53+00:00 |  | 000103008-01 | Eugene | Holbrook | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07042017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706025 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 07182017 | 07042017 | 07102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07062017 | 2017-07-06T14:32:41+00:00 |  | 000083739-01 | Betty | Baxter | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07062017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706095 | R062, R079 | Chest pain, unspecified | ICD10 | 07182017 | 07062017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07062017 | 2017-07-06T16:16:17+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU INTERNAL MED LLC | 919255 | IVY S | KUOFIE | 1396892113 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707004 | R110 | Nausea | ICD10 | 07182017 | 07052017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07072017 | 2017-07-07T09:48:21+00:00 | 251202717187 | 000046583-01 | WILLIAM | WESS | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07062017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707018 | J189 | Pneumonia, unspecified organism | ICD10 | 07182017 | 07062017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07102017 | 2017-07-10T09:11:14+00:00 |  | 000107454-01 | HARRY | WILCOXEN | OHIOHEALTH PHYS GRP | 928546 | JONATHAN M | ENLOW | 1811164619 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710008 | R079 | Chest pain, unspecified | ICD10 | 07182017 | 07072017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07092017 | 2017-07-09T10:14:47+00:00 |  | 000012356-01 | BARBARA | BRADBURY | RIVERSIDE SURG ASSOC INC | 910216 | ROBERT | TOSCANO | 1205835063 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710011 | K862 | Cyst of pancreas | ICD10 | 07182017 | 07082017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T11:46:24+00:00 |  | 000077350-01 | Leslie | Mcguire | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710083 | I639 | Cerebral infarction, unspecified | ICD10 | 07182017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07102017 | 2017-07-10T12:32:58+00:00 |  | 000089493-01 | Frank | Jackson | DAYTON SPRINGFIELD CARDI | 906461 | MTANIOUS | MAKHOUL | 1326211020 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710086 | E860, N179, N3001 | Acute cystitis with hematuria | ICD10 | 07182017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T09:04:39+00:00 |  | 000115231-01 | R | WIANT | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710088 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 07182017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T15:53:47+00:00 | 256569517191 | 000063516-01 | JAMES | GREGG | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07102017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710129 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07182017 | 07102017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07112017 | 2017-07-11T10:53:15+00:00 | 255288237191 | 000107046-01 | MAXINE | RODGERS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07102017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711021 | R079 | Chest pain, unspecified | ICD10 | 07182017 | 07102017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07112017 | 2017-07-11T12:01:14+00:00 |  | 000022068-01 | THOMAS | THORNTON | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711038 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 07182017 | 07102017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T11:54:49+00:00 |  | 000039040-01 | HARRY | EVANS | ADENA MEDICAL GROUP LLC | 924263 | AUSTIN G | AL-KAZAZ | 1679803290 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711040 | R531 | Weakness | ICD10 | 07182017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T15:54:01+00:00 | 250248097192 | 000093878-01 | JUDITH | CARRUTHERS | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07112017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711078 | E875, R197 | Diarrhea, unspecified | ICD10 | 07182017 | 07112017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07112017 | 2017-07-11T14:42:55+00:00 |  | 000098026-01 | Gary | Lustgarten | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711088 | A419, E872, R410, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07182017 | 07102017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T14:54:19+00:00 |  | 000083547-01 | David | Brown | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711090 | R001, R0602 | Shortness of breath | ICD10 | 07182017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T14:57:31+00:00 |  | 000115004-01 | Thomas | Stevens | ST MARYS OF MICHIGAN | 951484 |  | ST MARYS OF MICHIGAN | 1871507509 | ST MARYS OF MICHIGAN | 951484 | 1871507509 | ST MARYS OF MICHIGAN | 1871507509 | Inpatient | IP | Concurrent Review | CONC |  | ST MARYS OF MICHIGAN | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712060 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07182017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T15:59:28+00:00 | 251303427193 | 000009717-01 | MARGARET | ASELTINE | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712080 | R1111 | Vomiting without nausea | ICD10 | 07182017 | 07122017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T09:50:20+00:00 | 178827477193 | 000038479-01 | NEIL | GORDON | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713022 | N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 07182017 | 07122017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07132017 | 2017-07-13T15:47:16+00:00 |  | 000072252-01 | KATHLEEN | BAUGHN | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713071 | S7221XD, T814XXD | Infection following a procedure, subsequent encounter | ICD10 | 07182017 | 07132017 | 07172017 | 27030 | ARTHROTOMY HIP | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 07142017 | 2017-07-14T09:37:39+00:00 | 252365717194 | 000042529-01 | PATRICIA | SINES | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714009 | D509 | Iron deficiency anemia, unspecified | ICD10 | 07182017 | 07132017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07142017 | 2017-07-14T11:04:01+00:00 | 250686727194 | 000043216-01 | ARTHUR | LENZO | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 07132017 | 07172017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714027 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07182017 | 07132017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07142017 | 2017-07-14T11:07:36+00:00 | 258392857194 | 000015750-01 | Ruth | Meek | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714028 | D701 | Agranulocytosis secondary to cancer chemotherapy | ICD10 | 07182017 | 07132017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07142017 | 2017-07-14T09:57:03+00:00 |  | 000007037-01 | EMMA | BARNETTE | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714049 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 07182017 | 07142017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T14:08:47+00:00 |  | 000103353-01 | Nancy | Van Hoose | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714058 | R109 | Unspecified abdominal pain | ICD10 | 07182017 | 07132017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T10:51:48+00:00 |  | 000075543-01 | William | Napier | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07132017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717019 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07182017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T11:29:58+00:00 | 264662747196 | 000044173-01 | JOHN | CLAIR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 07152017 | 07182017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717027 | J159 | Unspecified bacterial pneumonia | ICD10 | 07182017 | 07152017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07182017 | 2017-07-18T08:02:24+00:00 |  | 000030604-01 | BENJAMIN | LANGBEIN | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 07172017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718003 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 07182017 | 07172017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T08:29:26+00:00 |  | 000087383-01 | Mina | Stoneking | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07182017 | Approved | MediGold Southeast OH Essential Care | Reports | EIS | Inpatient | 07172017 | 07182017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718007 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07182017 | 07172017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T10:15:47+00:00 |  | 000048383-01 | Fred | Ray Jr | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07182017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170717045 | I890, L03116 | Cellulitis of left lower limb | ICD10 | 07182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07172017 | 2017-07-17T10:45:24+00:00 |  | 000112422-01 | Rosemary | Taylor | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07182017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170717046 | S2239XA, S82899B | Oth fracture of unsp lower leg, init for opn fx type I/2 | ICD10 | 07182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
