Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_OBS
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
| 05012018 | 2018-05-01T09:37:20+00:00 |  | 000102117-01 | WILMA | ARNOLD | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501009 | D649, G252, I10, K922, N179, R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 05032018 | 04282018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02212018 | 2018-02-21T10:14:12+00:00 |  | 000084166-01 | James | Marcum | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 05032018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180312160774.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221058 | M19019 | Primary osteoarthritis, unspecified shoulder | ICD10 | 05032018 | 02282018 | 03022018 | 23472, 23335 | SHOULDER PROSTHESIS REMOVAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T15:43:07+00:00 |  | 000066934-01 | ROBERT | OATNEY | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501044 | N183, N390, R4182 | Altered mental status, unspecified | ICD10 | 05032018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03212018 | 2018-03-21T15:09:18+00:00 |  | 000117283-01 | Cindy | Higginson | GREENE MEM HSP SRVS INC | 942200 | ELAINE M | FOGLE | 1326314238 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321090 | K529, R0602 | Shortness of breath | ICD10 | 05032018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04232018 | 2018-04-23T16:31:51+00:00 |  | 000031210-01 | KYOKO | MCKINNEY | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424028 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05032018 | 04222018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T13:34:28+00:00 |  | 000117034-01 | Alan | Haught | PARKERSBURG ORTHO ASSOC | 926024 | JOHN J | MCELROY | 1235105545 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Observation | OBSV | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 05032018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424068 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05032018 | 05012018 | 05022018 | 27446, 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04252018 | 2018-04-25T14:52:21+00:00 |  | 000121282-01 | MARY | CULWELL | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425082 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 05032018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T16:07:37+00:00 |  | 000006369-01 | DONNA | MITCHELL | HOSPITALIST MEDICINE PHY | 904484 | BAHADUR | SHAH | 1912010547 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426065 | I959 | Hypotension, unspecified | ICD10 | 05032018 | 04252018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T16:02:08+00:00 |  | 000062351-01 | JOYCE | RANDOLPH | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426071 | I4891 | Unspecified atrial fibrillation | ICD10 | 05032018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04272018 | 2018-04-27T13:40:28+00:00 |  | 000065011-01 | FREDA | HILL | SOUND INPATIENT PHYS OF | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04252018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427039 | M25559, S3210XA | Unsp fracture of sacrum, init encntr for closed fracture | ICD10 | 05032018 | 04252018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03122018 | 2018-03-12T15:50:53+00:00 |  | 000044147-01 | Dorothy | Imler | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313026 | I161 | HYPERTENSIVE EMERGENCY | ICD10 | 05032018 | 03112018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T11:47:44+00:00 |  | 000112999-01 | Deborah | Foster | ALLIANCE PHYSICIANS INC | 902624 | DAVID L | SCHUMACHER | 1336132547 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319032 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 05032018 | 05012018 | 05022018 | 43775, 43235 | ENDOSCOPY UPPER GI | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04262018 | 2018-04-26T16:01:08+00:00 |  | 000042512-01 | DANNY | MUMMEY | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04252018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426063 | I509 | Heart failure, unspecified | ICD10 | 05032018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272018 | 2018-04-27T13:39:28+00:00 |  | 000083739-01 | Betty | Baxter | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427048 | A419 | Sepsis, unspecified organism | ICD10 | 05032018 | 04262018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04302018 | 2018-04-30T08:21:06+00:00 |  | 000079538-01 | Linda | Weber | ARUNDHATI SHARMA | 953515 | ARUNDHATI | SHARMA | 1790103026 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05032018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04272018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430020 | A419, L03113, R0600 | Dyspnea, unspecified | ICD10 | 05032018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04302018 | 2018-04-30T08:27:44+00:00 |  | 000027436-01 | CAROL | BATES | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430023 | M6289 | Other specified disorders of muscle | ICD10 | 05032018 | 04292018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T11:05:25+00:00 |  | 000113795-01 | Roger | Savage | ADENA MEDICAL GROUP LLC | 944650 | ADERONKE O | ONINKU | 1962631465 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430052 | R0602 | Shortness of breath | ICD10 | 05032018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T13:47:23+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 953499 | VLADIMIR | COTARLAN | 1124294442 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Observation | OBSV | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05032018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430070 | K580, Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 05032018 | 04282018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T12:41:18+00:00 |  | 000116120-01 | Beverly | Sealock | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430086 | L089, L989, R7881 | Bacteremia | ICD10 | 05032018 | 04282018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T10:01:55+00:00 |  | 000081241-01 | Donna | Harris | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 04292018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501014 | R42 | Dizziness and giddiness | ICD10 | 05032018 | 04292018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T14:37:09+00:00 |  | 000077559-01 | Noretta | Rutherford | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501021 | D62, D72829, K922, N390 | Urinary tract infection, site not specified | ICD10 | 05032018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T14:55:30+00:00 |  | 000088182-01 | Carol | Lancaster | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501024 | I4891, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05032018 | 04272018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T11:15:02+00:00 |  | 000077334-01 | Joyce | Shirk | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENT | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501033 | M1712, Z96652 | Presence of left artificial knee joint | ICD10 | 05032018 | 04302018 | 05022018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 05012018 | 2018-05-01T08:19:46+00:00 |  | 000106128-01 | Jane | Hazlett | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501056 | E119, I10, I4891 | Unspecified atrial fibrillation | ICD10 | 05032018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T11:15:46+00:00 |  | 000086040-01 | Colette | Speranza | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502002 | R109, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05032018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T13:58:20+00:00 |  | 000078437-01 | Ray | Elder | SELBY GENERAL HOSPITAL | 936486 |  | SELBY GENERAL HOSPITAL | 1124073465 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Observation | OBSV | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 05032018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502018 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05032018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05012018 | 2018-05-01T13:04:08+00:00 |  | 000029871-01 | LINDA | BURNS | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502021 | M6281 | Muscle weakness (generalized) | ICD10 | 05032018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T13:35:01+00:00 |  | 000107283-01 | Walter | Martin | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502057 | R410 | Disorientation, unspecified | ICD10 | 05032018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T10:32:13+00:00 |  | 000106044-01 | Cheryl | Gearhart | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502061 | R079 | Chest pain, unspecified | ICD10 | 05032018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T15:52:19+00:00 |  | 000063625-01 | SYDNEY | COOK | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502085 | S42302A | Unsp fracture of shaft of humerus, left arm, init | ICD10 | 05032018 | 04282018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T08:42:45+00:00 |  | 000068778-01 | PAMELA | LYNCH | FAIRFIELD HLTHCARE PROFS | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503009 | R0602 | Shortness of breath | ICD10 | 05032018 | 05022018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T12:08:32+00:00 |  | 000113820-01 | Phyllis | Livingston | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 06072018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180503020 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05032018 |  |  | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1 | 1, 1 | Approved Observation, Approved Observation | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 05032018 | 2018-05-03T13:31:42+00:00 |  | 000082111-01 | David | Walters | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05022018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503030 | R079 | Chest pain, unspecified | ICD10 | 05032018 | 05022018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
