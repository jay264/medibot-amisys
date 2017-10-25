Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-23_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-23_OBS
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
| 10202017 | 2017-10-20T08:39:25+00:00 | 252568367292 | 000013837-01 | ANTOINETTE | BALZANO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020006 | M549 | Dorsalgia, unspecified | ICD10 | 10232017 | 10192017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T09:08:40+00:00 |  | 000102304-01 | Jay | Adams | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020041 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10232017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T08:44:50+00:00 |  | 000075082-01 | Herbert | Fries | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019032 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T15:43:05+00:00 | 251751167292 | 000008707-01 | MARLENE | HAY | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10182017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018075 | I495 | Sick sinus syndrome | ICD10 | 10232017 | 10182017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10182017 | 2017-10-18T09:28:18+00:00 |  | 000091084-01 | Marilyn | Labaki | GENESIS ER PHYS LLC | 926873 | BRANDON D | BOMSTA | 1538495106 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018044 | S22080A | Wedge compression fracture of T11-T12 vertebra, init | ICD10 | 10232017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T08:57:46+00:00 | 250153367292 | 000051453-01 | M | Burnett Canfield | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020016 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09072017 | 2017-09-07T11:24:51+00:00 |  | 000078283-01 | Linda | Carpenter | BESTPRCTS OF W VIRGINA I | 922878 | ANTHONY W | KITCHEN | 1871531715 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 10232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09062017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907084 | R1110 | Vomiting, unspecified | ICD10 | 10232017 | 09062017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T09:08:19+00:00 | 250201607292 | 000053883-01 | DAVID | CLEMENT | MOUNT CARMEL HLTH PRVDRS | 936382 | ANGELA A | EUBANKS | 1386681104 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020022 | I4891 | Unspecified atrial fibrillation | ICD10 | 10232017 | 10202017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T09:35:37+00:00 | 263008257289 | 000112375-01 | Richard | France | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017014 | M6281, R509 | Fever, unspecified | ICD10 | 10232017 | 10162017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10202017 | 2017-10-20T11:31:04+00:00 |  | 000089794-01 | Florence | Brown-Leacock | MONTGOMERY HSPISTS LLC | 913013 | ROBERT N | RUBIN | 1497879555 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10232017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020056 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T09:15:12+00:00 | 253165867293 | 000070110-01 | Rose | Miller | BIG RUN URGENT CARE LLC | 937003 | MATTHEW V | KELLAR | 1285612838 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020025 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10202017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T07:22:06+00:00 |  | 000034751-01 | ALBERT | DONAHUE | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10052017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005003 | E860 | Dehydration | ICD10 | 10232017 | 10052017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T10:29:19+00:00 |  | 000104477-01 | Perl | Spencer Jr | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023118 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10202017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T16:05:15+00:00 | 250867847292 | 000064026-01 | KATHLEEN | PAUGH | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019082 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:27:05+00:00 |  | 000087939-01 | Wilma | Wright | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10212017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023115 | R042 | Hemoptysis | ICD10 | 10232017 | 10212017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10222017 | 2017-10-22T13:41:59+00:00 |  | 000059866-01 | BEATA | BUTTERFIELD | COPC CENTRAL OHIO PRIMAR | 933304 | RAJIV K | SHETH | 1104110337 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023004 | R531 | Weakness | ICD10 | 10232017 | 10202017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10222017 | 2017-10-22T13:47:24+00:00 |  | 000008634-01 | BONNIE | WHITLEY | COPC CENTRAL OHIO PRIMAR | 910900 | RICHARD G | BAKKER | 1528244357 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10202017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023005 | R410 | Disorientation, unspecified | ICD10 | 10232017 | 10202017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T09:51:06+00:00 |  | 000114228-01 | Gregory | Myers | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10232017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023094 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10222017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T10:10:17+00:00 | 252463717289 | 000023867-01 | JANE | VOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017028 | R58 | Hemorrhage, not elsewhere classified | ICD10 | 10232017 | 10162017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T10:12:38+00:00 | 255112747293 | 000110772-01 | Betty | Greenwood | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023041 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T08:26:11+00:00 |  | 000052402-01 | RUTH | MILLER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023036 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10202017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T09:57:12+00:00 |  | 000106243-01 | Donna | Stanley | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023106 | T18108A | Unsp foreign body in esophagus causing oth injury, init | ICD10 | 10232017 | 10202017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T15:03:00+00:00 |  | 000060448-01 | LENORA | WILLIAMS | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10212017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023134 | I200 | Unstable angina | ICD10 | 10232017 | 10212017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:58:04+00:00 | 264988217293 | 000107757-01 | David | Miller | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023068 | R109 | Unspecified abdominal pain | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T10:27:29+00:00 |  | 000119358-01 | Joanie | Carpenter | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10202017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023117 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10202017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T15:02:40+00:00 |  | 000078385-01 | Jo | Evilsizor | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10232017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10182017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020079 | K651 | Peritoneal abscess | ICD10 | 10232017 | 10182017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T05:54:45+00:00 |  | 000092211-01 | Mary | White | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10232017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019037 | Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 10232017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T17:36:05+00:00 |  | 000080436-01 | Joseph | Snyder | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10172017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018007 | J90, R748, R7989, S0101XA, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 10232017 | 10172017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T09:59:42+00:00 | 254232847293 | 000078465-01 | Edward | Gabriel | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023039 | N179 | Acute kidney failure, unspecified | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T10:56:52+00:00 | 252284737294 | 000058671-01 | RICHARD | SEIPEL | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10212017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023069 | R1310 | Dysphagia, unspecified | ICD10 | 10232017 | 10212017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T08:46:07+00:00 |  | 000112009-01 | James | Prater | THE CHRIST HSP MED ASSOC | 949388 | MATTHEW R | BISCOTTI | 1932233129 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 10232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10212017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023066 | E875 | Hyperkalemia | ICD10 | 10232017 | 10212017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:45:32+00:00 | 252031817293 | 000106890-01 | James | McNeal Sr | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10232017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023062 | I509 | Heart failure, unspecified | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T09:31:41+00:00 | 251351627293 | 000007563-01 | BETTY | BAKER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023025 | E162 | Hypoglycemia, unspecified | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T10:41:04+00:00 | 251979317293 | 000030071-01 | IDA | LYNCH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10232017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023058 | R079 | Chest pain, unspecified | ICD10 | 10232017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
