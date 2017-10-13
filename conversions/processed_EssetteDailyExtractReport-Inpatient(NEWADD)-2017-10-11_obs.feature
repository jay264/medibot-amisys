Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-11_OBS
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
| 10092017 | 2017-10-09T09:38:13+00:00 | 250553737280 | 000066397-01 | ROBERT | HORN | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009027 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:12:47+00:00 | 251396537280 | 000026904-01 | VIRGINIA | BENTLEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009012 | R55 | Syncope and collapse | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T10:27:16+00:00 | 255521447279 | 000020879-01 | MARGARETTEM | MCDANIEL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009045 | N390 | Urinary tract infection, site not specified | ICD10 | 10112017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09282017 | 2017-09-28T10:53:58+00:00 |  | 000080252-01 | Harriet | Painter | INTERNAL MED CARE INC | 904867 | TROY A | TYNER | 1003814526 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928047 | K5733, K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 10112017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T09:38:18+00:00 | 261290107282 | 000051842-01 | GARRY | BIRD | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 10102017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010007 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10102017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T14:36:59+00:00 |  | 000108244-01 | Norma | Wellspring | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010031 | A419, N1330, N390 | Urinary tract infection, site not specified | ICD10 | 10112017 | 10072017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T10:36:41+00:00 | 250800427282 | 000051903-01 | PEGGY | MOORE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010023 | E875 | Hyperkalemia | ICD10 | 10112017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T09:55:24+00:00 | 251061657280 | 000043199-01 | WAYNE | STERTZER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009036 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09262017 | 2017-09-26T08:36:20+00:00 |  | 000037549-01 | HOMER | WIGET | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09232017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926009 | D649, I10, R54 | Age-related physical debility | ICD10 | 10112017 | 09232017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10032017 | 2017-10-03T08:29:59+00:00 |  | 000088559-01 | Larry | Redd | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10022017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003008 | R0602 | Shortness of breath | ICD10 | 10112017 | 10022017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T13:53:07+00:00 |  | 000066658-01 | THELMA | KENNEY | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10082017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011028 | R6889 | Other general symptoms and signs | ICD10 | 10112017 | 10082017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T11:05:45+00:00 |  | 000116837-01 | Barbara | Smith | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10052017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009100 | I639 | Cerebral infarction, unspecified | ICD10 | 10112017 | 10052017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T09:34:09+00:00 |  | 000045023-01 | C MAXINE | GARRISON | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010024 | I10, R079 | Chest pain, unspecified | ICD10 | 10112017 | 10072017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T11:04:12+00:00 |  | 000040426-01 | Robert | Hunter | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009099 | R4182 | Altered mental status, unspecified | ICD10 | 10112017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T13:10:47+00:00 |  | 000092916-01 | Vicki | Williams | MUSKINGUM VALLEY HLTH CT | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010018 | L03114 | Cellulitis of left upper limb | ICD10 | 10112017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T11:57:29+00:00 |  | 000085074-01 | Susan | Arnold | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10102017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011043 | R6889 | Other general symptoms and signs | ICD10 | 10112017 | 10102017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T14:06:22+00:00 |  | 000053308-01 | IRMA | LEWIS | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010071 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 10112017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T14:04:44+00:00 |  | 000114751-01 | Patsy | Strausburg | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002134 | E860, R5381 | Other malaise | ICD10 | 10112017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T09:11:11+00:00 |  | 000105300-01 | Sarah | Stacy | PULMONARY MED OF DAYTON | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10042017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005025 | R531 | Weakness | ICD10 | 10112017 | 10042017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T15:11:18+00:00 |  | 000099632-01 | Mary | Hinesman | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10032017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004079 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10112017 | 10032017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10042017 | 2017-10-04T10:37:11+00:00 |  | 000065650-01 | PHYLLIS | APPENZELLER | S A GABRIEL DO INC | 912194 | ANDREW H | GABRIEL | 1205990033 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10032017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004043 | S2241XA, S51011A, S8001XA, S8002XA | Contusion of left knee, initial encounter | ICD10 | 10112017 | 10032017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T16:18:39+00:00 | 251495437282 | 000033837-01 | SHIRLEY | CLINE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009113 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T10:13:21+00:00 | 254595357285 | 000046497-01 | ARTHUR | LEWIS | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010015 | L02818 | Cutaneous abscess of other sites | ICD10 | 10112017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10082017 | 2017-10-08T11:38:17+00:00 |  | 000001296-01 | NINA | WAGENER | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009055 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10062017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10032017 | 2017-10-03T08:28:53+00:00 |  | 000108383-01 | BETTY | SMITH | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10022017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003007 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10022017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T09:37:57+00:00 |  | 000098577-01 | Myrna | Hauke | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 10112017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10082017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009074 | I4891, N3000, R079 | Chest pain, unspecified | ICD10 | 10112017 | 10082017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T10:18:19+00:00 |  | 000062695-01 | JAYNE | BLAISDELL | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 08222017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825056 | J159 | Unspecified bacterial pneumonia | ICD10 | 10112017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09222017 | 2017-09-22T09:02:01+00:00 |  | 000058452-01 | PENELOPE | SEIBERT | ORTHO INSTITUTE OF DAYTO | 902696 | JEFFREY S | HOSKINS | 1669471447 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922077 | M4806, M5417 | Radiculopathy, lumbosacral region | ICD10 | 10112017 | 10072017 | 10102017 | 22558, 22845, 22853, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 08292017 | 2017-08-29T10:37:39+00:00 |  | 000086233-01 | Margaret | Kieber | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829081 | G809 | Cerebral palsy, unspecified | ICD10 | 10112017 | 08272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T10:03:41+00:00 |  | 000095787-01 | Clara | Snyder | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911096 | J159 | Unspecified bacterial pneumonia | ICD10 | 10112017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T08:45:33+00:00 |  | 000094214-01 | Jacquelin | Alexander | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10112017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010063 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T15:09:56+00:00 |  | 000105094-01 | JOHN | EMERY JR | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010038 | N179, N183, R42, R748, R791 | Abnormal coagulation profile | ICD10 | 10112017 | 10062017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T16:13:43+00:00 |  | 000083823-01 | John | Schwalbach | SOUND KENWOOD HSPISTS OF | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 10112017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10062017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010048 | R29810 | Facial weakness | ICD10 | 10112017 | 10062017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T11:49:12+00:00 |  | 000089145-01 | Charles | Bussard | GENESIS MEDICAL GRP LLC | 924019 | KAREN E | MURPHY | 1811276058 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011026 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T11:49:20+00:00 |  | 000090547-01 | Evelyn | Childress | GENESIS MEDICAL GRP LLC | 924019 | KAREN E | MURPHY | 1811276058 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011027 | R55 | Syncope and collapse | ICD10 | 10112017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T13:29:03+00:00 |  | 000087007-01 | Janice | Knisley | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010051 | R079, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 10112017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T10:43:37+00:00 | 258961547283 | 000051292-01 | EVELYN | PURSELL | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010028 | E860, R110 | Nausea | ICD10 | 10112017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T15:37:56+00:00 |  | 000071671-01 | Donna | Hilderbran | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10032017 | 12072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005001 | E162, E871 | Hypo-osmolality and hyponatremia | ICD10 | 10112017 | 10032017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T09:55:04+00:00 | 252952037280 | 000040512-01 | FRED | SNIDER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10072017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009037 | R079 | Chest pain, unspecified | ICD10 | 10112017 | 10082017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
