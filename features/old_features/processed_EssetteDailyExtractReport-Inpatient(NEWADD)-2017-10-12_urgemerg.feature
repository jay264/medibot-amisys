Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_URGEMERG
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
| 10112017 | 2017-10-11T09:14:27+00:00 |  | 000089015-01 | Larry | Liggins | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011048 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 10122017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T11:00:10+00:00 | 256397247282 | 000022522-01 | CHARLENE | CHRISTY | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010036 | N390 | Urinary tract infection, site not specified | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T09:59:12+00:00 | 254414617274 | 000065848-01 | CURTIS | MANN JR | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10012017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002025 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 10122017 | 10012017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10092017 | 2017-10-09T10:09:12+00:00 |  | 000077625-01 | Rex | Gray | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009080 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 10122017 | 10062017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09152017 | 2017-09-15T16:07:39+00:00 |  | 000071667-01 | Mary | Wood | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918093 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10122017 | 10102017 | 10112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T17:43:57+00:00 |  | 000087792-01 | Candace | Raisor | MIAMI VALLEY HSPISTS GRP | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09302017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003002 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10122017 | 09302017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10032017 | 2017-10-03T09:16:00+00:00 |  | 000112241-01 | Kathy | Jackson | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10022017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003034 | I639, R739 | Hyperglycemia, unspecified | ICD10 | 10122017 | 10022017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T09:22:26+00:00 |  | 000092852-01 | David | Rife | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10012017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003040 | A419, R0902, R509 | Fever, unspecified | ICD10 | 10122017 | 10012017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09252017 | 2017-09-25T08:08:16+00:00 |  | 000089512-01 | Bruce | Lee | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09242017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925021 | I472 | Ventricular tachycardia | ICD10 | 10122017 | 09242017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09252017 | 2017-09-25T12:33:56+00:00 |  | 000079565-01 | Marvin | Ropp | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 10122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09222017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925089 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 10122017 | 09222017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09262017 | 2017-09-26T14:20:56+00:00 |  | 000079349-01 | Barry | Paxton | MUHAMMAD ASHRAF | 911561 | MUHAMMAD | ASHRAF | 1770511917 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926069 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10122017 | 09252017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T11:53:49+00:00 |  | 000110797-01 | Jo | Ross | ALLIANCE PHYSICIANS INC | 908147 | ZIWAR F | KARABATAK | 1831172329 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10042017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005039 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 10122017 | 10042017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10092017 | 2017-10-09T08:49:21+00:00 |  | 000100035-01 | Mary | Tingley | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009065 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 10122017 | 10062017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09252017 | 2017-09-25T09:25:31+00:00 | 250264447267 | 000109615-01 | Karyn | Davis | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09242017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925023 | N179 | Acute kidney failure, unspecified | ICD10 | 10122017 | 09242017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 10092017 | 2017-10-09T16:50:29+00:00 |  | 000080003-01 | Winifred | Tatten | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010083 | I5033, J9601, J9602, N289, R0602 | Shortness of breath | ICD10 | 10122017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T13:13:42+00:00 |  | 000049692-01 | EVAN | FANNIN | SOUND PHYSICIANS OF OHI0 | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010021 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 10082017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T13:00:14+00:00 |  | 000089043-01 | Charles | Wheatley | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010090 | I214, I509 | Heart failure, unspecified | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T08:12:19+00:00 |  | 000101578-01 | JANET | GRIM | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10042017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006021 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 10122017 | 10042017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10042017 | 2017-10-04T09:57:01+00:00 |  | 000057721-01 | RONALD | BRUNGS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10032017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004038 | E876, K529, N390 | Urinary tract infection, site not specified | ICD10 | 10122017 | 10032017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10102017 | 2017-10-10T16:18:04+00:00 |  | 000014179-01 | ETHEL | PARKE | WRIGHT STATE PHYSICIANS | 944902 | ALYSSA J | GANS | 1962638080 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011042 | J8403, S022XXA, S0292XA | Unsp fracture of facial bones, init for clos fx | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:33:28+00:00 |  | 000108700-01 | George | Christy | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009073 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 10062017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10032017 | 2017-10-03T17:13:05+00:00 |  | 000092771-01 | Antonia | Smith | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004006 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10122017 | 10092017 | 10122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10092017 | 2017-10-09T16:15:03+00:00 |  | 000114737-01 | David | Pappenfus | PAUL E O BRIAN MD INC | 904345 | PAUL E | O BRIEN | 1912964933 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10072017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010049 | K352 | Acute appendicitis with generalized peritonitis | ICD10 | 10122017 | 10072017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T15:43:58+00:00 |  | 000114751-01 | Patsy | Strausburg | SOUND PHYSICIANS OF OHI0 | 927926 | LESTER N | CASTANEROS | 1952694622 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011038 | R197, R5383, R6251 | Failure to thrive (child) | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T08:29:11+00:00 |  | 000046280-01 | ADA | ELZEY | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006026 | I639 | Cerebral infarction, unspecified | ICD10 | 10122017 | 10052017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10062017 | 2017-10-06T09:40:32+00:00 | 251228407278 | 000038118-01 | VIRGINIA | WEIDER | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10122017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006015 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10102017 | 2017-10-10T08:46:05+00:00 |  | 000110759-01 | FRANCIS | BURKHART | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010066 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T10:50:56+00:00 | 263257497283 | 000020010-01 | NORMA | YOUNG | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010033 | D649 | Anemia, unspecified | ICD10 | 10122017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:19:59+00:00 | 26709297279 | 000110442-01 | Donald | Cox | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10062017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009016 | I998 | Other disorder of circulatory system | ICD10 | 10122017 | 10062017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08112017 | 2017-08-11T10:27:55+00:00 | 017076230-7256 | 000112014-01 | Robert | Stair II | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811026 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10122017 | 10112017 | 10122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10092017 | 2017-10-09T10:59:37+00:00 |  | 000027040-01 | MONA | LEMON | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009092 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10122017 | 10082017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T15:17:03+00:00 |  | 000094431-01 | Claude | Rodgers Jr | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011031 | E041 | Nontoxic single thyroid nodule | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:58:16+00:00 | 17983647281 | 000044103-01 | Carol | Tarbill | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009039 | T1490 | Injury, unspecified | ICD10 | 10122017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09142017 | 2017-09-14T10:57:02+00:00 |  | 000109460-01 | PHILIP | WILLIAMS | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 10102017 | 10122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915057 | M4726, M4806, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 10122017 | 10102017 | 10122017 | 22533, 22853, 22534, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 2, 1, 1, 1 | 1, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:51:37+00:00 | 255270677280 | 000031976-01 | PETER | SIMCIC | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 10072017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009035 | I4891, I509 | Heart failure, unspecified | ICD10 | 10122017 | 10072017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10112017 | 2017-10-11T14:35:45+00:00 |  | 000103381-01 | CONNIE | DELANCEY | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10082017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011060 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10122017 | 10082017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T08:39:28+00:00 |  | 000078838-01 | Melvin | Lane | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010059 | I639 | Cerebral infarction, unspecified | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T14:08:50+00:00 |  | 000007282-01 | SUE | PAIGE | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009077 | R1310 | Dysphagia, unspecified | ICD10 | 10122017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T11:44:12+00:00 |  | 000062668-01 | GAIL | LANDEFELD | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10122017 | Denied | THE TIMKEN COMPANY | Fax | Criteria Not Met | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171011052 | G9340, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10122017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10102017 | 2017-10-10T08:45:43+00:00 |  | 000095564-01 | Gary | Waggle | HOSPITAL MEDICINE SERVIC | 949655 | WONDWOSSEN Y | DERERIE | 1760793897 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010065 | I5031, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 10122017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:45:13+00:00 | 252036037281 | 000077350-01 | Leslie | Mcguire | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 10082017 | 10122017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009031 | R0600 | Dyspnea, unspecified | ICD10 | 10122017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10062017 | 2017-10-06T13:50:07+00:00 |  | 000065562-01 | KATHERINE | MILES | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09302017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006056 | J189 | Pneumonia, unspecified organism | ICD10 | 10122017 | 09302017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T09:19:52+00:00 |  | 000049870-01 | Betty | Claffey | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10052017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006023 | L03115 | Cellulitis of right lower limb | ICD10 | 10122017 | 10052017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10062017 | 2017-10-06T09:36:44+00:00 | 251057337278 | 000011927-01 | BARBARA | STREET | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10052017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006014 | L03818 | Cellulitis of other sites | ICD10 | 10122017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08182017 | 2017-08-18T11:05:02+00:00 |  | 000115043-01 | Michael | Arehart | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 10122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08252017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818034 | J9602, N178 | Other acute kidney failure | ICD10 | 10122017 | 08252017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10052017 | 2017-10-05T16:14:29+00:00 | 026127581-7279 | 000070684-01 | Catherine | Young | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006003 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 10122017 | 10112017 | 10122017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10092017 | 2017-10-09T10:01:07+00:00 | 254416547281 | 000093834-01 | Myong | Young | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009040 | N390, R7881 | Bacteremia | ICD10 | 10122017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T15:40:46+00:00 |  | 000034973-01 | LEWIS | LARRICK | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004073 | R55 | Syncope and collapse | ICD10 | 10122017 | 10022017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10062017 | 2017-10-06T08:40:35+00:00 |  | 000107274-01 | Evelyn | Stevens | RIVERSIDE TRAUMA SURGEON | 907601 | JOHN | LEFF | 1396744140 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10052017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006037 | K559 | Vascular disorder of intestine, unspecified | ICD10 | 10122017 | 10052017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
