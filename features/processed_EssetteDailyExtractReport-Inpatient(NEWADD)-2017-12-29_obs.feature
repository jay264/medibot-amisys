Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-29_OBS
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
| 12262017 | 2017-12-26T10:07:25+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12252017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226110 | R079 | Chest pain, unspecified | ICD10 | 12292017 | 12252017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12282017 | 2017-12-28T10:34:02+00:00 |  | 000069133-01 | CONNIE | GELFER | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12292017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228039 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 12292017 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T10:23:17+00:00 | 250514287358 | 000050048-01 | DENNIE | HEMBREE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12242017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226073 | E860, N390 | Urinary tract infection, site not specified | ICD10 | 12292017 | 12242017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T09:57:50+00:00 | 261713167357 | 000012312-01 | CLYDE | RANNEBARGER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12232017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226052 | R509 | Fever, unspecified | ICD10 | 12292017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12272017 | 2017-12-27T09:22:44+00:00 | 252001797360 | 000071086-01 | Judith | Valentine | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12262017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227024 | R079 | Chest pain, unspecified | ICD10 | 12292017 | 12262017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T09:07:46+00:00 | 263675517361 | 000108383-01 | BETTY | SMITH | SCIOTO VALLEY UROLOGY IN | 946370 | MICHAEL C | SWEENEY | 1396943114 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228015 | N200 | Calculus of kidney | ICD10 | 12292017 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12152017 | 2017-12-15T13:34:06+00:00 |  | 000088580-01 | Jack | Katenkamp | SUMA & DURGA PA | 940125 | DURGA P | MAGANTI | 1619075579 | LAKE WALES MEDICAL CENTER | 903364 | 1033180195 | LAKE WALES MEDICAL CENTER | 1033180195 | Observation | OBSV | Concurrent Review | CONC |  | LAKE WALES MEDICAL CENTER | 12292017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215069 | I639, R531 | Weakness | ICD10 | 12292017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12292017 | 2017-12-29T12:05:24+00:00 |  | 000092096-01 | Deborah | Roach | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12282017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229058 | R6889 | Other general symptoms and signs | ICD10 | 12292017 | 12282017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12222017 | 2017-12-22T12:46:35+00:00 |  | 000087043-01 | Douglas | Jackson | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12212017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222056 | S73034A | Other anterior dislocation of right hip, initial encounter | ICD10 | 12292017 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12282017 | 2017-12-28T14:46:32+00:00 |  | 000010477-01 | MARY | ADAMS | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228063 | R079 | Chest pain, unspecified | ICD10 | 12292017 | 12282017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12272017 | 2017-12-27T09:44:01+00:00 | 251684097360 | 000009330-01 | JAMES | FRALEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12262017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227033 | R319 | Hematuria, unspecified | ICD10 | 12292017 | 12262017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12282017 | 2017-12-28T09:03:49+00:00 | 252868877361 | 000070338-01 | Kenneth | Sizemore | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228013 | I4891, I4892, I509 | Heart failure, unspecified | ICD10 | 12292017 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T12:05:11+00:00 |  | 000118097-01 | Jerry | Milburn | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12152017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219021 | L0390 | Cellulitis, unspecified | ICD10 | 12292017 | 12152017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12212017 | 2017-12-21T14:21:59+00:00 |  | 000085530-01 | John | Park | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12202017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221058 | I255, J441, R748 | Abnormal levels of other serum enzymes | ICD10 | 12292017 | 12202017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12052017 | 2017-12-05T12:30:24+00:00 |  | 000048635-01 | GARY | CLEMMONS | ADENA MEDICAL GROUP LLC | 914059 | STEPHEN C | JOHNSON | 1699828400 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205074 | N2889, N390 | Urinary tract infection, site not specified | ICD10 | 12292017 | 12192017 | 12212017 | 50546 | LAPAROSCOPIC NEPHRECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12292017 | 2017-12-29T10:20:42+00:00 | 266346727362 | 000050518-01 | DONALD | BASILE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12282017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229031 | I509 | Heart failure, unspecified | ICD10 | 12292017 | 12282017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T13:31:13+00:00 |  | 000089910-01 | James | Maddox | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219009 | R55, R748, W19XXXA | Unspecified fall, initial encounter | ICD10 | 12292017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T09:44:43+00:00 |  | 000099625-01 | Paul | Moran | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12222017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226088 | R531 | Weakness | ICD10 | 12292017 | 12222017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T09:44:42+00:00 |  | 000083850-01 | Larry | Clutter | GENESIS MEDICAL GRP LLC | 929175 | YORAM | MOYAL | 1194730580 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12222017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226084 | E118 | Type 2 diabetes mellitus with unspecified complications | ICD10 | 12292017 | 12222017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T09:45:20+00:00 |  | 000117730-01 | Arthur | Valentine | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12222017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226090 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 12292017 | 12222017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T14:59:52+00:00 |  | 000115935-01 | Clarence | Harper | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12292017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227032 | I509, J90, N179 | Acute kidney failure, unspecified | ICD10 | 12292017 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
