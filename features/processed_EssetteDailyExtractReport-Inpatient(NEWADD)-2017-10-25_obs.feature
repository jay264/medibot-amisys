Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-25_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-25_OBS
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
| 10092017 | 2017-10-09T08:51:50+00:00 |  | 000101936-01 | Janice | Henery | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10052017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009066 | J219, R0902, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 10252017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T07:53:45+00:00 | 250514287292 | 000050048-01 | DENNIE | HEMBREE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020002 | T07 | Unspecified multiple injuries | ICD10 | 10252017 | 10202017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10182017 | 2017-10-18T11:44:36+00:00 |  | 000073501-01 | Bessie | Prater | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10172017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018059 | K5900 | Constipation, unspecified | ICD10 | 10252017 | 10172017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T09:14:44+00:00 |  | 000071271-01 | Doris | Kinzer | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10202017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023077 | E785, I499, R002 | Palpitations | ICD10 | 10252017 | 10202017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10082017 | 2017-10-08T07:57:02+00:00 |  | 000076292-01 | Lois | Miller | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009054 | R079, R109, R42 | Dizziness and giddiness | ICD10 | 10252017 | 10072017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10202017 | 2017-10-20T10:51:07+00:00 |  | 000090588-01 | Darwin | Bauer | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10252017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 10232017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023022 | R001 | Bradycardia, unspecified | ICD10 | 10252017 | 10232017 | 10242017 | 33208 | INSERT PERMNT PACEMAKER AV SEQUENT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 10232017 | 2017-10-23T09:48:04+00:00 |  | 000093443-01 | Marsh | Barnes | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023093 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 10252017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10242017 | 2017-10-24T10:55:31+00:00 |  | 000059290-01 | DELLA | WHITTEN | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10232017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024063 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 10252017 | 10232017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10252017 | 2017-10-25T10:05:01+00:00 |  | 000012219-01 | BARBARA | WILHITE | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10222017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025039 | R0600 | Dyspnea, unspecified | ICD10 | 10252017 | 10222017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T08:17:09+00:00 | 017999849-7295 | 000117936-01 | Nancy | Tapocsi | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10222017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023006 | I639 | Cerebral infarction, unspecified | ICD10 | 10252017 | 10222017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T08:42:58+00:00 |  | 000085233-01 | Mary | Schmid | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 10252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10222017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023059 | I509 | Heart failure, unspecified | ICD10 | 10252017 | 10222017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10252017 | 2017-10-25T11:24:01+00:00 |  | 000089886-01 | Sharron | Hale | SOUND PHYSICIANS OF OHI0 | 939956 | AMY | WANG | 1992949150 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10202017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025042 | I272, I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 10252017 | 10202017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T10:54:59+00:00 | 255135447293 | 000062937-01 | GEORGE | MCCOMBS JR | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023067 | R197 | Diarrhea, unspecified | ICD10 | 10252017 | 10202017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T09:21:10+00:00 |  | 000083985-01 | Charlene | Hollins | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024050 | R55 | Syncope and collapse | ICD10 | 10252017 | 10232017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09202017 | 2017-09-20T11:25:52+00:00 |  | 000090162-01 | Patricia | Wissman | ADVANCED NEUROSURG INC | 915845 | JAMAL | TAHA | 1801861018 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10222017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920087 | M4806 | Spinal stenosis, lumbar region | ICD10 | 10252017 | 10222017 | 10242017 | 22612, 22558, 63047, 22840, 22853, 20930, 20936, 61783, 77002, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 10042017 | 2017-10-04T09:22:44+00:00 |  | 000107749-01 | Denna | Davis | LICKING MEM HLTH PROF | 914391 | BRENT M | SAVAGE | 1366437949 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10022017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004024 | J159 | Unspecified bacterial pneumonia | ICD10 | 10252017 | 10022017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10082017 | 2017-10-08T09:09:59+00:00 |  | 000099501-01 | Joseph | Serge | S DAYTON ACUTE CARE CNSL | 934485 | MATTHEW R | BROCKMAN | 1841440120 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 926482 | 1912992215 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 1912992215 | Observation | OBSV | Concurrent Review | CONC |  | NORTHERN WESTCHESTER HOSPITAL ASSOC | 10252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009051 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 10252017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10122017 | 2017-10-12T15:41:15+00:00 |  | 000108888-01 | Nancy | Pickerrell | ADENA MEDICAL GROUP LLC | 935741 | ALAN T | MONG | 1013935311 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10192017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171013067 | I70202 | Unsp athscl native arteries of extremities, left leg | ICD10 | 10252017 |  | 10192017 | 37224, 37225, 37226, 37227, 73725 | MAGNETIC RESONANCE ANGIOGRAPHY, LOWER EXTREMITY, WITH OR WITHOUT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 1, 1, 1, 1, 1 | CPT | C4 |  |  |  | 1.0 |
| 10232017 | 2017-10-23T11:12:17+00:00 | 256364607296 | 000081253-01 | Virginia | Tallman | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10222017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023079 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 10252017 | 10222017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10242017 | 2017-10-24T09:13:13+00:00 | 259036927296 | 000043123-01 | GARY | PATTERSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024015 | R079 | Chest pain, unspecified | ICD10 | 10252017 | 10232017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T11:18:07+00:00 | 251286817296 | 000005509-01 | JANET | YAILLEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10232017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023081 | R4182 | Altered mental status, unspecified | ICD10 | 10252017 | 10232017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T14:07:03+00:00 |  | 000035223-01 | BONNIE | POLING | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10192017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020066 | R0600 | Dyspnea, unspecified | ICD10 | 10252017 | 10192017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T11:19:15+00:00 |  | 000088157-01 | Herschel | Haulman | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10202017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023124 | R531 | Weakness | ICD10 | 10252017 | 10202017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T11:59:40+00:00 |  | 000028884-01 | MELVIN | WOOD | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10232017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024069 | G20, I4891 | Unspecified atrial fibrillation | ICD10 | 10252017 | 10232017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T11:35:54+00:00 |  | 000085814-01 | Sandra | Spaulding | S DAYTON ACUTE CARE CNSL | 930272 | ISAAC P | HUMPHREY | 1649357724 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019058 | A419 | Sepsis, unspecified organism | ICD10 | 10252017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T14:40:18+00:00 | 252563817297 | 000082244-01 | Mary | Zapp | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10242017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024078 | R000 | Tachycardia, unspecified | ICD10 | 10252017 | 10242017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T09:23:59+00:00 | 258805097296 | 000062997-01 | DIANNE | GERAMITA | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024019 | E860 | Dehydration | ICD10 | 10252017 | 10232017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10242017 | 2017-10-24T09:17:48+00:00 | 250079747297 | 000094778-01 | Ernestine | Blackburn | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024018 | R6889 | Other general symptoms and signs | ICD10 | 10252017 | 10232017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
