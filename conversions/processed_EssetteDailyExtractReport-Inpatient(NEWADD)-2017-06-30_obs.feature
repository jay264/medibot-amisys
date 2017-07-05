Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_OBS
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
| 06012017 | 2017-06-01T13:22:51+00:00 |  | 000042800-01 | HELEN | FRANCIS | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05312017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601058 | J189 | Pneumonia, unspecified organism | ICD10 | 06302017 | 05312017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06202017 | 2017-06-20T15:03:38+00:00 |  | 000110333-01 | Robert | Shawhan | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06192017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621007 | I4891 | Unspecified atrial fibrillation | ICD10 | 06302017 | 06192017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06222017 | 2017-06-22T08:36:54+00:00 |  | 000094129-01 | Harold | Stewart | MARIETTA MEM HSP | 922016 | LLOYD D | DENNIS | 1578531547 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06222017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622020 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06302017 | 06222017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06232017 | 2017-06-23T11:24:36+00:00 |  | 000077772-01 | Theresa | Tiberi | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06302017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06222017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623056 | R1110 | Vomiting, unspecified | ICD10 | 06302017 | 06222017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T10:33:15+00:00 | 251938717175 | 000071616-01 | Constantinos | Karatsoridis | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06242017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626027 | D6489 | Other specified anemias | ICD10 | 06302017 | 06242017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T11:34:25+00:00 | 255218047177 | 000104381-01 | Georgia | Tolliver | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626062 | M4806, S3210XA | Unsp fracture of sacrum, init encntr for closed fracture | ICD10 | 06302017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T14:49:15+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 06302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06252017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627013 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06302017 | 06252017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T10:07:58+00:00 | 250728647177 | 000047872-01 | SARA | MCLAUGHLIN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627029 | N390 | Urinary tract infection, site not specified | ICD10 | 06302017 | 06262017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06272017 | 2017-06-27T09:57:09+00:00 |  | 000112311-01 | Howard | Winnett | ADENA MEDICAL GROUP LLC | 922163 | ADEDOYIN O | ADETORO | 1215260930 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06302017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627067 | R079 | Chest pain, unspecified | ICD10 | 06302017 | 06262017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T10:25:17+00:00 |  | 000029485-01 | PHYLLIS | COLLIER | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Observation | OBSV | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627075 | I509, R739 | Hyperglycemia, unspecified | ICD10 | 06302017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T09:35:26+00:00 | 260972127179 | 000049834-01 | CAROL | THOMPSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628011 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 06302017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T10:32:49+00:00 |  | 000111407-01 | Tamera | Kindelberger | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06302017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628030 | R079 | Chest pain, unspecified | ICD10 | 06302017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T10:45:37+00:00 | 025053624-7178 | 000079781-01 | Ruth | Harper | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628031 | S92009A | Unsp fracture of unsp calcaneus, init for clos fx | ICD10 | 06302017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T11:06:47+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628041 | I509 | Heart failure, unspecified | ICD10 | 06302017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T16:23:54+00:00 |  | 000031867-01 | PHYLLIS | CAMPBELL | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Post-Service | POST |  | ADENA REGIONAL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170628046 | R296 | Repeated falls | ICD10 | 06302017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T09:10:49+00:00 | 260517127180 | 000085722-01 | Sherry | Brock | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06292017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629011 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06302017 | 06292017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T09:01:04+00:00 |  | 000114465-01 | FRANCIS | KEIFFER JR | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06302017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629021 | I209 | Angina pectoris, unspecified | ICD10 | 06302017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T09:49:02+00:00 | 017232208-7180 | 000102958-01 | ARTHUR | DAVIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06292017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629023 | R079 | Chest pain, unspecified | ICD10 | 06302017 | 06292017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T08:36:06+00:00 |  | 000031619-01 | Shirley | Lutz | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629037 | R109 | Unspecified abdominal pain | ICD10 | 06302017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T15:44:56+00:00 |  | 000117325-01 | Robert | Bruce | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629090 | R42 | Dizziness and giddiness | ICD10 | 06302017 | 06292017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T16:04:29+00:00 |  | 000087236-01 | Stephen | Dennis | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629095 | I4891 | Unspecified atrial fibrillation | ICD10 | 06302017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T13:59:06+00:00 |  | 000096377-01 | Mary | Debevoise | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630065 | R6889 | Other general symptoms and signs | ICD10 | 06302017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T15:36:14+00:00 |  | 000103547-01 | James | Tabler | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06292017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630067 | R6889 | Other general symptoms and signs | ICD10 | 06302017 | 06292017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
