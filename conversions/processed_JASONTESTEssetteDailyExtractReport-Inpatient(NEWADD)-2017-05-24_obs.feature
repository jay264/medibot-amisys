Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-24_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-24_OBS
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image

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
| 03202017 | 2017-03-20T13:17:33+00:00 |  | 000100931-01 | Janet | Casada | SOUND KENWOOD HSPISTS OF | 930025 | ALEX | ALBUQUERQUE | 1356651780 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03182017 | 03202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170328092307.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170322072 | E875, N178, R001 | Bradycardia, unspecified | ICD10 | 05242017 | 03182017 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092017 | 2017-05-09T14:16:25+00:00 |  | 000116839-01 | Jerome | Thibaut | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 05082017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510056 | D7289, J189 | Pneumonia, unspecified organism | ICD10 | 05242017 | 05082017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05122017 | 2017-05-12T16:11:36+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170513011 | R6889 | Other general symptoms and signs | ICD10 | 05242017 | 05092017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T10:34:43+00:00 |  | 000055940-01 | EVELYN | SCHILLING | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515024 | R6889 | Other general symptoms and signs | ICD10 | 05242017 | 05112017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T10:21:25+00:00 |  | 000078667-01 | Julie | Wentsler | ADENA MEDICAL GROUP LLC | 902397 | KINGSLEY A | LARTEY | 1376510289 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05132017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515044 | L03211 | Cellulitis of face | ICD10 | 05242017 | 05132017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05162017 | 2017-05-16T11:29:11+00:00 |  | 000068489-01 | LINDA | NUNN | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516065 | R0600 | Dyspnea, unspecified | ICD10 | 05242017 | 05152017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05162017 | 2017-05-16T11:29:25+00:00 |  | 000091103-01 | Marilyn | Strouse | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05122017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516067 | I10, I639, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05242017 | 05122017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05162017 | 2017-05-16T11:45:50+00:00 |  | 000107860-01 | George | Seaborough | MERCY HEALTH PHYSICIANS | 949001 | SHAWN J | YANG | 1245558709 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05222017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516079 | M24412 | Recurrent dislocation, left shoulder | ICD10 | 05242017 | 05222017 | 05232017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 05172017 | 2017-05-17T15:34:24+00:00 |  | 000031207-01 | BETTY | JUDE | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05162017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517080 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05242017 | 05162017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05182017 | 2017-05-18T13:55:42+00:00 |  | 000088561-01 | Dorothy | Pettit | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518049 | K625, R55 | Syncope and collapse | ICD10 | 05242017 | 05182017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T17:01:39+00:00 |  | 000089678-01 | Dixie | Rockwell | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05142017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519003 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05242017 | 05142017 | 05182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T09:52:18+00:00 |  | 000086754-01 | Robert | Smith | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519013 | M6281 | Muscle weakness (generalized) | ICD10 | 05242017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05192017 | 2017-05-19T09:39:49+00:00 |  | 000082207-01 | Melva | Switzer | HOSPITAL MEDICINE SERVIC | 945376 | LAKISHA D | JONES | 1932351434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519017 | R4182 | Altered mental status, unspecified | ICD10 | 05242017 | 05182017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T09:31:05+00:00 |  | 000052260-01 | EDWARD | BOHN | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519021 | I4891 | Unspecified atrial fibrillation | ICD10 | 05242017 | 05172017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T09:37:11+00:00 |  | 000038464-01 | JEAN | COMBS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05212017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522025 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05242017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T09:41:25+00:00 |  | 000091304-01 | James | Taylor Jr | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522035 | I509 | Heart failure, unspecified | ICD10 | 05242017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05212017 | 2017-05-21T11:22:13+00:00 |  | 000081601-01 | Kristi | Marshall | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | Flexible Choice PPO | EMR | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522059 | M549 | Dorsalgia, unspecified | ICD10 | 05242017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T12:23:32+00:00 |  | 000111713-01 | Dora | Smailes | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522078 | I5031 | Acute diastolic (congestive) heart failure | ICD10 | 05242017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T13:46:26+00:00 |  | 000100999-01 | Kenneth | Kaffenbarger | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05212017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522098 | H539 | Unspecified visual disturbance | ICD10 | 05242017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T14:07:20+00:00 | 025240883-7139 | 000002091-01 | ROBERT | SHORTLAND | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05192017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522103 | N179 | Acute kidney failure, unspecified | ICD10 | 05242017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05222017 | 2017-05-22T14:57:11+00:00 |  | 000108848-01 | Walter | Johnson | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522114 | D181, R410 | Disorientation, unspecified | ICD10 | 05242017 | 05192017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T18:16:46+00:00 |  | 000106688-01 | Sylvia | Miller | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05192017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523013 | R4701 | Aphasia | ICD10 | 05242017 | 05192017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T09:11:54+00:00 |  | 000070764-01 | Donna | Vest Barker | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523021 | R079 | Chest pain, unspecified | ICD10 | 05242017 | 05222017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T10:08:39+00:00 | 025559359-7142 | 000018649-01 | FLORADELL | STUTTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523034 | R319 | Hematuria, unspecified | ICD10 | 05242017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T09:46:43+00:00 |  | 000115753-01 | Odette | Snyder | HOSPITAL MEDICINE SERVIC | 945376 | LAKISHA D | JONES | 1932351434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523039 | R079 | Chest pain, unspecified | ICD10 | 05242017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T11:42:43+00:00 |  | 000042786-01 | SALLY | CARTWRIGHT | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05232017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523049 | E1165 | Type 2 diabetes mellitus with hyperglycemia | ICD10 | 05242017 | 05232017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T12:14:39+00:00 |  | 000108581-01 | Christine | Smith | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523056 | I4892 | Unspecified atrial flutter | ICD10 | 05242017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T13:18:44+00:00 |  | 000064929-01 | VIOLET | MOONEY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523064 | D61811 | Other drug-induced pancytopenia | ICD10 | 05242017 | 05222017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T13:46:37+00:00 |  | 000044296-01 | MARY | YAHNKE | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523071 | M940 | Chondrocostal junction syndrome [Tietze] | ICD10 | 05242017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T15:54:28+00:00 |  | 000107570-01 | Linda | Cline | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05202017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523083 | R079 | Chest pain, unspecified | ICD10 | 05242017 | 05202017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T15:56:14+00:00 |  | 000095636-01 | Wilma | Ward | APOGEE MED GRP OHIO INC | 941919 | VEERABHADRA V | RAMESH METTA | 1376822395 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05192017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523086 | R109, R112 | Nausea with vomiting, unspecified | ICD10 | 05242017 | 05192017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T06:53:33+00:00 |  | 000112352-01 | Dominic | Panzera | SOUTHEASTERN OHIO PHYS | 921960 | MICHAEL | SARAP | 1275615296 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 05182017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524009 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05242017 | 05182017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T12:10:32+00:00 |  | 000081150-01 | Marlynn | Weaver | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05232017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524033 | D649, R42 | Dizziness and giddiness | ICD10 | 05242017 | 05232017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05242017 | 2017-05-24T13:59:29+00:00 |  | 000096377-01 | Mary | Debevoise | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05212017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524052 | R6889 | Other general symptoms and signs | ICD10 | 05242017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
