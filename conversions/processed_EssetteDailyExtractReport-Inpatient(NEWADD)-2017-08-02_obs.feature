Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-02_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image

	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

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
| 07252017 | 2017-07-25T12:36:09+00:00 |  | 000078824-01 | Franklin | Alford | SOUND KENWOOD HSPISTS OF | 926206 | CHANTAL G | WALSH | 1740274760 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08022017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725105 | R0902 | Hypoxemia | ICD10 | 08022017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T14:08:21+00:00 |  | 000097214-01 | Kenneth | White | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731075 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08022017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T12:50:32+00:00 |  | 000083423-01 | Ruth | Wiegand | SOUND PHYSICIANS OF OHI | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801050 | K52839 | MICROSCOPIC COLITIS, UNSPECIFIED | ICD10 | 08022017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08012017 | 2017-08-01T08:48:19+00:00 |  | 000022489-01 | CHARLES | BRAHLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08022017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801012 | M25579 | Pain in unspecified ankle and joints of unspecified foot | ICD10 | 08022017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08012017 | 2017-08-01T14:29:59+00:00 |  | 000067125-01 | LAVILDA | ISAACS | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801098 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 08022017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T15:40:13+00:00 | 017904408-7212 | 000085446-01 | Naomi | Sandidge | OHIOHEALTH PHYS GRP | 911198 | GREGORY K | LAM | 1255319760 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08022017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802085 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08022017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T10:23:35+00:00 |  | 000112562-01 | Donnie | Ankrum | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801024 | I200 | Unstable angina | ICD10 | 08022017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T11:55:26+00:00 | 252562427212 | 000041142-01 | BEVERLY | YOUNKIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731049 | R112 | Nausea with vomiting, unspecified | ICD10 | 08022017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T11:20:01+00:00 | 174801597210 | 000048370-01 | JENNIFER | HOWELL | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731037 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08022017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T09:27:01+00:00 | 251505287211 | 000021716-01 | LAWRENCE | CLARK | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07302017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731015 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08022017 | 07302017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T09:38:27+00:00 | 251529067209 | 000002598-01 | EVA | CRAVEY | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731018 | N390 | Urinary tract infection, site not specified | ICD10 | 08022017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:01:07+00:00 | 175819797210 | 000018298-01 | JAMES | BERRY JR | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731007 | N179 | Acute kidney failure, unspecified | ICD10 | 08022017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08022017 | 2017-08-02T10:53:23+00:00 |  | 000002722-01 | JOHN | JEPSEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802039 | R110 | Nausea | ICD10 | 08022017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T09:54:34+00:00 | 164491057212 | 000103014-01 | Jacalyn | Beach | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801035 | R7881 | Bacteremia | ICD10 | 08022017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T16:19:45+00:00 |  | 000096206-01 | Fred | Elliott | COSHOCTON COUNTY MEM HSP | 922029 | JEFFREY A | HAMILTON | 1972719318 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 08022017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07292017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801075 | E7220, R4182 | Altered mental status, unspecified | ICD10 | 08022017 | 07292017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T11:40:28+00:00 |  | 000069010-01 | BARBARA | SHAW | ARBOR VIEW FAM MED INC | 948280 | STEPHANIE | MESKO | 1780926881 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801063 | R079 | Chest pain, unspecified | ICD10 | 08022017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07302017 | 2017-07-30T16:47:39+00:00 |  | 000071527-01 | Mary Lou | Thomas | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08022017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07292017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731011 | I491 | Atrial premature depolarization | ICD10 | 08022017 | 07292017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T12:07:11+00:00 |  | 000079716-01 | Nancy | Burkhardt | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08022017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802093 | R6889 | Other general symptoms and signs | ICD10 | 08022017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
