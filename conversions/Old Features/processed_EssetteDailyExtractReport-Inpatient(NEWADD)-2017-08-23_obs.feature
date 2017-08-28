Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_OBS
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
| 08172017 | 2017-08-17T10:37:33+00:00 |  | 000091222-01 | Benny | Dixon | GEBHART, JAMES E | 901949 | JAMES E | GEBHART | 0 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817046 | Z992 | Dependence on renal dialysis | ICD10 | 08232017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T08:34:30+00:00 |  | 000113308-01 | Larry | Diamond | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08232017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822046 | K9413 | Enterostomy malfunction | ICD10 | 08232017 | 08212017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T09:24:05+00:00 |  | 000102631-01 | Donna | Knapp | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821012 | L03116 | Cellulitis of left lower limb | ICD10 | 08232017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T09:30:44+00:00 | 164491057231 | 000103014-01 | Jacalyn | Beach | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08192017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821015 | K651 | Peritoneal abscess | ICD10 | 08232017 | 08192017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T12:09:04+00:00 |  | 000093417-01 | Marilyn | Darling | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816017 | R079 | Chest pain, unspecified | ICD10 | 08232017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T16:12:20+00:00 |  | 000037842-01 | PATRICIA | RUSS | SOUND PHYSICIANS OF OHI0 | 943369 | SAMVEL | NERSISYAN | 1184982357 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Observation | OBSV | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08182017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822048 | R001 | Bradycardia, unspecified | ICD10 | 08232017 | 08182017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08222017 | 2017-08-22T08:28:01+00:00 | 254779717233 | 000048674-01 | GILBERT | BYERS | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822004 | I200, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08232017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08182017 | 2017-08-18T09:55:43+00:00 | 251770747229 | 000031206-01 | SHIRLEY | HUSTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08172017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818015 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 08232017 | 08172017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T07:53:17+00:00 |  | 000088815-01 | Betty | Wetterer | SOUND KENWOOD HSPISTS OF | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08172017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818051 | I10, N189, R202, R51 | Headache | ICD10 | 08232017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T09:29:59+00:00 | 256164347233 | 000010155-01 | JANE | PEASE | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822024 | R079 | Chest pain, unspecified | ICD10 | 08232017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08222017 | 2017-08-22T10:16:49+00:00 |  | 000109486-01 | Gene | Gregg | SOUND PHYSICIANS OF OHI0 | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08222017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822088 | R079 | Chest pain, unspecified | ICD10 | 08232017 | 08222017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T09:57:43+00:00 | 252614107230 | 000006724-01 | LOIS | SEWARD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821029 | N179 | Acute kidney failure, unspecified | ICD10 | 08232017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T10:03:26+00:00 | 255043817232 | 000066394-01 | MARJORIE | URBAN | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821034 | I639 | Cerebral infarction, unspecified | ICD10 | 08232017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T10:36:12+00:00 | 251729217231 | 000005785-01 | MIRIAM | GARVER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08192017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821051 | R17 | Unspecified jaundice | ICD10 | 08232017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T11:43:59+00:00 |  | 000093839-01 | Sally | Schwartz | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Post-Service | POST |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06272017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170628050 | Z01812 | Encounter for preprocedural laboratory examination | ICD10 | 08232017 | 06272017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T08:14:42+00:00 |  | 000107578-01 | Margaret | Tiernan | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08232017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08102017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811048 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08232017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T10:29:31+00:00 | 179165717230 | 000051642-01 | DONNA | CODY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08232017 | Approved | MediGold Essential Care | Reports | Secondary Only | Inpatient | 08182017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821044 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 08232017 | 08182017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08212017 | 2017-08-21T11:28:53+00:00 |  | 000053435-01 | DORIS | SPRADLIN | FAM PHYS OF SPRINGFIELD | 907238 | MICHAEL S | MCKEE | 1124043625 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08192017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822047 | E860, E875, N3000, R739 | Hyperglycemia, unspecified | ICD10 | 08232017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T09:26:56+00:00 | 255028047232 | 000037930-01 | PIERCE | ASBURY | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08202017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821014 | K819 | Cholecystitis, unspecified | ICD10 | 08232017 | 08202017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T12:01:51+00:00 |  | 000066749-01 | CHARLES | ALCORN | MIAMI VALLEY HSPISTS GRP | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08232017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 08182017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821115 | R739 | Hyperglycemia, unspecified | ICD10 | 08232017 | 08182017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T12:49:41+00:00 |  | 000083708-01 | Frances | Cooper | STONY BROOK INTERNISTS U | 939704 | WILLIAM E | LAWSON | 1013932250 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08232017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08222017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823015 | N3000, R748 | Abnormal levels of other serum enzymes | ICD10 | 08232017 | 08222017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
