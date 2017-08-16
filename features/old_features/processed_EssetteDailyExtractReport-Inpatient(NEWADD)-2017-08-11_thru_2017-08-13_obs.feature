Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-11_thru_2017-08-13_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-11_thru_2017-08-13_OBS
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
| 07262017 | 2017-07-26T10:00:22+00:00 |  | 000079336-01 | Marjorie | McPherson | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170801119456.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726054 | R748 | Abnormal levels of other serum enzymes | ICD10 | 08112017 | 07252017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T16:19:34+00:00 |  | 000045979-01 | LEWIS | FENTON | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08102017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810075 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 08112017 | 08102017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T09:47:26+00:00 | 251778027217 | 000067121-01 | Robert | Hickman IV | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08052017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807020 | K5669 | Other intestinal obstruction | ICD10 | 08112017 | 08052017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08082017 | 2017-08-08T08:58:45+00:00 | 254145247219 | 000001895-01 | HOWARD | BAILEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08072017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808018 | C3490, C679, N1330, T83192A | Mech compl of urinary stent, initial encounter | ICD10 | 08112017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T14:11:43+00:00 |  | 000110031-01 | Catherine | Mccoy | COSHOCTON COUNTY MEM HSP | 936454 |  | COSHOCTON COUNTY MEMORIAL | 1053398099 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 08112017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08062017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808064 | R079 | Chest pain, unspecified | ICD10 | 08112017 | 08062017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T15:49:23+00:00 | 250978697220 | 000049959-01 | SHARON | ROHL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808105 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08112017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T10:05:50+00:00 | 256068707222 | 000071662-01 | WARNIE | JACKSON | SOUND PHYSICIANS OF OHI | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811014 | R4182 | Altered mental status, unspecified | ICD10 | 08132017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T11:34:48+00:00 |  | 000099839-01 | Dianna | Birt | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 08112017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08042017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807080 | E860, F1110, G9389, I959, N289, R4182 | Altered mental status, unspecified | ICD10 | 08112017 | 08042017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08092017 | 2017-08-09T16:57:01+00:00 |  | 000089646-01 | Zaida | Morgan | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810029 | R110, R531, R55 | Syncope and collapse | ICD10 | 08112017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T09:58:47+00:00 | 163049877222 | 000057353-01 | FURL | HORSLEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811012 | R079 | Chest pain, unspecified | ICD10 | 08132017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T09:23:18+00:00 | 265666697221 | 000073280-01 | Larry | Hardbarger | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08092017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810022 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08132017 | 08092017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08102017 | 2017-08-10T08:10:14+00:00 | 259545197221 | 000020218-01 | DEBORAH | MORGAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08092017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810005 | N179 | Acute kidney failure, unspecified | ICD10 | 08112017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T14:50:23+00:00 | 025094025-7193 | 000010808-01 | CARMELLA | ROCK | MOUNT CARMEL HLTH PRVDRS | 926743 | LORI | WITTER | 1164474268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08092017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810065 | K625 | Hemorrhage of anus and rectum | ICD10 | 08112017 | 08092017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T08:11:49+00:00 |  | 000099565-01 | Bonnie | Foster | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08072017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809011 | L03818 | Cellulitis of other sites | ICD10 | 08112017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08082017 | 2017-08-08T09:53:03+00:00 | 250169467219 | 000089328-01 | Patricia | Cooperider | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 08072017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808030 | R0600 | Dyspnea, unspecified | ICD10 | 08112017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08102017 | 2017-08-10T16:21:28+00:00 |  | 000069723-01 | GINNY | HAAS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811075 | H9201, H9211 | Otorrhea, right ear | ICD10 | 08132017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T11:37:33+00:00 |  | 000077823-01 | Susan | Freyhof | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 08112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08042017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807081 | I5023, R0602, R079 | Chest pain, unspecified | ICD10 | 08112017 | 08042017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08112017 | 2017-08-11T13:49:27+00:00 | 025061023-7220 | 000072413-01 | George | Kelly | MOUNT CARMEL HLTH PRVDRS | 902101 | JOSEPH S | WINCHELL | 1598706632 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811054 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 08112017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08132017 | 2017-08-13T17:01:55+00:00 |  | 000015301-01 | BETTY | MCKOWN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08132017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08112017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170813002 | I4891 | Unspecified atrial fibrillation | ICD10 | 08132017 | 08112017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T11:45:16+00:00 |  | 000111104-01 | Judy | Worthington | APOGEE MED GRP OHIO INC | 945268 | SEGUN P | ADEOYE | 1629418025 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810055 | R55 | Syncope and collapse | ICD10 | 08112017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T10:02:55+00:00 | 255069627222 | 000022086-01 | LYNNETTE | LEGG | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811013 | I4891 | Unspecified atrial fibrillation | ICD10 | 08112017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T11:13:42+00:00 | 177512617219 | 000070452-01 | Carol | Mayes | SOUND PHYSICIANS OF OHI | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808063 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08112017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T13:46:32+00:00 |  | 000092910-01 | Jonathan | Brown | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Post-Service | POST |  | FAIRFIELD MEDICAL CENTER | 08112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170803070 | E1310, R112 | Nausea with vomiting, unspecified | ICD10 | 08112017 | 06132017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T09:52:45+00:00 | 250490277216 | 000038827-01 | BARBARA | HUTTON | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08112017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08042017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807022 | R55 | Syncope and collapse | ICD10 | 08112017 | 08042017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
