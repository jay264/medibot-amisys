Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_OBS
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
| 01312018 | 2018-01-31T10:47:20+00:00 |  | 000085983-01 | William | Walsh | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131028 | J159 | Unspecified bacterial pneumonia | ICD10 | 02132018 | 01282018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02042018 | 2018-02-04T11:17:25+00:00 |  | 000104837-01 | Joseph | Hanning | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205029 | N132, N200 | Calculus of kidney | ICD10 | 02132018 | 02022018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T08:45:24+00:00 |  | 000030483-01 | BECKY | WOLF | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206049 | E43, E876, R4182, R531, R680, T68XXXA | Hypothermia, initial encounter | ICD10 | 02132018 | 02052018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02102018 | 2018-02-10T17:10:40+00:00 |  | 000104837-01 | Joseph | Hanning | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02092018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212031 | G8918 | Other acute postprocedural pain | ICD10 | 02132018 | 02092018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T10:56:50+00:00 |  | 000093310-01 | Jeffery | Groves | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211082 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02132018 | 01292018 | 01312018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01222018 | 2018-01-22T11:55:06+00:00 |  | 000095750-01 | Charles | Vandyne | HMP OF FRANKLIN CTY LTD | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02132018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 01192018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122100 | A047, I69992 | Facial weakness following unsp cerebrovascular disease | ICD10 | 02132018 | 01192018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T11:43:20+00:00 |  | 000106059-01 | Janice | Moreland | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01302018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131061 | J449, R0902 | Hypoxemia | ICD10 | 02132018 | 01302018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02032018 | 2018-02-03T17:40:32+00:00 |  | 000073447-01 | Hillard | Kloda | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205027 | D649, K921 | Melena | ICD10 | 02132018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T08:58:01+00:00 |  | 000073699-01 | Mabel | Anderson | GILLESPIE II, HAROLD A | 900097 | HAROLD A | GILLESPIE II | 1689663130 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205071 | M25572 | Pain in left ankle and joints of left foot | ICD10 | 02132018 | 02042018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T16:36:38+00:00 |  | 000102909-01 | Penny | Riley | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 02032018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206010 | A419, H9203, J449, R0902 | Hypoxemia | ICD10 | 02132018 | 02032018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02062018 | 2018-02-06T15:21:45+00:00 |  | 000022211-01 | MARLENE | HOOVER | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207012 | I509 | Heart failure, unspecified | ICD10 | 02132018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02072018 | 2018-02-07T12:08:06+00:00 |  | 000058323-01 | LUTHER | SWAVELY | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207045 | R296 | Repeated falls | ICD10 | 02132018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T08:47:27+00:00 |  | 000120447-01 | David | Delong | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208017 | N179 | Acute kidney failure, unspecified | ICD10 | 02132018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T08:03:11+00:00 |  | 000059599-01 | CONNIE | HINTON | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208025 | R079 | Chest pain, unspecified | ICD10 | 02132018 | 02072018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T09:27:16+00:00 |  | 000089998-01 | Linda | Stauffer | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209020 | R079 | Chest pain, unspecified | ICD10 | 02132018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T10:56:26+00:00 |  | 000111865-01 | Rolando | Rojas | TRIHEALTH H LLC | 916560 | MICHAEL E | RUDEMILLER | 1396742516 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209033 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02132018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T15:48:18+00:00 |  | 000059583-01 | CHARLES | OTIS | HOLLAND, GREGORY C | 936925 | GREGORY C | HOLLAND | 1316991268 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209080 | S31000A | Unsp opn wnd low back and pelv w/o penet retroperiton, init | ICD10 | 02132018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02092018 | 2018-02-09T17:03:00+00:00 |  | 000005592-01 | RICHARD | WOLF | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212007 | I4891, R0789 | Other chest pain | ICD10 | 02132018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T17:03:42+00:00 |  | 000078740-01 | Ronald | Hinton | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213026 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02132018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T10:59:57+00:00 |  | 000106661-01 | Robert | Baird | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205100 | R0602, R791 | Abnormal coagulation profile | ICD10 | 02132018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T15:09:03+00:00 |  | 000101248-01 | James | Key | S DAYTON ACUTE CARE CNSL | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207026 | E871, J101, N179 | Acute kidney failure, unspecified | ICD10 | 02132018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T12:01:01+00:00 |  | 000022367-01 | ARNOLD | CRABTREE | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209056 | R0600 | Dyspnea, unspecified | ICD10 | 02132018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02102018 | 2018-02-10T18:59:47+00:00 |  | 000037147-01 | LINDA | CLYBURN | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212036 | M48061 | M48061 | ICD10 | 02132018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T06:48:35+00:00 |  | 000098309-01 | Charles | Alexander | MERCY HEALTH PHYSICIANS | 921203 | DAVID | WARD | 1063469443 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 02132018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02112018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212047 | K56609 | K56609 | ICD10 | 02132018 | 02112018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02112018 | 2018-02-11T18:44:14+00:00 |  | 000102479-01 | Patricia | Lewis | MOUNT CARMEL HLTH SYS | 914979 | JORN | KAEVEL | 1275793150 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212059 | N179, N390 | Urinary tract infection, site not specified | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T08:20:14+00:00 |  | 000099402-01 | David | Hopkins | LICKING MEM HLTH PROF | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212061 | R1111 | Vomiting without nausea | ICD10 | 02132018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T08:48:52+00:00 |  | 000109704-01 | David | Wilson | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212074 | I2699, R079 | Chest pain, unspecified | ICD10 | 02132018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T13:33:54+00:00 |  | 000049628-01 | KAREN | SPRADLIN | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212100 | I739 | Peripheral vascular disease, unspecified | ICD10 | 02132018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T12:09:46+00:00 |  | 000085626-01 | John | Karr | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212111 | J159 | Unspecified bacterial pneumonia | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T13:24:41+00:00 |  | 000078951-01 | Charles | Martin | KNOX COMMUNITY HOSP GRP | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02112018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212119 | I639 | Cerebral infarction, unspecified | ICD10 | 02132018 | 02112018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T14:44:09+00:00 |  | 000049345-01 | GARY | LACY | SYCAMORE PRIMARY CARE GR | 902589 | ROBERT | SAWYER | 1730160268 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02112018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213012 | K3580 | Unspecified acute appendicitis | ICD10 | 02132018 | 02112018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T15:12:42+00:00 |  | 000117548-01 | Dorothea | Otte | HOSPITALIST MEDICINE PHY | 932447 | OLGA A | MELZER | 1740414283 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02132018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02102018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213013 | R0609, R079 | Chest pain, unspecified | ICD10 | 02132018 | 02102018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02132018 | 2018-02-13T13:28:52+00:00 |  | 000116407-01 | Martin | Campbell | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02132018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02122018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213100 | R042 | Hemoptysis | ICD10 | 02132018 | 02122018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
