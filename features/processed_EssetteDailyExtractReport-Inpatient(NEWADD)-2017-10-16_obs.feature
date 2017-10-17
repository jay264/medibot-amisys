Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_OBS
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
| 10132017 | 2017-10-13T10:05:43+00:00 | 256455407285 | 000022911-01 | MILDRED | DELLAFLORA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013015 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T16:05:05+00:00 | 254552737284 | 000002689-01 | KATHLEEN | BOPP | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011075 | E875, G9341 | Metabolic encephalopathy | ICD10 | 10162017 | 10112017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10122017 | 2017-10-12T10:00:50+00:00 | 254155807285 | 000020381-01 | MABEL | HUPP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012006 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10162017 | 10122017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T15:46:25+00:00 | 025024712-7284 | 000000465-01 | DONALD | CORDER | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013059 | I4891 | Unspecified atrial fibrillation | ICD10 | 10162017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T08:01:38+00:00 |  | 000102190-01 | Robert | Locke | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013025 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T15:44:38+00:00 | 179281047286 | 000032232-01 | MARTHA | ESSELSTEIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013058 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T08:17:59+00:00 | 265963567285 | 000107071-01 | PHILLIP | FERRELL JR | COPC CENTRAL OHIO PRIMAR | 905860 | RICHARD A | FIKES | 1235176686 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10122017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013004 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 10162017 | 10122017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10122017 | 2017-10-12T12:58:02+00:00 |  | 000087758-01 | Karen | Draggoo-Smith | SOUND PHYSICIANS OF OHI0 | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10162017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012044 | J189 | Pneumonia, unspecified organism | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T09:39:45+00:00 |  | 000075801-01 | Daniel | Daugherty | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Essential Care | HealthHelp | Observation | Inpatient | 10102017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016038 | R6889 | Other general symptoms and signs | ICD10 | 10162017 | 10102017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T09:37:57+00:00 |  | 000030244-01 | JOSEPH | GIBBONEY | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 10142017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016037 | J189 | Pneumonia, unspecified organism | ICD10 | 10162017 | 10142017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10122017 | 2017-10-12T08:46:11+00:00 |  | 000115027-01 | Steven | Stepp | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012027 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T15:49:10+00:00 | 254902587286 | 000006734-01 | FRANCIS | GREEN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013060 | J40, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T08:15:56+00:00 | 254720317285 | 000001831-01 | GENE | DANIELS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013003 | K567 | Ileus, unspecified | ICD10 | 10162017 | 10122017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T09:38:56+00:00 | 251960247285 | 000030700-01 | JAMES | LESTER | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013006 | R197 | Diarrhea, unspecified | ICD10 | 10162017 | 10122017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T09:42:01+00:00 | 252038697285 | 000022871-01 | JAMES | MCCARTHY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013008 | T7840XA | Allergy, unspecified, initial encounter | ICD10 | 10162017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T07:51:47+00:00 |  | 000112008-01 | Joyce | Kelly | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10062017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009056 | J449, R600 | Localized edema | ICD10 | 10162017 | 10062017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10132017 | 2017-10-13T09:47:55+00:00 | 252407497287 | 000033170-01 | ARDIE | SCHIRTZINGER | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013009 | I639 | Cerebral infarction, unspecified | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T11:55:49+00:00 |  | 000087484-01 | Shirley | Smith | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013049 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T08:58:31+00:00 |  | 000101294-01 | Rosita | Bamba | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09292017 | 10012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002079 | J209, Z789 | Other specified health status | ICD10 | 10162017 | 09292017 | 10012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10122017 | 2017-10-12T11:57:28+00:00 |  | 000084594-01 | Dona | Frazier | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012042 | J810 | Acute pulmonary edema | ICD10 | 10162017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T15:57:42+00:00 | 255022387286 | 000015868-01 | WILLIAM | WEILAND | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013064 | N179 | Acute kidney failure, unspecified | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10112017 | 2017-10-11T08:17:19+00:00 |  | 000073230-01 | Linda | Hedges | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10102017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011015 | I509, R627 | Adult failure to thrive | ICD10 | 10162017 | 10102017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T09:30:34+00:00 |  | 000026873-01 | DOROTHY | MYERS | SOUND PHYSICIANS OF OHI0 | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10122017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013034 | M7080 | Oth soft tissue disord related to use/pressure of unsp site | ICD10 | 10162017 | 10122017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T14:48:11+00:00 |  | 000030949-01 | RICHARD | CONRAD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016097 | N390 | Urinary tract infection, site not specified | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10132017 | 2017-10-13T08:01:48+00:00 |  | 000084963-01 | Vicki | Hartley | HOSPITAL MEDICINE SERVIC | 949224 | KASHYAP B | PATEL | 1033476189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013027 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T08:19:03+00:00 |  | 000088972-01 | Juanita | Hill | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 10162017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016102 | R6889 | Other general symptoms and signs | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10122017 | 2017-10-12T07:36:47+00:00 |  | 000064629-01 | Eleanor | Burris | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10112017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012019 | I509, R0902 | Hypoxemia | ICD10 | 10162017 | 10112017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10162017 | 2017-10-16T09:58:15+00:00 | 258961547287 | 000051292-01 | EVELYN | PURSELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10142017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016049 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10162017 | 10142017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T09:32:12+00:00 |  | 000088284-01 | Becky | Lowry | GENESIS MEDICAL GRP LLC | 928371 | ROY J | PETERS | 1063701035 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016104 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T09:02:54+00:00 | 165199097287 | 000038815-01 | GERALDINE | BEATY | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10142017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016023 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10142017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T08:03:27+00:00 | 251688827287 | 000033569-01 | OPAL | FRANCIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016006 | R079 | Chest pain, unspecified | ICD10 | 10162017 | 10142017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T08:12:36+00:00 | 259787417285 | 000023277-01 | MARCIA | BLACK | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10122017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013001 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10162017 | 10122017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10162017 | 2017-10-16T07:49:21+00:00 | 251674707286 | 000074903-01 | Barbara | Foris | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016004 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10162017 | 10132017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
