Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-04_OBS
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
| 12292017 | 2017-12-29T08:29:19+00:00 |  | 000111930-01 | Melodie | Gibson | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12282017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229023 | R0902 | Hypoxemia | ICD10 | 01042018 | 12282017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12292017 | 2017-12-29T08:14:41+00:00 |  | 000070770-01 | Jerrold | Leighty | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12262017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229046 | R4182 | Altered mental status, unspecified | ICD10 | 01042018 | 12262017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T09:52:42+00:00 | 253060198002 | 000063490-01 | GLORIA | EDGERTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102013 | F29, R443 | Hallucinations, unspecified | ICD10 | 01042018 | 01022018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T13:55:51+00:00 |  | 000108489-01 | Barbara | Mendenhall | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12292017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103028 | E43, N390, R531 | Weakness | ICD10 | 01042018 | 12292017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T08:59:22+00:00 |  | 000087392-01 | Eve | Lynds | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12092017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211071 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01042018 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T08:00:50+00:00 |  | 000054475-01 | Thomas | Keane | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11232017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127012 | D649, J811 | Chronic pulmonary edema | ICD10 | 01042018 | 11232017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T06:31:32+00:00 |  | 000088972-01 | Juanita | Hill | CHILLICOTHE FAMILY PHYS | 935736 | ALLEN D | SHAW | 1043239544 | WILSON MEMORIAL HOSPITAL | 901228 | 1639174204 | WILSON MEMORIAL HOSPITAL | 1639174204 | Observation | OBSV | Concurrent Review | CONC |  | WILSON MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12212017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226070 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 01042018 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12282017 | 2017-12-28T07:45:15+00:00 |  | 000096575-01 | Ray | Stemen | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01042018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 12272017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228004 | R509 | Fever, unspecified | ICD10 | 01042018 | 12272017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01042018 | 2018-01-04T08:03:02+00:00 |  | 000110498-01 | Alta | Miller | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01032018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104045 | R6889 | Other general symptoms and signs | ICD10 | 01042018 | 01032018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12292017 | 2017-12-29T12:59:36+00:00 |  | 000084077-01 | Frances | Baker | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12282017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229065 | A403, J189, R0902 | Hypoxemia | ICD10 | 01042018 | 12282017 | 01012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12202017 | 2017-12-20T09:47:27+00:00 |  | 000114417-01 | George | Merckling | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12202017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220040 | N390 | Urinary tract infection, site not specified | ICD10 | 01042018 | 12202017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01012018 | 2018-01-01T17:10:50+00:00 |  | 000076070-01 | Charles | Milam | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01012018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102096 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 01042018 | 01012018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T07:56:07+00:00 |  | 000014478-01 | CLARICE | FOGLESONG | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220013 | K922, V1251 | PERSONAL HISTORY OF VENOUS THROMBOSIS AND EMBOLISM | ICD10 | 01042018 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T13:01:08+00:00 |  | 000119093-01 | Carol | Thompson | COPC CENTRAL OHIO PRIMAR | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104074 | R55 | Syncope and collapse | ICD10 | 01042018 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T10:54:01+00:00 |  | 000049781-01 | JESSIE | KELLOUGH | APOGEE MED GRP OHIO INC | 943520 | DALIA M | DAWOUD | 1508026386 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01012018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103031 | R0602 | Shortness of breath | ICD10 | 01042018 | 01012018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12272017 | 2017-12-27T10:05:01+00:00 |  | 000072142-01 | David | Binns | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12262017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227062 | E872, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01042018 | 12262017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T09:30:12+00:00 |  | 000079197-01 | Elizabeth | Linley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01012018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102084 | M6281 | Muscle weakness (generalized) | ICD10 | 01042018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01012018 | 2018-01-01T12:17:19+00:00 |  | 000026007-01 | WARREN | GIFFORD | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180101002 | R0789 | Other chest pain | ICD10 | 01042018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T18:14:55+00:00 |  | 000106052-01 | Opal | Stevens | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01042018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 01022018 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104012 | D649, N390, R079 | Chest pain, unspecified | ICD10 | 01042018 | 01022018 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12292017 | 2017-12-29T08:41:28+00:00 | 250987797362 | 000044776-01 | IRENE | REYNOLDS | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12282017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229012 | R296 | Repeated falls | ICD10 | 01042018 | 12282017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12272017 | 2017-12-27T11:43:32+00:00 |  | 000074298-01 | Charlotte | Lane | MARIETTA MEMORIAL HOSPITAL | 929440 |  | MARIETTA MEMORIAL HOSPITAL | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227068 | K529, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01042018 | 12262017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T15:22:36+00:00 |  | 000072013-01 | Robert | Langford | OHIOHEALTH PHYS GRP | 909054 | FATIMA I | CHAWDRY | 1790890010 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12242017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226188 | E162 | Hypoglycemia, unspecified | ICD10 | 01042018 | 12242017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T12:39:08+00:00 |  | 000108488-01 | Rodger | Mendenhall | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01042018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12252017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226144 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 01042018 | 12252017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T11:32:10+00:00 |  | 000026145-01 | MARCELLA | PUCKETT | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12232017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226138 | I160 | HYPERTENSIVE URGENCY | ICD10 | 01042018 | 12232017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T10:49:43+00:00 |  | 000040715-01 | Shirley | Copeland | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104053 | R05 | Cough | ICD10 | 01042018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T10:06:20+00:00 |  | 000001620-01 | HERBERT | HOSEY | OSU SURGERY LLC | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12252017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226107 | R0789 | Other chest pain | ICD10 | 01042018 | 12252017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12222017 | 2017-12-22T10:51:17+00:00 |  | 000089390-01 | Michael | Workman | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12222017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222047 | I509 | Heart failure, unspecified | ICD10 | 01042018 | 12222017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
