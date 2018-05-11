Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_OBS
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
| 04272018 | 2018-04-27T13:44:03+00:00 |  | 000108013-01 | David | Lewis | KHN IP MED | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427052 | R079 | Chest pain, unspecified | ICD10 | 05082018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T15:00:13+00:00 |  | 000000241-01 | BYRON | THOMPSON | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504069 | G459, R4182, S42202A | Unsp fracture of upper end of left humerus, init for clos fx | ICD10 | 05082018 | 05032018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05042018 | 2018-05-04T16:22:01+00:00 |  | 000101214-01 | Jerry | Large | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504083 | C3490, J189, J9801, R531, R627 | Adult failure to thrive | ICD10 | 05082018 | 05032018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05052018 | 2018-05-05T19:51:11+00:00 |  | 000003896-01 | EDWIN | BRAMER | TRAUMA & CRITICAL CARE S | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05042018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507026 | I6200, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 05082018 | 05042018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T10:43:48+00:00 |  | 000049747-01 | BETTY | BURDEN | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507094 | R0782, R079 | Chest pain, unspecified | ICD10 | 05082018 | 05052018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T14:28:09+00:00 |  | 000109147-01 | Pansy | Boyer | CLEVELAND CLINIC FNDN | 940754 | JEFFREY S | USTIN | 1558552679 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419006 | W11XXXA | Fall on and from ladder, initial encounter | ICD10 | 05082018 | 04182018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T14:53:51+00:00 |  | 000039318-01 | GERALDINE | REYNOLDS | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423019 | R55 | Syncope and collapse | ICD10 | 05082018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T14:56:54+00:00 |  | 000070143-01 | Charles | Engel | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424106 | R0600 | Dyspnea, unspecified | ICD10 | 05082018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T15:02:36+00:00 |  | 000050568-01 | MARY | BARTLETT | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425084 | R0789 | Other chest pain | ICD10 | 05082018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T15:11:48+00:00 |  | 000064531-01 | PAUL | DICUS | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426008 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05082018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T16:05:14+00:00 |  | 000110787-01 | SAMUEL | RAINEY | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426072 | R531 | Weakness | ICD10 | 05082018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T10:50:52+00:00 |  | 000057766-01 | MARY | RAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427017 | R6889 | Other general symptoms and signs | ICD10 | 05082018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T11:01:10+00:00 |  | 000119629-01 | Barbara | Lakatos | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427018 | R109, R197 | Diarrhea, unspecified | ICD10 | 05082018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05012018 | 2018-05-01T12:02:02+00:00 |  | 000003200-01 | MILTON | BRAASCH | OHIOHEALTH PHYS GRP | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502017 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 05082018 | 04302018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05022018 | 2018-05-02T07:09:01+00:00 |  | 000093896-01 | Donald | Armes | HOSPITALIST MEDICINE PHY | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502031 | A419, N3001 | Acute cystitis with hematuria | ICD10 | 05082018 | 05012018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T07:12:44+00:00 |  | 000115814-01 | Walter | Dewar Jr | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502032 | R079 | Chest pain, unspecified | ICD10 | 05082018 | 05012018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T10:52:37+00:00 |  | 000091203-01 | Jesse | Pendleton | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502064 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05082018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T12:38:16+00:00 |  | 000045649-01 | SHIRLEY | RATCLIFF | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503038 | R0602 | Shortness of breath | ICD10 | 05082018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T10:15:54+00:00 |  | 000064354-01 | ANDERSON | OSBORNE | KHN IP MED | 941454 | ISHA L | BUTLER | 1952693707 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504059 | N3001 | Acute cystitis with hematuria | ICD10 | 05082018 | 05032018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T14:44:06+00:00 |  | 000000049-01 | OREN | HARRIS | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507004 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05082018 | 05032018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T14:25:04+00:00 |  | 000033476-01 | MARY | COATS | FAIRFIELD HLTHCARE PROFS | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508025 | I2510, R079 | Chest pain, unspecified | ICD10 | 05082018 | 05052018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T09:21:38+00:00 |  | 000111286-01 | Sharon | Adams | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508038 | R6889 | Other general symptoms and signs | ICD10 | 05082018 | 05062018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T11:15:47+00:00 |  | 000120797-01 | Sharon | Panozzo | KNOX COMMUNITY HOSPITAL | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503019 | D72829, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05082018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T13:07:29+00:00 |  | 000039181-01 | KENNETH | SIDERS | CENTRAL OH HSPISTS INC | 909355 | JESSICA B | HUNTER | 1982709127 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503045 | J189 | Pneumonia, unspecified organism | ICD10 | 05082018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T14:29:50+00:00 |  | 000111110-01 | Mary | Vogel | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504064 | S42291A | Oth disp fx of upper end of right humerus, init for clos fx | ICD10 | 05082018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T16:30:27+00:00 |  | 000025222-01 | ELEANOR | GRAHL | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504087 | K625 | Hemorrhage of anus and rectum | ICD10 | 05082018 | 05032018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05062018 | 2018-05-06T11:45:50+00:00 |  | 000091498-01 | Joseph | Opperman | S DAYTON ACUTE CARE CNSL | 902589 | ROBERT | SAWYER | 1730160268 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05052018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507055 | D649, I482, R4182, R55, Z7901 | Long term (current) use of anticoagulants | ICD10 | 05082018 | 05052018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082018 | 2018-05-08T12:27:00+00:00 |  | 000117429-01 | Virginia | Baldwin | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05052018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508062 | R109 | Unspecified abdominal pain | ICD10 | 05082018 | 05052018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
