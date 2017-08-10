Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_OBS
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
| 08092017 | 2017-08-09T10:08:47+00:00 | 165810207220 | 000104220-01 | Judith | Riggs | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809025 | I82412 | Acute embolism and thrombosis of left femoral vein | ICD10 | 08092017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T11:05:40+00:00 | 178293107219 | 000086878-01 | Penny | Durben | SOUND PHYSICIANS OF OHI | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808058 | J95821 | Acute postprocedural respiratory failure | ICD10 | 08092017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T12:37:41+00:00 |  | 000082273-01 | Larry | Bowles | GENESIS MEDICAL GRP LLC | 929175 | YORAM | MOYAL | 1194730580 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08092017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08062017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807082 | C259, L03115, R188 | Other ascites | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T08:32:22+00:00 |  | 000083464-01 | Michael | Gordon | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08022017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803034 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 08092017 | 08022017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07252017 | 2017-07-25T09:35:58+00:00 |  | 000083416-01 | Lillian | Collopy | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725084 | R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 08092017 | 07242017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T13:53:55+00:00 |  | 000070147-01 | Fred | Wooten | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08042017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808053 | R079 | Chest pain, unspecified | ICD10 | 08092017 | 08042017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T09:04:24+00:00 | 025088268-7218 | 000071356-01 | Charles | Padrutt | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08062017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807006 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T10:49:05+00:00 | 253734547218 | 000062766-01 | MARY | MARTIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08062017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807043 | N390, R451 | Restlessness and agitation | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T10:55:32+00:00 |  | 000092088-01 | Paul | Krause | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08062017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808034 | R5383 | Other fatigue | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T09:13:29+00:00 | 250045547219 | 000072838-01 | Sandra | Bayes | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808021 | R079 | Chest pain, unspecified | ICD10 | 08092017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07252017 | 2017-07-25T13:20:34+00:00 |  | 000116277-01 | Byron | Johnson | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07242017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725108 | S81811A | Laceration w/o foreign body, right lower leg, init encntr | ICD10 | 08092017 | 07242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T07:37:24+00:00 |  | 000000385-01 | NORMA | BEBART | SOUND PHYSICIANS OF OHI | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802055 | I10, I69392 | Facial weakness following cerebral infarction | ICD10 | 08092017 | 07302017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T12:08:35+00:00 |  | 000075995-01 | Kenneth | Ruprecht | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802088 | C9002, J189 | Pneumonia, unspecified organism | ICD10 | 08092017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T07:35:13+00:00 |  | 000104981-01 | Mary | Ellwood | MED ASSOCS OF CAMBRIDGE | 922079 | DOUGLAS | RUSH | 1467457846 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719048 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08092017 | 07182017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T10:49:48+00:00 | 025636988-7220 | 000036686-01 | JEAN | CARROLL | VICTORIAN VILLAGE INTL M | 936987 | JULIE L | KALB | 1982715389 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809033 | S62109A | Fracture of unsp carpal bone, unsp wrist, init for clos fx | ICD10 | 08092017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08032017 | 2017-08-03T10:43:53+00:00 |  | 000056263-01 | Linda | Hoskins | SOUND INPATIENT PHYS OF | 915463 | GRETZEL C | KING | 1912990730 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08032017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803040 | C8589 | Oth types of non-hodg lymph, extrnod and solid organ sites | ICD10 | 08092017 | 08032017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T09:44:10+00:00 |  | 000112388-01 | FREDA | GASKINS | THE CHRIST HOSPITAL | 936476 |  | THE CHRIST HOSPITAL | 1780633289 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07212017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721063 | N1330 | Unspecified hydronephrosis | ICD10 | 08092017 | 07212017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06192017 | 2017-06-19T13:39:37+00:00 |  | 000085068-01 | Elke | Ferneding | MERCY HEALTH PHYSICIANS | 921830 | SAMER S | HASAN | 1710982053 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08092017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08092017 | 10082017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619103 | T84020A | Dislocation of internal right hip prosthesis, init encntr | ICD10 | 08092017 | 06202017 | 06222017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  | 2.0 |
| 08082017 | 2017-08-08T08:38:11+00:00 |  | 000030085-01 | JOHN | GERMAINE | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808009 | I4891 | Unspecified atrial fibrillation | ICD10 | 08092017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T08:54:39+00:00 | 167266937219 | 000029365-01 | CHARLENE | POTTS | ROTHERMEL JR, WILLIAM S | 935697 | WILLIAM S | ROTHERMEL JR | 1083668362 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808012 | G809 | Cerebral palsy, unspecified | ICD10 | 08092017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T13:54:16+00:00 |  | 000055928-01 | IRVIN | HENDERSON | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07232017 | 07252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726064 | R6889 | Other general symptoms and signs | ICD10 | 08092017 | 07232017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07062017 | 2017-07-06T07:57:15+00:00 |  | 000010601-01 | D | MILES | SOUND PHYSICIANS OF OHI | 924167 | JONG H | LEE | 1093961120 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706059 | R197 | Diarrhea, unspecified | ICD10 | 08092017 | 07052017 | 07082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07252017 | 2017-07-25T08:39:10+00:00 |  | 000070336-01 | Freda | Kehrer | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07242017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725074 | R1031 | Right lower quadrant pain | ICD10 | 08092017 | 07242017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T10:33:58+00:00 | 2506865187218 | 000059206-01 | EARLINE | LINVILLE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08062017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807039 | E860, E876, M549, N179 | Acute kidney failure, unspecified | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T15:31:36+00:00 |  | 000050285-01 | GWENDOLYN | SALYERS | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809073 | R079 | Chest pain, unspecified | ICD10 | 08092017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08082017 | 2017-08-08T08:46:07+00:00 |  | 000075469-01 | Harold | Shultz | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08072017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808010 | I4891 | Unspecified atrial fibrillation | ICD10 | 08092017 | 08072017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T14:50:25+00:00 | 250534277220 | 000106962-01 | Rose | Harvey | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808089 | R079 | Chest pain, unspecified | ICD10 | 08092017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T10:48:42+00:00 |  | 000040702-01 | Boyd | Johnson | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731082 | E871, I509 | Heart failure, unspecified | ICD10 | 08092017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
