Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_OBS
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
| 06052017 | 2017-06-05T10:47:56+00:00 |  | 000032522-01 | RICHARD | ARMSTRONG | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605083 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 07142017 | 07102017 | 07132017 | 23473, 23474 | REVIS RECONST SHOULDER JOINT | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06102017 | 2017-06-10T15:51:22+00:00 |  | 000089576-01 | Harriet | Wylie | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06092017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170615110571.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612020 | I4891, K51919, R197 | Diarrhea, unspecified | ICD10 | 07162017 | 06092017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T15:18:08+00:00 |  | 000080085-01 | Joyce | North | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706104 | R29818 | Other symptoms and signs involving the nervous system | ICD10 | 07142017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07092017 | 2017-07-09T07:38:16+00:00 |  | 000076545-01 | Gloria | Carle | HMP OF OHIO PC | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07072017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710012 | M545, R262, R296, S32000A, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 07142017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T10:19:08+00:00 | 250105387190 | 000025902-01 | DONNA | PENROD | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710033 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07142017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T10:39:04+00:00 | 163803897188 | 000004154-01 | YOSHIKO | VORHES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07082017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710045 | R531 | Weakness | ICD10 | 07142017 | 07082017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T10:33:32+00:00 |  | 000075916-01 | Arthur | Cox | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07092017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710065 | R609 | Edema, unspecified | ICD10 | 07142017 | 07092017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T09:47:09+00:00 | 251474777191 | 000033635-01 | HENRY | COUGHLIN II | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711003 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07142017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07112017 | 2017-07-11T10:13:57+00:00 | 253654097192 | 000072620-01 | BRENDA | CURRY | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711008 | R42 | Dizziness and giddiness | ICD10 | 07142017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07112017 | 2017-07-11T10:17:49+00:00 | 251595917191 | 000070258-01 | John | Dunn | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711010 | B179 | Acute viral hepatitis, unspecified | ICD10 | 07142017 | 07102017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T10:28:19+00:00 |  | 000069522-01 | HELEN | VANMETER | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07082017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711013 | R296 | Repeated falls | ICD10 | 07142017 | 07082017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07112017 | 2017-07-11T10:37:38+00:00 | 258632367191 | 000068548-01 | DONNA | FOOR | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711015 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 07142017 | 07102017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T12:50:17+00:00 |  | 000114933-01 | Stephen | Cornes | THE CHRIST HSP MED ASSOC | 948647 | PHILIP L | WEISFELDER | 1043285224 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07072017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711034 | R55 | Syncope and collapse | ICD10 | 07142017 | 07072017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T08:55:51+00:00 |  | 000080484-01 | Cindy | Mount | GENESIS MEDICAL GRP LLC | 918994 | PATRICK W | RENAUD | 1548296833 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711050 | R4182 | Altered mental status, unspecified | ICD10 | 07142017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07112017 | 2017-07-11T10:41:17+00:00 |  | 000106059-01 | Janice | Moreland | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711053 | R0602 | Shortness of breath | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T10:41:15+00:00 |  | 000046875-01 | RONALD | SEYMOUR | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711073 | J189, R0602 | Shortness of breath | ICD10 | 07142017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T09:28:55+00:00 |  | 000095564-01 | Gary | Waggle | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712045 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07142017 | 07122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07122017 | 2017-07-12T09:28:39+00:00 |  | 000103209-01 | Esther | Edwards | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712054 | R4182 | Altered mental status, unspecified | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T08:44:38+00:00 |  | 000116956-01 | Bradford | Beverly | HMP OF OHIO PC | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712055 | D6489 | Other specified anemias | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T16:25:36+00:00 |  | 000085036-01 | Lloyd | Soard | MERCY HEALTH PHYSICIANS | 921134 | RAJINDER P | SINGH | 1184758799 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712086 | I4892, I739, I951, R339 | Retention of urine, unspecified | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07122017 | 2017-07-12T15:30:09+00:00 |  | 000110030-01 | Barry | Frazier | FAIRFIELD HSPISTS INC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712088 | J189 | Pneumonia, unspecified organism | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07122017 | 2017-07-12T13:59:51+00:00 |  | 000032861-01 | CONNIE | SMITH | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713003 | I10, R4701 | Aphasia | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07132017 | 2017-07-13T09:54:09+00:00 | 164909937194 | 000057590-01 | GEORGE | GRIFFITH | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713023 | R079 | Chest pain, unspecified | ICD10 | 07142017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T10:11:11+00:00 | 253906717194 | 000078761-01 | Patricia | Posner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07132017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713029 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 07142017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T10:14:31+00:00 | 251252987193 | 000036782-01 | ELLENIA | WALTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713030 | G939 | Disorder of brain, unspecified | ICD10 | 07142017 | 07122017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T07:31:28+00:00 |  | 000044711-01 | JULIE | SMITH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713036 | I10, R079 | Chest pain, unspecified | ICD10 | 07142017 | 07122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T10:25:46+00:00 |  | 000084556-01 | Virginia | Winsor | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713055 | R079 | Chest pain, unspecified | ICD10 | 07142017 | 07122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T10:56:56+00:00 |  | 000076259-01 | Martina | Bowers | GENESIS MEDICAL GRP LLC | 928371 | ROY J | PETERS | 1063701035 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07122017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713057 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07142017 | 07122017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T11:23:02+00:00 | 257676357194 | 000033126-01 | PAUL | DOPPES | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714033 | E876 | Hypokalemia | ICD10 | 07142017 | 07142017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T12:34:44+00:00 | 251915947194 | 000023929-01 | CLARENCE | KELLAR JR | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714035 | I959 | Hypotension, unspecified | ICD10 | 07142017 | 07142017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T09:55:46+00:00 |  | 000079236-01 | Judith | Krehel | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714055 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07142017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T16:25:33+00:00 | 025031999-7194 | 000032692-01 | CARL | EVANS | COPC CENTRAL OHIO PRIMAR | 905458 | GIDEON L | KING | 1548255367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07132017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714077 | R7881 | Bacteremia | ICD10 | 07142017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
