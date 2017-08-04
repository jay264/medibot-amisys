Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-01_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-01_OBS
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
| 07312017 | 2017-07-31T11:49:17+00:00 | 164472847210 | 000072878-01 | Tom | Saltsman | EMERGENCY SERVICES INC | 936673 | STEVEN C | GENTILE | 1841278389 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731047 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07252017 | 2017-07-25T11:07:37+00:00 |  | 000028732-01 | MARION | MORGAN | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725100 | R296 | Repeated falls | ICD10 | 08012017 | 07242017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T09:49:42+00:00 | 251277797212 | 000038345-01 | JUDITH | WARSCHAUER | EMERGENCY SERVICES INC | 918783 | TIMOTHY J | COMTE | 1821214990 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801033 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T11:09:06+00:00 | 254155607209 | 000033827-01 | JOHN | WHITTEN | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731035 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08012017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T10:07:05+00:00 |  | 000087026-01 | Deborah | Hiles | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08012017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801019 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:13:14+00:00 | 251418167211 | 000027145-01 | GEORGE | BRECKENRIDGE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731010 | I639 | Cerebral infarction, unspecified | ICD10 | 08012017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07282017 | 2017-07-28T08:39:22+00:00 |  | 000091380-01 | John | Heston | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07262017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728025 | I509, R001, R079 | Chest pain, unspecified | ICD10 | 08012017 | 07262017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T09:54:49+00:00 | 253072647209 | 000045718-01 | SUZANNE | GIBSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731023 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T11:44:30+00:00 | 250536797210 | 000062984-01 | TERRY | JESSE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731044 | I4891 | Unspecified atrial fibrillation | ICD10 | 08012017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07182017 | 2017-07-18T09:45:29+00:00 |  | 000077971-01 | Danny | Short | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08012017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07172017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718110 | I509 | Heart failure, unspecified | ICD10 | 08012017 | 07172017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T13:58:02+00:00 |  | 000082337-01 | Gilbert | Durosko | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731071 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08012017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T13:22:42+00:00 | 250568737209 | 000062037-01 | MERL | JACKSON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07282017 | 07312017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731059 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T08:17:41+00:00 |  | 000108622-01 | Jerry | Salyers | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07302017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731103 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07302017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T09:40:56+00:00 | 251897787208 | 000010272-01 | ANNABELL | KAY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07272017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728010 | N390 | Urinary tract infection, site not specified | ICD10 | 08012017 | 07272017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:47:16+00:00 | 251630857210 | 000057965-01 | KAREN | EATON | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731021 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T12:32:31+00:00 |  | 000056825-01 | JANET | SMITH | SOUND PHYSICIANS OF OHI | 904570 | SURESH K | YADAV | 1649288465 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07312017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801049 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07312017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T15:08:22+00:00 |  | 000102110-01 | Angelyn | Blakeman | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801059 | M6281 | Muscle weakness (generalized) | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T08:42:08+00:00 |  | 000073479-01 | Patty | Hladik | APOGEE MED GRP OHIO INC | 947863 | SARAH | KHAN | 1336481670 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801009 | R0602 | Shortness of breath | ICD10 | 08012017 | 07282017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T11:21:21+00:00 |  | 000083868-01 | Stephen | Thomas | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08012017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07202017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721036 | L0390 | Cellulitis, unspecified | ICD10 | 08012017 | 07202017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07252017 | 2017-07-25T15:36:23+00:00 |  | 000112377-01 | Kathleen | Palm | UNIVERSITY OF CINCINNATI | 926295 | RAJAN | PRAKASH | 1245531151 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725110 | R112 | Nausea with vomiting, unspecified | ICD10 | 08012017 | 07252017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T13:11:33+00:00 |  | 000081785-01 | Cora | Stevens | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801112 | D649 | Anemia, unspecified | ICD10 | 08012017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T08:55:20+00:00 |  | 000073311-01 | Eddie | Sword | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801011 | N132, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 08012017 | 07302017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07282017 | 2017-07-28T09:13:21+00:00 |  | 000093766-01 | Douglas | Warner | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08012017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728028 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07272017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T08:55:58+00:00 |  | 000100871-01 | Dorothy | Skelton | SOUND PHYSICIANS OF OHI | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07272017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728026 | H8149, I639, I69393, R112 | Nausea with vomiting, unspecified | ICD10 | 08012017 | 07272017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T07:42:07+00:00 |  | 000078247-01 | Judy | Cox | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731087 | R410, R509 | Fever, unspecified | ICD10 | 08012017 | 07302017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T11:23:52+00:00 |  | 000111089-01 | Donna | Hartman | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 08012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07272017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728036 | J80 | Acute respiratory distress syndrome | ICD10 | 08012017 | 07272017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07282017 | 2017-07-28T14:10:43+00:00 |  | 000089849-01 | Betty | Keys | APOGEE MED GRP OHIO INC | 947863 | SARAH | KHAN | 1336481670 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728045 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T11:25:28+00:00 |  | 000116818-01 | Kenneth | Gragg | ADENA MEDICAL GROUP LLC | 902416 | JENNIFER L | KELLER | 1073576294 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801087 | R6889 | Other general symptoms and signs | ICD10 | 08012017 | 07282017 | 07292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T09:16:52+00:00 | 251408287209 | 000072800-01 | Diana | Burris | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07282017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731012 | I639 | Cerebral infarction, unspecified | ICD10 | 08012017 | 07282017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07262017 | 2017-07-26T08:36:11+00:00 |  | 000008147-01 | AUDREY | WEHRLE | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08012017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726041 | R2681 | Unsteadiness on feet | ICD10 | 08012017 | 07272017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T13:55:06+00:00 |  | 000111444-01 | Hannah | Rocker | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07282017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731069 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 08012017 | 07282017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T07:47:50+00:00 |  | 000115652-01 | NANCY | REED | EASTSIDE INTERNAL MED | 921408 | JYOTI J | MEHTA | 1932170933 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07302017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731089 | R079 | Chest pain, unspecified | ICD10 | 08012017 | 07302017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T14:05:24+00:00 | 025636460-7211 | 000081253-01 | Virginia | Tallman | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08012017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731074 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 08012017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
