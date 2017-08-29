Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-28_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-28_OBS
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
| 08282017 | 2017-08-28T08:08:04+00:00 |  | 000101741-01 | DARLENE | COLBERT | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Essential Care |  | Observation | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828001 | R079 | Chest pain, unspecified | ICD10 | 08282017 | 08252017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T09:48:18+00:00 | 254844747235 | 000048632-01 | WILLIAM | OYER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824016 | N390 | Urinary tract infection, site not specified | ICD10 | 08282017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T08:19:36+00:00 |  | 000035584-01 | Claudietta | Colliver | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828002 | R079 | Chest pain, unspecified | ICD10 | 08282017 | 08252017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T10:15:15+00:00 | 253857347235 | 000020194-01 | WILLARD | CLARK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824025 | I509 | Heart failure, unspecified | ICD10 | 08282017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T14:28:00+00:00 |  | 000070336-01 | Freda | Kehrer | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08112017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815054 | L02211 | Cutaneous abscess of abdominal wall | ICD10 | 08282017 | 08112017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08282017 | 2017-08-28T08:32:59+00:00 |  | 000046226-01 | DEBRA | DRUMM | SOUND PHYSICIANS OF OHI0 | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828003 | G8929 | Other chronic pain | ICD10 | 08282017 | 08252017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08242017 | 2017-08-24T09:33:03+00:00 | 253544987235 | 000037843-01 | VIOLET | ARICK | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08232017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824011 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 08282017 | 08232017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T07:42:50+00:00 |  | 000105043-01 | Maria | Ricchio | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08022017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803028 | H5500, R270, R42 | Dizziness and giddiness | ICD10 | 08282017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T09:14:05+00:00 |  | 000097814-01 | Mary | Commins | SOUND PHYSICIANS OF OHI0 | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08062017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807063 | R001, R55 | Syncope and collapse | ICD10 | 08282017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T08:59:22+00:00 |  | 000029137-01 | SAM | ISHIDA | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08262017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828008 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 08282017 | 08262017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T09:16:18+00:00 |  | 000049535-01 | MONA | CARR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828013 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08282017 | 08252017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T08:58:14+00:00 |  | 000085165-01 | Kenneth | Haddox | SOUND PHYSICIANS OF OHI0 | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828007 | A419 | Sepsis, unspecified organism | ICD10 | 08282017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08242017 | 2017-08-24T10:07:07+00:00 | 253965817236 | 000072450-01 | Leslie | Haley | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824019 | A419 | Sepsis, unspecified organism | ICD10 | 08282017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T09:44:22+00:00 | 257854907233 | 000029552-01 | MICHAEL | GORDON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08212017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822033 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 08282017 | 08212017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T10:39:22+00:00 | 257652557236 | 000011381-01 | DONALD | MORGAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825032 | I639 | Cerebral infarction, unspecified | ICD10 | 08282017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08242017 | 2017-08-24T10:18:18+00:00 | 252152927235 | 000004774-01 | MARTHA | ORTLIEB | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824027 | I4892 | Unspecified atrial flutter | ICD10 | 08282017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T10:16:14+00:00 |  | 000086689-01 | James | Oost | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824051 | K8020, R079 | Chest pain, unspecified | ICD10 | 08282017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T08:59:57+00:00 |  | 000090551-01 | Rosalie | Frew | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825025 | R410 | Disorientation, unspecified | ICD10 | 08282017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T10:21:03+00:00 | 263907007235 | 000094550-01 | Neal | Scharrer | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08232017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824028 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 08282017 | 08232017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T11:40:10+00:00 |  | 000113346-01 | Arlene | Holt | CHARLES D HANSHAW DO INC | 913190 | CHARLES D | HANSHAW | 1871523209 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822099 | I951, R55 | Syncope and collapse | ICD10 | 08282017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T10:38:01+00:00 |  | 000037168-01 | MARJORIE | WARD | SOUND PHYSICIANS OF OHI0 | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828049 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08282017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T12:09:24+00:00 |  | 000076626-01 | John | Lahmon | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08192017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821117 | T783XXA | Angioneurotic edema, initial encounter | ICD10 | 08282017 | 08192017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08222017 | 2017-08-22T11:19:02+00:00 |  | 000031056-01 | MARY | RICHARDS | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822097 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 08282017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08252017 | 2017-08-25T12:55:41+00:00 |  | 000076819-01 | Lando | Perry | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826011 | J449, R001, R0902 | Hypoxemia | ICD10 | 08282017 | 08242017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08242017 | 2017-08-24T10:18:19+00:00 |  | 000062695-01 | JAYNE | BLAISDELL | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08282017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 08222017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825056 | J159 | Unspecified bacterial pneumonia | ICD10 | 08282017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T15:24:26+00:00 |  | 000079989-01 | Marshall | Cotton | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 08282017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823041 | E11621, L03115 | Cellulitis of right lower limb | ICD10 | 08282017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T08:01:26+00:00 |  | 000085746-01 | Warren | Denman | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08282017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824055 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 08282017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08222017 | 2017-08-22T14:33:33+00:00 |  | 000079815-01 | Martha | Walker | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08202017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823035 | M6281, R296 | Repeated falls | ICD10 | 08282017 | 08202017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T09:56:29+00:00 |  | 000048406-01 | LEE | STEWART | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826007 | R0602 | Shortness of breath | ICD10 | 08282017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T14:14:11+00:00 |  | 000029408-01 | BRUCE | STUMP | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824068 | I5032, J449, R0902 | Hypoxemia | ICD10 | 08282017 | 08222017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T09:24:15+00:00 | 251976717236 | 000070976-01 | Elizabeth | Smith | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825011 | I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 08282017 | 08242017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T11:21:30+00:00 |  | 000103281-01 | Betty | Doles | GLATFELTER FAMILY MEDICA | 903990 | JODI C | BENNETT | 1396808150 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825059 | M549 | Dorsalgia, unspecified | ICD10 | 08282017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08092017 | 2017-08-09T11:27:25+00:00 |  | 000118171-01 | Constance | Dean | FAYETTE COUNTY MEM HSP C | 905606 | WILLIAM C | STEVENSON | 1922181528 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08242017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809051 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08282017 | 08242017 | 08252017 | 49654 | LAP INC HERNIA REPAIR | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 08252017 | 2017-08-25T09:58:50+00:00 |  | 000094996-01 | Dora | Carper | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826009 | M6281 | Muscle weakness (generalized) | ICD10 | 08282017 | 08242017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T15:21:37+00:00 | 259426027238 | 000023685-01 | FRANCES | CRAY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08262017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828116 | I209 | Angina pectoris, unspecified | ICD10 | 08282017 | 08262017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T08:58:32+00:00 | 258119287235 | 000080200-01 | Mildred | Budd | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08232017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824005 | K559, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08282017 | 08232017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08252017 | 2017-08-25T09:55:18+00:00 |  | 000077772-01 | Theresa | Tiberi | OSU INTERNAL MED LLC | 946409 | TARA M | BAUTISTA | 1205219375 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08242017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826006 | E860 | Dehydration | ICD10 | 08282017 | 08242017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T09:24:06+00:00 | 252917657234 | 000020483-01 | ROBERT | KINSEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08222017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822021 | N390 | Urinary tract infection, site not specified | ICD10 | 08282017 | 08222017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08282017 | 2017-08-28T10:32:26+00:00 | 258787057237 | 000027533-01 | Beverly | Noland | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08252017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828044 | E875 | Hyperkalemia | ICD10 | 08282017 | 08252017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T09:21:30+00:00 | 164491057237 | 000103014-01 | Jacalyn | Beach | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08262017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828016 | J9501 | Hemorrhage from tracheostomy stoma | ICD10 | 08282017 | 08262017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T10:43:27+00:00 | 179361747239 | 000063703-01 | DONALD | ROSTOFER | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08272017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828052 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 08282017 | 08272017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08252017 | 2017-08-25T09:07:59+00:00 |  | 000040394-01 | ESTHER | COPE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08252017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825004 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08282017 | 08252017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T09:46:49+00:00 | 251630117238 | 000041622-01 | Howard | Eads | EMERGENCY SERVICES INC | 912038 | JARROD L | WILLIAMS | 1255524575 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08282017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08262017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828031 | R55 | Syncope and collapse | ICD10 | 08282017 | 08262017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
