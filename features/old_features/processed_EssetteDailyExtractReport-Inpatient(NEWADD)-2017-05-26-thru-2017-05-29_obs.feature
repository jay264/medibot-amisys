Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_OBS
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
| 05052017 | 2017-05-05T08:21:59+00:00 |  | 000112342-01 | Nadine | Alexander | GOOD SAMARITAN HSP & HLT | 903375 | SHAMSUDDIN C | PRACHA | 1104872779 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05042017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508075 | R079 | Chest pain, unspecified | ICD10 | 05262017 | 05042017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102017 | 2017-05-10T13:41:36+00:00 |  | 000081130-01 | William | Mellon Jr | MIAMI VALLEY HSPISTS GRP | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510100 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 05262017 | 05092017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05112017 | 2017-05-11T15:01:48+00:00 |  | 000034785-01 | BRENDA | RILEY | FLEAGLE, KURT A | 902391 | KURT A | FLEAGLE | 1750382602 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512022 | I10, R55 | Syncope and collapse | ICD10 | 05262017 | 05112017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T09:29:25+00:00 |  | 000083496-01 | George | Neiswender | SAMARITAN HSPIST GRP | 917404 | SREEVANI | GOLLAMUDI | 1053572057 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05142017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515028 | R29810 | Facial weakness | ICD10 | 05262017 | 05142017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T08:37:08+00:00 |  | 000037670-01 | JOHN | CRAWFORD | MIAMI VALLEY HSPISTS GRP | 944005 | DRON P | BHANDARI | 1841562774 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516043 | R6889 | Other general symptoms and signs | ICD10 | 05262017 | 05152017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T08:20:45+00:00 |  | 000053700-01 | RAMONA | STONE | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05182017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519028 | R079 | Chest pain, unspecified | ICD10 | 05262017 | 05182017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05192017 | 2017-05-19T12:20:13+00:00 |  | 000117919-01 | Phady | Phaosihavong | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 05262017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Observation | Inpatient | 05182017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519052 | E876 | Hypokalemia | ICD10 | 05262017 | 05182017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T14:45:40+00:00 |  | 000045715-01 | RAYMOND | THIES | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522110 | I4891 | Unspecified atrial fibrillation | ICD10 | 05262017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T15:34:08+00:00 |  | 000071934-01 | Lula | Peters | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05192017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522119 | M549, R0602 | Shortness of breath | ICD10 | 05262017 | 05192017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05222017 | 2017-05-22T16:25:54+00:00 |  | 000091103-01 | Marilyn | Strouse | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522131 | R079, R7889 | Finding of oth substances, not normally found in blood | ICD10 | 05262017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T09:27:45+00:00 |  | 000098026-01 | Gary | Lustgarten | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05262017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523029 | M62838 | Other muscle spasm | ICD10 | 05262017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T13:43:02+00:00 |  | 000029595-01 | ELLA | VANMETER | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523070 | J159 | Unspecified bacterial pneumonia | ICD10 | 05262017 | 05232017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T13:52:12+00:00 |  | 000019943-01 | WILFORD | WILLIAMS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523072 | R0602 | Shortness of breath | ICD10 | 05262017 | 05232017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05242017 | 2017-05-24T09:40:56+00:00 |  | 000074623-01 | Raymond | Sigman | COSHOCTON COUNTY MEM HSP | 922139 | ABDULHAY | ALBIRINI | 1174509160 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05262017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524015 | I442 | Atrioventricular block, complete | ICD10 | 05262017 | 05232017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T11:47:48+00:00 |  | 000103333-01 | Gary | Palmore | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05242017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524027 | N200 | Calculus of kidney | ICD10 | 05292017 | 05242017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T11:59:17+00:00 |  | 000105587-01 | Barbara | Mangini | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05232017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524029 | R531 | Weakness | ICD10 | 05262017 | 05232017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T12:34:20+00:00 | 016352319-7143 | 000110767-01 | LORRAINE | CHAFFIN | RANGI, BALJIT S | 937357 | BALJIT S | RANGI | 1033154497 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05262017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524038 | M545 | Low back pain | ICD10 | 05262017 | 05232017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05242017 | 2017-05-24T12:26:50+00:00 |  | 000095096-01 | Franklin | Banks | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524039 | Y92530 | Ambulatory surgery center as place | ICD10 | 05262017 | 05232017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05242017 | 2017-05-24T14:21:24+00:00 |  | 000085235-01 | Patricia | Roberts | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 05262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524063 | I10, I509, R0600, R0902 | Hypoxemia | ICD10 | 05262017 | 05222017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05242017 | 2017-05-24T15:12:09+00:00 |  | 000074061-01 | David | Henry | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 05262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524073 | J441, R0600, R0902 | Hypoxemia | ICD10 | 05262017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05242017 | 2017-05-24T16:39:18+00:00 |  | 000022832-01 | LOLA | HAYES | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05232017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524080 | I509 | Heart failure, unspecified | ICD10 | 05292017 | 05232017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T17:05:43+00:00 |  | 000024115-01 | CATHERINE | DAVIS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05232017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524081 | M549 | Dorsalgia, unspecified | ICD10 | 05292017 | 05232017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05252017 | 2017-05-25T08:34:49+00:00 |  | 000086716-01 | Robert | Ryan | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05262017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 05242017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525008 | N390 | Urinary tract infection, site not specified | ICD10 | 05262017 | 05242017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05252017 | 2017-05-25T08:56:23+00:00 | 025180056-7144 | 000057548-01 | THAD | HELFER | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05242017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525010 | R112 | Nausea with vomiting, unspecified | ICD10 | 05262017 | 05242017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05252017 | 2017-05-25T09:19:03+00:00 |  | 000114587-01 | Kathryn | Benson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05242017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525015 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05262017 | 05242017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05262017 | 2017-05-26T10:03:40+00:00 |  | 000052836-01 | DENNIS | LESTER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05252017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526020 | R17 | Unspecified jaundice | ICD10 | 05292017 | 05252017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05262017 | 2017-05-26T10:27:03+00:00 |  | 000024734-01 | LENORA | RIES | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 05252017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526023 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05292017 | 05252017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
