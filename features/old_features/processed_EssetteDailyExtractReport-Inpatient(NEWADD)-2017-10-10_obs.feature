Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-10_OBS
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
| 10092017 | 2017-10-09T08:16:44+00:00 | 250124527279 | 000070869-01 | Charlotte | Barker | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10062017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009007 | N390 | Urinary tract infection, site not specified | ICD10 | 10102017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T10:08:04+00:00 |  | 000101595-01 | Ronald | Bible | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009076 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10062017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T15:53:06+00:00 |  | 000108472-01 | Ann | Kiger | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10052017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009002 | I10, I509, R55 | Syncope and collapse | ICD10 | 10102017 | 10052017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T11:13:05+00:00 |  | 000087369-01 | Dorothy | Shaffer | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10072017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009105 | I4891, J189, R4182 | Altered mental status, unspecified | ICD10 | 10102017 | 10072017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T09:15:00+00:00 |  | 000032717-01 | ROSE | VANBIBBER | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002093 | H532 | Diplopia | ICD10 | 10102017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T13:48:11+00:00 |  | 000110474-01 | Tula | Moody | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10062017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010012 | T84038A | Mechanical loosening of oth internal prosthetic joint, init | ICD10 | 10102017 | 10062017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T13:56:25+00:00 |  | 000112697-01 | CHARLES | VANARSDALE | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10082017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010027 | R6889 | Other general symptoms and signs | ICD10 | 10102017 | 10082017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T08:57:47+00:00 |  | 000033294-01 | PAUL | ROSTOFER | COPC CENTRAL OHIO PRIMAR | 905439 | JASMINE | VARMA | 1821136284 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10012017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002077 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10012017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192017 | 2017-04-19T13:11:46+00:00 |  | 000043610-01 | Rose | Rodgers | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04112017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170424097464.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419073 | D649, D72829, E872, K922, R1084 | Generalized abdominal pain | ICD10 | 10102017 | 04172017 | 04202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T10:00:25+00:00 |  | 000076110-01 | Lucy | Biondo | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09292017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002040 | E871, I10, I200, R911 | Solitary pulmonary nodule | ICD10 | 10102017 | 09292017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10052017 | 2017-10-05T08:30:53+00:00 |  | 000079257-01 | Marvin | Cinquepalmi | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10042017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005011 | R0602 | Shortness of breath | ICD10 | 10102017 | 10042017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09152017 | 2017-09-15T08:22:39+00:00 |  | 000080221-01 | Carol | Frerick | SOUND PHYSICIANS OF OHI0 | 947194 | KENNETH H | SURKIN | 1295050227 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09142017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915046 | E119, E782, I10, R0789 | Other chest pain | ICD10 | 10102017 | 09142017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T11:08:29+00:00 |  | 000113577-01 | Anna | Gordon | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10092017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009103 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10092017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T09:41:34+00:00 | 263902247283 | 000043948-01 | BARRY | BRANDT | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010010 | I97610 | Postproc hemor/hemtom of a circ sys org fol a cardiac cath | ICD10 | 10102017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10052017 | 2017-10-05T10:44:04+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005037 | R6889 | Other general symptoms and signs | ICD10 | 10102017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:34:22+00:00 | 251783147281 | 000054724-01 | EMMA | HODGE | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009025 | R509 | Fever, unspecified | ICD10 | 10102017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T11:56:51+00:00 |  | 000079240-01 | Loretta | Bartkowiak | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10032017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004051 | J189 | Pneumonia, unspecified organism | ICD10 | 10102017 | 10032017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10102017 | 2017-10-10T14:06:22+00:00 |  | 000053308-01 | IRMA | LEWIS | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010071 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 10102017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T09:32:20+00:00 | 262630557281 | 000047343-01 | JAMES | KNOX | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10072017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009024 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10072017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T10:08:38+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009078 | R55 | Syncope and collapse | ICD10 | 10102017 | 10072017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T14:21:45+00:00 |  | 000091691-01 | James | Ross | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010084 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10102017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T08:34:14+00:00 |  | 000001620-01 | HERBERT | HOSEY | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10052017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006029 | R079, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 10102017 | 10052017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09282017 | 2017-09-28T13:15:39+00:00 |  | 000090684-01 | Richard | Brewer | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928061 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:20:46+00:00 | 250384117281 | 000074440-01 | Frederick | Ford | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009015 | N179, N390 | Urinary tract infection, site not specified | ICD10 | 10102017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:24:38+00:00 | 251773927281 | 000043324-01 | JUDY | HOWSON | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009019 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 10102017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T15:41:49+00:00 |  | 000105140-01 | Debra | Rose | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009102 | L03114, T819XXA, T8189XA | Oth complications of procedures, NEC, init | ICD10 | 10102017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T10:26:40+00:00 |  | 000089104-01 | Harold | Bailey | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10102017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002113 | J189, J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10102017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T08:06:22+00:00 |  | 000097739-01 | Ruth | Davis | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 10102017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10062017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009058 | R1032 | Left lower quadrant pain | ICD10 | 10102017 | 10062017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:16:53+00:00 | 251544657281 | 000042450-01 | RUTH | CORDLE | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10102017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10082017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009013 | R079 | Chest pain, unspecified | ICD10 | 10102017 | 10082017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
