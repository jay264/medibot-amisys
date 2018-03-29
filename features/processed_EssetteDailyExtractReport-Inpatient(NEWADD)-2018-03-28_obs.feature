Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_OBS
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
| 03232018 | 2018-03-23T13:13:57+00:00 |  | 000027253-01 | RACHEL | SYKES | CEN OH PRIMARY CARE SPEC | 908066 | BHAIRAVI M | PATEL | 1740381532 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03212018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323030 | I639 | Cerebral infarction, unspecified | ICD10 | 03282018 | 03212018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03232018 | 2018-03-23T13:18:34+00:00 |  | 000019011-01 | PHYLLIS | SHEETS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03222018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323031 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03282018 | 03222018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T08:38:44+00:00 |  | 000096425-01 | Linda | Dinnell | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328006 | R109 | Unspecified abdominal pain | ICD10 | 03282018 | 03232018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T08:43:36+00:00 |  | 000064272-01 | LEO | STARR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | THE TIMKEN COMPANY | Fax | Observation | Inpatient | 03232018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328007 | L03211 | Cellulitis of face | ICD10 | 03282018 | 03232018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T14:18:35+00:00 |  | 000115822-01 | SANFORD | WOHLSTEIN | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321068 | R0600 | Dyspnea, unspecified | ICD10 | 03282018 | 03202018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T08:23:50+00:00 |  | 000010951-01 | ORA | PAYNE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322004 | S22080K | Wedge comprsn fx T11-T12 vertebra, subs for fx w nonunion | ICD10 | 03282018 | 03202018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T14:12:37+00:00 |  | 000090196-01 | Felicia | Whaley | RHEE, CHOO Y | 937376 | CHOO Y | RHEE | 1336218510 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322044 | R0602, R079 | Chest pain, unspecified | ICD10 | 03282018 | 03212018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03232018 | 2018-03-23T09:09:55+00:00 |  | 000006027-01 | JOHN | MASSARA | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323008 | H8149, N179 | Acute kidney failure, unspecified | ICD10 | 03282018 | 03222018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03232018 | 2018-03-23T13:09:31+00:00 |  | 000038808-01 | LARRY | MITTMAN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03212018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323029 | R6889 | Other general symptoms and signs | ICD10 | 03282018 | 03212018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03242018 | 2018-03-24T13:22:35+00:00 |  | 000027643-01 | ROGER | HILEMON | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326017 | I2699, I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 03282018 | 03232018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03252018 | 2018-03-25T10:41:32+00:00 |  | 000017164-01 | RUTH | HOLBROOK | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326036 | A419, G9341, N390 | Urinary tract infection, site not specified | ICD10 | 03282018 | 03232018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T07:35:48+00:00 |  | 000101554-01 | Shirley | Dunlavy | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326053 | R5383, R7989, R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 03282018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T13:36:00+00:00 |  | 000059431-01 | JUDITH | DAILEY | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327028 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 03282018 | 03252018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T07:20:04+00:00 |  | 000112746-01 | Ronald | Redden | HOSPITALIST MEDICINE PHY | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319048 | K922, R791 | Abnormal coagulation profile | ICD10 | 03282018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T08:14:01+00:00 |  | 000088387-01 | John | Holt | INFINITY HLTHCARE PHYS S | 928078 | WILLIAM T | TUCKER | 1063440949 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319057 | J189 | Pneumonia, unspecified organism | ICD10 | 03282018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T16:45:08+00:00 |  | 000119695-01 | Lester | Ellis | HOSPITALIST MEDICINE PHY | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03192018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320024 | R040, R791 | Abnormal coagulation profile | ICD10 | 03282018 | 03192018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03232018 | 2018-03-23T11:02:23+00:00 |  | 000113872-01 | Margaret | Stuhlreyer | HOSPITAL MEDICINE SERVIC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03222018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323041 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 03282018 | 03222018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03232018 | 2018-03-23T13:28:04+00:00 |  | 000093417-01 | Marilyn | Darling | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03282018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03222018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323053 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 03222018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03262018 | 2018-03-26T16:59:55+00:00 |  | 000026145-01 | MARCELLA | PUCKETT | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327055 | R109, K56609 | K56609 | ICD10 | 03282018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T11:47:55+00:00 |  | 000033468-01 | RONALD | FINK | LICKING MEM HLTH PROF | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Post-Service | POST |  | LICKING MEMORIAL HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10272017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A180327091 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 10272017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T08:22:25+00:00 |  | 000003665-01 | PHYLLIS | TILLETT | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328002 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03282018 | 03242018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T08:25:52+00:00 |  | 000070943-01 | Gary | Binegar | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328004 | N390 | Urinary tract infection, site not specified | ICD10 | 03282018 | 03242018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T08:33:32+00:00 |  | 000002359-01 | MARILYN | BURKE | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328005 | L03818 | Cellulitis of other sites | ICD10 | 03282018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T09:20:37+00:00 |  | 000008964-01 | Richard | Hensley Jr | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328013 | R55 | Syncope and collapse | ICD10 | 03282018 | 03252018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T09:26:55+00:00 |  | 000032673-01 | PAUL | COLEMAN | EMERGENCY SERVICES INC | 939769 | RYAN G | HARTMAN | 1730479304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328015 | R1310 | Dysphagia, unspecified | ICD10 | 03282018 | 03242018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T09:27:18+00:00 |  | 000064656-01 | GEORGE | LASSEL | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328016 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03282018 | 03252018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:31:11+00:00 |  | 000026881-01 | IRMA | GREEN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328018 | T18120A | Food in esophagus causing compression of trachea, init | ICD10 | 03282018 | 03232018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T09:34:02+00:00 |  | 000092873-01 | Thelma | Little | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328019 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03242018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:35:12+00:00 |  | 000044945-01 | CAROL | EYERLY | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03212018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328020 | G40909 | Epilepsy, unsp, not intractable, without status epilepticus | ICD10 | 03282018 | 03212018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:38:10+00:00 |  | 000041145-01 | CAROL | GILKERSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328021 | R079 | Chest pain, unspecified | ICD10 | 03282018 | 03242018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T09:40:28+00:00 |  | 000010884-01 | BOB | ARNETT | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328023 | R296 | Repeated falls | ICD10 | 03282018 | 03222018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T09:44:58+00:00 |  | 000003645-01 | FRANCIS | BARRETT | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328024 | R079 | Chest pain, unspecified | ICD10 | 03282018 | 03232018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T09:48:19+00:00 |  | 000050296-01 | PATRICIA | KLINEDINST | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328025 | R079 | Chest pain, unspecified | ICD10 | 03282018 | 03232018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T10:48:03+00:00 |  | 000076641-01 | Joseph | Warden | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328043 | I4891, R079 | Chest pain, unspecified | ICD10 | 03282018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
