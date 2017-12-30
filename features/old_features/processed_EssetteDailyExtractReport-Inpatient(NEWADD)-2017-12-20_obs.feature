Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-20_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-20_OBS
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
| 12152017 | 2017-12-15T12:55:05+00:00 |  | 000115935-01 | Clarence | Harper | MARIETTA HLTH CARE PHYS | 932956 | GOYAL | AMANDEEP | 1710273248 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215056 | I509, J90, N179, N390 | Urinary tract infection, site not specified | ICD10 | 12202017 | 12142017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T09:11:30+00:00 |  | 000080997-01 | James | Pierce | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127148 | R42 | Dizziness and giddiness | ICD10 | 12202017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T09:00:53+00:00 |  | 000117472-01 | GLORIA | BROWN | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218113 | R079 | Chest pain, unspecified | ICD10 | 12202017 | 12172017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11292017 | 2017-11-29T14:46:35+00:00 |  | 000078789-01 | Floren | Dickerson | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11282017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130006 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12202017 | 11282017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T09:39:43+00:00 | 255998717349 | 000011037-01 | ESTA | BERTA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12152017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215031 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 12202017 | 12152017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12172017 | 2017-12-17T15:08:12+00:00 |  | 000070849-01 | Betty | Coleman | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12152017 | 12172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218062 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12202017 | 12152017 | 12172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T10:53:56+00:00 |  | 000075453-01 | Hubert | King | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12152017 | 12162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218145 | F99 | Mental disorder, not otherwise specified | ICD10 | 12202017 | 12152017 | 12162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12162017 | 2017-12-16T14:45:00+00:00 |  | 000056720-01 | Dorothy | Kadel | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12152017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218035 | I959, R464 | Slowness and poor responsiveness | ICD10 | 12202017 | 12152017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T12:36:22+00:00 |  | 000092416-01 | Edith | Zakel | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129066 | R42 | Dizziness and giddiness | ICD10 | 12202017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12152017 | 2017-12-15T10:08:31+00:00 | 250982837348 | 000086395-01 | Beverly | Ranft | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12142017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215040 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 12202017 | 12142017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T15:45:15+00:00 |  | 000086841-01 | Wilma | Gearhart | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219016 | J189 | Pneumonia, unspecified organism | ICD10 | 12202017 | 12172017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12162017 | 2017-12-16T08:51:19+00:00 |  | 000114913-01 | Jeanette | Poindexter | MERCY HEALTH PHYSICIANS | 921476 | SHARON A | SAX | 1356397608 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12202017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 12152017 | 12162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218022 | R079 | Chest pain, unspecified | ICD10 | 12202017 | 12152017 | 12162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T07:10:54+00:00 |  | 000077207-01 | John | Dotson | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12182017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218083 | R079 | Chest pain, unspecified | ICD10 | 12202017 | 12182017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T09:18:19+00:00 |  | 000005771-01 | JOE | SULLIVAN | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12012017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204072 | D62, N189 | Chronic kidney disease, unspecified | ICD10 | 12202017 | 12012017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12192017 | 2017-12-19T08:24:30+00:00 |  | 000076685-01 | Delores | Huhn | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219078 | N390 | Urinary tract infection, site not specified | ICD10 | 12202017 | 12192017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12192017 | 2017-12-19T08:24:29+00:00 |  | 000074455-01 | George | Steimer | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12182017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219076 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12202017 | 12182017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T15:36:59+00:00 |  | 000085185-01 | William | Sark | MAYFIELD CLINIC | 921678 | BRADFORD A | CURT | 1003027392 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 12202017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171106081 | M4807, M48062 | M48062 | ICD10 | 12202017 |  | 11182017 | 63047, 63048, 69990 | MICROSURGERY ADD-ON | CPT | 1, 3, 1 | 1, 3, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12192017 | 2017-12-19T13:37:58+00:00 |  | 000089255-01 | Daniel | Kellis | AJAZ UMERANI MD INC | 902296 |  | AJAZ UMERANI MD INC | 1043587470 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12182017 | 12192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219092 | D649 | Anemia, unspecified | ICD10 | 12202017 | 12182017 | 12192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12052017 | 2017-12-05T08:37:58+00:00 |  | 000072023-01 | Gilbert | Feiertag | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12042017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205027 | V892XXA | Person injured in unsp motor-vehicle accident, traffic, init | ICD10 | 12202017 | 12042017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12072017 | 2017-12-07T09:32:57+00:00 |  | 000105245-01 | Betty | Mccoy | TRAUMA INC | 910892 | URMIL B | PANDYA | 1619137601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12062017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207024 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 12202017 | 12062017 | 12072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T09:31:37+00:00 |  | 000087719-01 | Joseph | Welch | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12092017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211075 | R531 | Weakness | ICD10 | 12202017 | 12092017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08172017 | 2017-08-17T14:52:38+00:00 |  | 000115398-01 | Lawrence | Cosby | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817057 | C61 | Malignant neoplasm of prostate | ICD10 | 12202017 | 09262017 | 09282017 | 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12192017 | 2017-12-19T14:59:11+00:00 | 256601357353 | 000053930-01 | CHARLES | MANGUS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219094 | I4891 | Unspecified atrial fibrillation | ICD10 | 12202017 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T14:07:00+00:00 |  | 000098132-01 | Robert | Bateman | GENESIS MEDICAL GRP LLC | 905767 | JEFFREY S | LOBEL | 1366465346 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128048 | M4316, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 12202017 | 12112017 | 12142017 | 22558, 22846, 22853, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 12122017 | 2017-12-12T08:28:41+00:00 |  | 000085030-01 | R Isabelle | Ruff | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12112017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212042 | R079 | Chest pain, unspecified | ICD10 | 12202017 | 12112017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T14:33:50+00:00 | 256440267353 | 000047776-01 | BOYCE | BARRY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12192017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219093 | I200 | Unstable angina | ICD10 | 12202017 | 12192017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12132017 | 2017-12-13T08:36:13+00:00 |  | 000108774-01 | Edward | Blackston | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213036 | R001 | Bradycardia, unspecified | ICD10 | 12202017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T07:40:38+00:00 |  | 000043611-01 | DAVID | PLACE | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12162017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218091 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 12202017 | 12162017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T09:47:02+00:00 | 254336837351 | 000015849-01 | LUCILLE | DEAN | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218023 | R109 | Unspecified abdominal pain | ICD10 | 12202017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T11:00:25+00:00 |  | 000079976-01 | Beverly | Mayhugh | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12092017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211094 | E875, K7469, R748 | Abnormal levels of other serum enzymes | ICD10 | 12202017 | 12092017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12192017 | 2017-12-19T09:51:47+00:00 | 250126797352 | 000098462-01 | Cheryl | Kilroy | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12202017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219048 | I4892 | Unspecified atrial flutter | ICD10 | 12202017 | 12182017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T14:57:31+00:00 |  | 000108926-01 | Marc | Blumberg | PULMONARY MED OF DAYTON | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12152017 | 12172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219015 | J181, J449, R000 | Tachycardia, unspecified | ICD10 | 12202017 | 12152017 | 12172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T08:38:23+00:00 |  | 000076396-01 | Robert | Garey | CEN OH PLASTIC SURG INC | 902335 | JASON B | LICHTEN | 1871586180 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213041 | C4442 | Squamous cell carcinoma of skin of scalp and neck | ICD10 | 12202017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T08:37:18+00:00 |  | 000055320-01 | GWENDOLYN | CAPPS | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213040 | R471 | Dysarthria and anarthria | ICD10 | 12202017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T10:07:56+00:00 | 180386907352 | 000113609-01 | Michael | Smallwood | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219058 | N492 | Inflammatory disorders of scrotum | ICD10 | 12202017 | 12182017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12132017 | 2017-12-13T08:40:32+00:00 |  | 000080662-01 | Robert | Kelling | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213044 | E873 | Alkalosis | ICD10 | 12202017 | 12122017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T16:22:20+00:00 |  | 000101031-01 | Wanda | Izor | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219069 | A419, N390, R319, R7881 | Bacteremia | ICD10 | 12202017 | 12162017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12182017 | 2017-12-18T16:16:59+00:00 |  | 000090367-01 | Marilyn | Kunz | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12202017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12162017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219068 | A419 | Sepsis, unspecified organism | ICD10 | 12202017 | 12162017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12142017 | 2017-12-14T14:52:18+00:00 |  | 000097726-01 | Marjorie | Kuntz | SOUND INPATIENT PHYS OF | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12202017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12132017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214050 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 12202017 | 12132017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:55:06+00:00 |  | 000117730-01 | Arthur | Valentine | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12202017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219001 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 12202017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |