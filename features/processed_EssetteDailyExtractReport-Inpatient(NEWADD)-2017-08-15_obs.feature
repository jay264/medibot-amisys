Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-15_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-15_OBS
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
| 08142017 | 2017-08-14T10:30:46+00:00 | 252412587225 | 000006679-01 | Ruby | Tippie | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08132017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814038 | S060X0A | Concussion without loss of consciousness, initial encounter | ICD10 | 08152017 | 08132017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T10:30:23+00:00 | 253171977225 | 000011709-01 | MICHAEL | LOSACCO | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08132017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814037 | R404 | Transient alteration of awareness | ICD10 | 08152017 | 08132017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08102017 | 2017-08-10T11:09:39+00:00 |  | 000043174-01 | WILLIAM | WINNIESTAFFER | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810045 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08152017 | 08112017 | 08142017 | 34812, 34825, 34802, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:42:10+00:00 | 264969917223 | 000097623-01 | Romaine | Skaggs | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814044 | E785 | Hyperlipidemia, unspecified | ICD10 | 08152017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T09:37:37+00:00 | 250841997225 | 000090278-01 | Mary | Neal | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08132017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814018 | R42 | Dizziness and giddiness | ICD10 | 08152017 | 08132017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T10:53:20+00:00 | 251269627223 | 000001834-01 | ARNOLD | WENGERT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814050 | R471 | Dysarthria and anarthria | ICD10 | 08152017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:50:49+00:00 | 251250697223 | 000015215-01 | LOUISE | WALKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814049 | I639 | Cerebral infarction, unspecified | ICD10 | 08152017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:33:15+00:00 | 252877017224 | 000072767-01 | Sharon | Maul | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08132017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814039 | R42 | Dizziness and giddiness | ICD10 | 08152017 | 08132017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T09:07:51+00:00 |  | 000081407-01 | Cynthia | Perry | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808087 | S42291A | Oth disp fx of upper end of right humerus, init for clos fx | ICD10 | 08152017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08092017 | 2017-08-09T08:53:54+00:00 |  | 000065207-01 | HAZEL | CURTIS | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809035 | L0390 | Cellulitis, unspecified | ICD10 | 08152017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T14:36:11+00:00 |  | 000116753-01 | Betty | Rogers | MARIETTA MEM HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809071 | I639 | Cerebral infarction, unspecified | ICD10 | 08152017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08102017 | 2017-08-10T08:22:46+00:00 |  | 000098240-01 | Cynthia | Mckinzie | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810037 | R112 | Nausea with vomiting, unspecified | ICD10 | 08152017 | 08102017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T12:37:26+00:00 | 250928267223 | 000017243-01 | TINA | RIFE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814070 | N179 | Acute kidney failure, unspecified | ICD10 | 08152017 | 08112017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T09:31:42+00:00 |  | 000100673-01 | Bonnie | Brown | PULMONARY & CRITICAL CAR | 919921 | JENNIFER K | CLUNE | 1265589113 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628036 | I509, R0602 | Shortness of breath | ICD10 | 08152017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T07:57:23+00:00 |  | 000091696-01 | Vicki | Vigiris | PISATI, SRILAKSHMI | 921449 | SRILAKSHMI | PISATI | 1265494447 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811031 | S42211A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08152017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T09:42:13+00:00 |  | 000045056-01 | CAROLYN | YOUNG | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811055 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T12:31:35+00:00 |  | 000110124-01 | Mary | Franklin | OHIOHEALTH PHYS GRP | 908037 | JEREMY | DAUGHERTY | 1548481799 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07252017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727051 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 07252017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T15:42:16+00:00 | 025696542-7225 | 000012661-01 | SHIRLEY | CONLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814117 | E876 | Hypokalemia | ICD10 | 08152017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T12:18:30+00:00 | 266155437225 | 000069644-01 | PHYLLIS | JOHNSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814063 | K859 | Acute pancreatitis, unspecified | ICD10 | 08152017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T08:35:26+00:00 |  | 000069082-01 | SHARON | MATHIAS | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08072017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808078 | I10 | Essential (primary) hypertension | ICD10 | 08152017 | 08072017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T08:36:24+00:00 |  | 000071346-01 | Marilyn | Oravec | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808079 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T10:09:33+00:00 | 253468157222 | 000102631-01 | Donna | Knapp | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08102017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811015 | L03818 | Cellulitis of other sites | ICD10 | 08152017 | 08102017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08092017 | 2017-08-09T08:55:53+00:00 |  | 000050645-01 | ANNA MAE | ELLIOTT | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809039 | I4891, R002 | Palpitations | ICD10 | 08152017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T11:40:46+00:00 |  | 000115425-01 | MICHAEL | RAY | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08152017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808043 | A419 | Sepsis, unspecified organism | ICD10 | 08152017 | 08062017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08092017 | 2017-08-09T08:57:57+00:00 |  | 000056447-01 | ABE | MILLER | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809042 | I2510, I501 | Left ventricular failure | ICD10 | 08152017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08092017 | 2017-08-09T08:59:50+00:00 |  | 000037651-01 | NAOMI | WAMPLER | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809049 | K5660 | Unspecified intestinal obstruction | ICD10 | 08152017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T16:43:12+00:00 |  | 000107612-01 | Carol | Harner | ALLIANCE PHYSICIANS INC | 914573 | HEATHER L | PULASKI | 1033230354 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08112017 | 08122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810007 | D3910 | Neoplasm of uncertain behavior of unspecified ovary | ICD10 | 08152017 | 08112017 | 08122017 | 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T08:16:26+00:00 |  | 000096266-01 | Danny | Hill | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815086 | R6889 | Other general symptoms and signs | ICD10 | 08152017 | 08142017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T09:06:58+00:00 |  | 000035294-01 | DEANNA | CARROLL | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07262017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726046 | R0600 | Dyspnea, unspecified | ICD10 | 08152017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T10:18:25+00:00 |  | 000118362-01 | CHERYL | KOWALSKI | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08132017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814111 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 08132017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T12:34:38+00:00 | 162921627223 | 000080358-01 | Gilbert | Mcgovern | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814069 | N179 | Acute kidney failure, unspecified | ICD10 | 08152017 | 08112017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08102017 | 2017-08-10T08:18:58+00:00 |  | 000105150-01 | RUTH | PEAKE | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810033 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08152017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08102017 | 2017-08-10T08:17:35+00:00 |  | 000067067-01 | JERRY | SAPP | SOUND PHYSICIANS OF OHI | 943260 | ACHENEF G | MELESE | 1609164136 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08092017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810032 | I509, M6281 | Muscle weakness (generalized) | ICD10 | 08152017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
