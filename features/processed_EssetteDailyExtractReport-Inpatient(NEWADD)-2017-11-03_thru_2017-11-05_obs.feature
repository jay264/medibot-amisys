Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_OBS
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
| 10302017 | 2017-10-30T09:30:13+00:00 | 252843207302 | 000009912-01 | ROSE | HELD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030015 | M25511, I160 | HYPERTENSIVE URGENCY | ICD10 | 11032017 | 10292017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T08:44:17+00:00 |  | 000033301-01 | CAROLYN | JUSTICE | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103009 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T10:19:42+00:00 | 254693477303 | 000028856-01 | PATRICIA | CHESTER | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031033 | I509 | Heart failure, unspecified | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10302017 | 2017-10-30T08:52:05+00:00 |  | 000094048-01 | Frederick | Marshall | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030093 | R000, R0789, R42 | Dizziness and giddiness | ICD10 | 11032017 | 10272017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T09:30:50+00:00 |  | 000090909-01 | Betty | Pfuhl | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103015 | I200, R52 | Pain, unspecified | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T09:34:47+00:00 | 262629927303 | 000065700-01 | ELLIS | MORTON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031017 | K859 | Acute pancreatitis, unspecified | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T10:16:37+00:00 |  | 000011998-01 | WILLIAM | TOOTLE | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016118 | N200, R112 | Nausea with vomiting, unspecified | ICD10 | 11032017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T08:22:21+00:00 |  | 000097603-01 | Margaret | Hock | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10192017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020017 | C50111 | Malignant neoplasm of central portion of right female breast | ICD10 | 11032017 | 10192017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T10:22:05+00:00 |  | 000104785-01 | DONALD | WILLIAMS | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10152017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016121 | M25562 | Pain in left knee | ICD10 | 11032017 | 10152017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T10:13:22+00:00 |  | 000102605-01 | Mark | Smith | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10142017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016114 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 11032017 | 10142017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T07:46:08+00:00 |  | 000007169-01 | PAUL | DELONG | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019021 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 11032017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:31:09+00:00 |  | 000107821-01 | Donna | St Clair | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11022017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102029 | R079 | Chest pain, unspecified | ICD10 | 11032017 | 11022017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T17:19:01+00:00 |  | 000105983-01 | Aster | Newsom | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019015 | R079 | Chest pain, unspecified | ICD10 | 11032017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10192017 | 2017-10-19T07:45:03+00:00 |  | 000112307-01 | Brian | Latham | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019019 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 11032017 | 10182017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T11:03:45+00:00 |  | 000098309-01 | Charles | Alexander | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11032017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102054 | R55 | Syncope and collapse | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:07:22+00:00 | 252212027301 | 000010759-01 | MARY | REA | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10282017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030036 | I4891 | Unspecified atrial fibrillation | ICD10 | 11032017 | 10282017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11022017 | 2017-11-02T09:24:07+00:00 | 179759547306 | 000007880-01 | DELLA | ADAMS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102016 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 11032017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T10:06:10+00:00 |  | 000114619-01 | Janice | Siefert | THE UROLOGY GROUP | 921008 | AARON L | BEY | 1801053483 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11032017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009052 | D4102 | Neoplasm of uncertain behavior of left kidney | ICD10 | 11032017 | 10302017 | 11022017 | 50543 | LAPARO PARTIAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 10162017 | 2017-10-16T08:56:04+00:00 |  | 000003719-01 | JAMES | THACKER | OSU EMERGENCY MED LLC | 907362 | CRAIG | KEY | 1710068044 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10142017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016035 | M549 | Dorsalgia, unspecified | ICD10 | 11032017 | 10142017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10032017 | 2017-10-03T09:09:21+00:00 |  | 000015338-01 | FRANCIS | SMITH | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10022017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003041 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 11032017 | 10022017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T10:27:38+00:00 |  | 000095564-01 | Gary | Waggle | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101032 | R0600 | Dyspnea, unspecified | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:28:40+00:00 |  | 000105307-01 | Timothy | Mowery | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102027 | R079 | Chest pain, unspecified | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T10:16:29+00:00 |  | 000111387-01 | David | Mooter | GENESIS MEDICAL GRP LLC | 909216 | THOMAS H | DIEHL | 1851329528 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031067 | K819 | Cholecystitis, unspecified | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T09:37:10+00:00 | 250157397303 | 000001182-01 | DONALD | BRAMMER | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10302017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031018 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11032017 | 10302017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T07:37:44+00:00 | 251526417306 | 000112407-01 | Cathy | Carr | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11032017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103001 | I2601 | Septic pulmonary embolism with acute cor pulmonale | ICD10 | 11032017 | 11032017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:24:26+00:00 | 257646087302 | 000052378-01 | ROBERT | MASSEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10292017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030042 | A419 | Sepsis, unspecified organism | ICD10 | 11032017 | 10292017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10282017 | 2017-10-28T11:22:31+00:00 |  | 000054475-01 | Thomas | Keane | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11032017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030021 | J189, J449, J9612 | Chronic respiratory failure with hypercapnia | ICD10 | 11032017 | 10272017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:52:50+00:00 | 250960017305 | 000071272-01 | William | Rogers | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102022 | E860 | Dehydration | ICD10 | 11032017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T08:24:43+00:00 | 267194487304 | 000066399-01 | JIMMY | FRALEY | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101001 | R0602 | Shortness of breath | ICD10 | 11032017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T09:24:59+00:00 |  | 000093290-01 | Gary | Allen | ORTHOPEDIC ONE INC | 925417 | CRAIG | DIMITRIS | 1801045364 | ROCHE DIABETES CARE INC | 930184 | 1710980156 | ROCHE DIABETES CARE INC | 1710980156 | Observation | OBSV | Concurrent Review | CONC |  | ROCHE DIABETES CARE INC | 11032017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101013 | M00861 | Arthritis due to other bacteria, right knee | ICD10 | 11032017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T15:38:12+00:00 | 026372998-7304 | 000051849-01 | RICHARD | MOHLER | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10312017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031090 | N139 | Obstructive and reflux uropathy, unspecified | ICD10 | 11032017 | 10312017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
