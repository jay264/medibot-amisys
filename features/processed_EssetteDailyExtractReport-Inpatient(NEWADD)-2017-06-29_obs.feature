Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_OBS
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
| 05222017 | 2017-05-22T14:45:40+00:00 |  | 000045715-01 | RAYMOND | THIES | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522110 | I4891 | Unspecified atrial fibrillation | ICD10 | 06292017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05312017 | 2017-05-31T12:01:33+00:00 |  | 000104958-01 | Mary | Barr | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Observation | Inpatient | 05302017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531063 | I509, R079, R092 | Respiratory arrest | ICD10 | 06292017 | 05302017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T14:03:43+00:00 |  | 000097200-01 | Adrian | Bowen | MERCY HEALTH PHYSICIANS | 948350 | SAYED | TARIQ RIZVI | 1114198348 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06022017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605109 | I2102, R0602 | Shortness of breath | ICD10 | 06292017 | 06022017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T13:19:33+00:00 |  | 000053023-01 | DALE | WEBER | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605113 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 06292017 | 06282017 | 06292017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06202017 | 2017-06-20T11:55:18+00:00 |  | 000084910-01 | Dolores | Bermas | SOUND KENWOOD HSPISTS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06292017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06162017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620074 | G9340 | Encephalopathy, unspecified | ICD10 | 06292017 | 06162017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06212017 | 2017-06-21T10:42:54+00:00 | 251052937171 | 000115477-01 | Penny | Starr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06202017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621022 | G939, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06292017 | 06202017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06222017 | 2017-06-22T09:32:49+00:00 |  | 000083667-01 | Vernon | Schoeppner | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06292017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06212017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622019 | A4189 | Other specified sepsis | ICD10 | 06292017 | 06212017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T10:36:44+00:00 | 258517617176 | 000110821-01 | JEANNE | HAMMOND | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06252017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626031 | N390 | Urinary tract infection, site not specified | ICD10 | 06292017 | 06252017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T10:38:01+00:00 | 165022227176 | 000075374-01 | Sandra | Caracofe | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06252017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626036 | N390 | Urinary tract infection, site not specified | ICD10 | 06292017 | 06252017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T09:18:23+00:00 |  | 000112253-01 | Louis | Lamar Jr | OSU INTERNAL MED LLC | 930397 | ERIC J | ADKINS | 1528046232 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06252017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626074 | K5641 | Fecal impaction | ICD10 | 06292017 | 06252017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T12:09:30+00:00 | 250902797177 | 000025934-01 | WILLIS | PERRY | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626076 | I25118, R079 | Chest pain, unspecified | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T12:18:08+00:00 | 253040437176 | 000046755-01 | JANET | WARD | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626082 | R079 | Chest pain, unspecified | ICD10 | 06292017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T12:30:47+00:00 | 259150837176 | 000012284-01 | BARBARA | BAUR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06252017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626087 | M549 | Dorsalgia, unspecified | ICD10 | 06292017 | 06252017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T12:57:47+00:00 | 251989377177 | 000098669-01 | Richard | Lannon | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626101 | M25519 | Pain in unspecified shoulder | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T13:20:37+00:00 |  | 000107910-01 | Darrell | Cummings | MOUNT CARMEL HLTH PRVDRS | 931830 | AMIT | ARORA | 1619143799 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626110 | I779 | Disorder of arteries and arterioles, unspecified | ICD10 | 06292017 | 06282017 | 06292017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06262017 | 2017-06-26T11:10:44+00:00 |  | 000078183-01 | William | Knight | MID STATE PHYSICIANS LLP | 923931 | DORE R | SHAFRANSKY | 1750336178 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626127 | R55 | Syncope and collapse | ICD10 | 06292017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T09:27:14+00:00 | 265823577177 | 000012894-01 | WILLIAM | RAYMOND | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627019 | R609 | Edema, unspecified | ICD10 | 06292017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T15:44:25+00:00 |  | 000072022-01 | Donald | Triplett | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06252017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627024 | R0602 | Shortness of breath | ICD10 | 06292017 | 06252017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T10:17:17+00:00 | 250879107178 | 000030807-01 | AUDREY | PIETRZAK | COPC CENTRAL OHIO PRIMAR | 911536 | ROBERT J | ZSOLDOS | 1841416179 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627033 | I4891 | Unspecified atrial fibrillation | ICD10 | 06292017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T07:56:52+00:00 |  | 000000778-01 | ROY | SCHWALBAUCH | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628001 | I70211 | Athscl native arteries of extrm w intrmt claud, right leg | ICD10 | 06292017 | 06282017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T08:35:54+00:00 |  | 000074061-01 | David | Henry | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628023 | K859, K868, R109 | Unspecified abdominal pain | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T10:22:58+00:00 | 253273497179 | 000072364-01 | Juanita | Howard | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628025 | J189 | Pneumonia, unspecified organism | ICD10 | 06292017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T10:23:34+00:00 |  | 000093374-01 | Larry | Davis | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628035 | R079 | Chest pain, unspecified | ICD10 | 06292017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T15:26:21+00:00 |  | 000083232-01 | Ronald | Layton | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628043 | R079, R739 | Hyperglycemia, unspecified | ICD10 | 06292017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T10:47:41+00:00 |  | 000106836-01 | George | Anderson | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628044 | K5660 | Unspecified intestinal obstruction | ICD10 | 06292017 | 06282017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T07:58:39+00:00 |  | 000002821-01 | JAMES | PRICE | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628053 | N183, R197 | Diarrhea, unspecified | ICD10 | 06292017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T13:56:43+00:00 | 025233162-7178 | 000072716-01 | John | Stemen | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628062 | I472 | Ventricular tachycardia | ICD10 | 06292017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T14:46:49+00:00 |  | 000092802-01 | James | Thompson | GENESIS MEDICAL GRP LLC | 941995 | GRANT V | CHOW | 1184771701 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628073 | T82110D | Breakdown (mechanical) of cardiac electrode, subs encntr | ICD10 | 06292017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06292017 | 2017-06-29T08:31:18+00:00 |  | 000030752-01 | THERESA | GIDDINGS | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06282017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629003 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06292017 | 06292017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T09:02:13+00:00 |  | 000070376-01 | Thomas | Joyce | OSU INTERNAL MED LLC | 942420 | SEAN T | ANKROM | 1912296815 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Observation | OBSV | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629017 | R58 | Hemorrhage, not elsewhere classified | ICD10 | 06292017 | 06272017 | 06282017 | 99218 | INITIAL OBSERVATION CARE, PER DAY, FOR THE EVALUATION AND MANAGEMENT O | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
