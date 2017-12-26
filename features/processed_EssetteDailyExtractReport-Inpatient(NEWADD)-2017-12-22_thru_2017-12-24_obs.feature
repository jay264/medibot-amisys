Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-22_thru_2017-12-24_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-22_thru_2017-12-24_OBS
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
| 12212017 | 2017-12-21T09:23:01+00:00 | 257025507354 | 000119426-01 | Bruce | Blue | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12222017 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221018 | I959 | Hypotension, unspecified | ICD10 | 12222017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12202017 | 2017-12-20T09:12:42+00:00 | 025870346-7353 | 000042482-01 | KATHRYN | KEEFE | MOUNT CARMEL HLTH PRVDRS | 928574 | BABAK | JALALI | 1588977037 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220015 | R55 | Syncope and collapse | ICD10 | 12222017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:07:43+00:00 | 250432027355 | 000002922-01 | DORIS | GRIFFIN | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221006 | N390, W06XXXA | Fall from bed, initial encounter | ICD10 | 12222017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T17:06:10+00:00 |  | 000086881-01 | Norma | Glaze | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130058 | I4891, M48062 | M48062 | ICD10 | 12222017 | 12202017 | 12212017 | 63047, 63048, 22612, 22633, 22634, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 12212017 | 2017-12-21T09:02:01+00:00 |  | 000111366-01 | Charlotte | Hill | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221007 | R1111, R197 | Diarrhea, unspecified | ICD10 | 12222017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T08:27:37+00:00 |  | 000009477-01 | KATHLEEN | NOICE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | HealthHelp | Observation | Inpatient | 12112017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212045 | L03116 | Cellulitis of left lower limb | ICD10 | 12222017 | 12112017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12192017 | 2017-12-19T14:40:17+00:00 |  | 000098653-01 | Kathleen | Jackson | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219109 | C3490, C7931, R29810, R4781 | Slurred speech | ICD10 | 12222017 | 12182017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T18:24:46+00:00 |  | 000046332-01 | DELBERT | BACKUS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12092017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212082 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12222017 | 12092017 | 12132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12192017 | 2017-12-19T07:29:40+00:00 |  | 000080637-01 | Birg | Harrington | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219073 | R55 | Syncope and collapse | ICD10 | 12222017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T16:26:31+00:00 |  | 000092516-01 | Doris | Applin | OSU INTERNAL MED LLC | 935317 | WILLIAM J | JANSSEN | 0 | THE HOSPITALS OF PROVIDE | 952510 | 1215969787 | THE HOSPITALS OF PROVIDENCE SIERRA C | 1215969787 | Observation | OBSV | Concurrent Review | CONC |  | THE HOSPITALS OF PROVIDENCE SIERRA C | 12222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11242017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214060 | E162, N390 | Urinary tract infection, site not specified | ICD10 | 12222017 | 11242017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12122017 | 2017-12-12T15:24:30+00:00 |  | 000073706-01 | David | Mclarnan | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 12222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12112017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213009 | R188 | Other ascites | ICD10 | 12222017 | 12112017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12152017 | 2017-12-15T11:50:07+00:00 |  | 000101521-01 | Michael | Mcghee | MERCY HEALTH PHYSICIANS | 928406 | JASON J | PAQUIN | 1467653584 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 12222017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09062017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221046 | R079 | Chest pain, unspecified | ICD10 | 12222017 | 09062017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12212017 | 2017-12-21T15:20:48+00:00 |  | 000105862-01 | JAMES | HENRY | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12202017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221072 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 12222017 | 12202017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12162017 | 2017-12-16T18:25:42+00:00 |  | 000088499-01 | Joan | Irwin | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 12152017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218040 | S43401A | Unspecified sprain of right shoulder joint, init encntr | ICD10 | 12222017 | 12152017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12072017 | 2017-12-07T08:27:12+00:00 |  | 000070500-01 | John | Sullivan | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12062017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207006 | I10 | Essential (primary) hypertension | ICD10 | 12222017 | 12062017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T07:29:26+00:00 |  | 000095750-01 | Charles | Vandyne | MED ASSOCS OF CAMBRIDGE | 951476 | REBECCA A | BRAUCH | 1417273368 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 12222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214002 | R0902 | Hypoxemia | ICD10 | 12222017 | 12142017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12212017 | 2017-12-21T10:05:48+00:00 |  | 000038450-01 | DOLORES | RUCKER | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221039 | R079 | Chest pain, unspecified | ICD10 | 12222017 | 12192017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T06:57:39+00:00 |  | 000099940-01 | KATHLEEN | DURHAM | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12162017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218069 | R4182 | Altered mental status, unspecified | ICD10 | 12222017 | 12162017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12212017 | 2017-12-21T09:41:28+00:00 | 256337717354 | 000074904-01 | Barbra | Hathcock | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12202017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221032 | R001 | Bradycardia, unspecified | ICD10 | 12222017 | 12202017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12172017 | 2017-12-17T16:40:34+00:00 |  | 000057216-01 | ROY | WARE JR | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12162017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218123 | I639 | Cerebral infarction, unspecified | ICD10 | 12222017 | 12162017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12082017 | 2017-12-08T14:25:58+00:00 |  | 000084850-01 | Mary | Moulton | HILLSBOROUGH COUNTY HLTH | 909306 | DOUGLAS A | HOLT | 1952341083 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12222017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12062017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208084 | R001, R531 | Weakness | ICD10 | 12222017 | 12062017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12172017 | 2017-12-17T16:48:43+00:00 |  | 000084364-01 | Clova | Randles | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12162017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218127 | I509 | Heart failure, unspecified | ICD10 | 12222017 | 12162017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T14:37:15+00:00 |  | 000099384-01 | Nancy | Jenkins | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219112 | J189, R0902 | Hypoxemia | ICD10 | 12222017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12082017 | 2017-12-08T15:25:14+00:00 |  | 000114913-01 | Jeanette | Poindexter | MERCY HEALTH PHYSICIANS | 943049 | CHRISTOPHER S | RIFFEL | 1104170273 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12222017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208077 | E8352, R110 | Nausea | ICD10 | 12222017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12082017 | 2017-12-08T15:29:14+00:00 |  | 000097017-01 | Louis | Barth | SOUND KENWOOD HSPISTS OF | 928645 | MUHAMMAD R | AHMAD | 1255355319 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12222017 | Approved | MediGold Southwest OH Essential Care | Fax | Secondary Only | Inpatient | 12072017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208079 | S32030D, S32401A, S32591A, S60511A, W19XXXA, Z7901, Z789 | Other specified health status | ICD10 | 12222017 | 12072017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12142017 | 2017-12-14T09:46:49+00:00 |  | 000081130-01 | William | Mellon Jr | ALLIANCE PHYSICIANS INC | 908146 | DAVID B | STULTZ | 1104887280 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12132017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214026 | I200, R079 | Chest pain, unspecified | ICD10 | 12222017 | 12132017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12152017 | 2017-12-15T11:15:20+00:00 |  | 000108639-01 | Joyce | Carmichael | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12132017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215054 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 12222017 | 12132017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12222017 | 2017-12-22T09:54:33+00:00 | 258593687355 | 000031171-01 | JANET | PFEIFER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12212017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222026 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12222017 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T14:17:35+00:00 |  | 000099409-01 | Barbara | Winter | EMERGENCY MEDICINE PHYSI | 947746 | TAMARA | TATUNCHAK | 1073993127 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 12032017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204130 | M869 | Osteomyelitis, unspecified | ICD10 | 12222017 | 12032017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12212017 | 2017-12-21T09:28:18+00:00 | 256397247354 | 000022522-01 | CHARLENE | CHRISTY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221024 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12222017 | 12202017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T08:31:51+00:00 |  | 000119547-01 | Richard | Hamrick | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219080 | R0602 | Shortness of breath | ICD10 | 12222017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12212017 | 2017-12-21T09:45:13+00:00 | 263904007354 | 000029103-01 | JAMES | PARKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221034 | R739 | Hyperglycemia, unspecified | ICD10 | 12232017 | 12202017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:37:13+00:00 | 180657277354 | 000108522-01 | Richard | Gorsuch | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12202017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221029 | G309 | Alzheimer's disease, unspecified | ICD10 | 12232017 | 12202017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:17:02+00:00 | 263392817355 | 000042346-01 | RALPH | MILLER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12212017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221012 | R079 | Chest pain, unspecified | ICD10 | 12232017 | 12212017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12222017 | 2017-12-22T09:47:17+00:00 | 025634661-7355 | 000053138-01 | Elaine | Davis | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12232017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 12222017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222023 | J40 | Bronchitis, not specified as acute or chronic | ICD10 | 12232017 | 12222017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12212017 | 2017-12-21T09:19:39+00:00 | 259030157354 | 000046920-01 | WILLIAM | RANDALL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12202017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221016 | R079 | Chest pain, unspecified | ICD10 | 12232017 | 12202017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12222017 | 2017-12-22T15:36:31+00:00 | 180670007355 | 000105221-01 | Violet | Lawson | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12212017 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222074 | I4891 | Unspecified atrial fibrillation | ICD10 | 12232017 | 12212017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12222017 | 2017-12-22T09:11:14+00:00 | 260373997355 | 000007968-01 | HERSHEL | MILLER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12212017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222012 | L03818 | Cellulitis of other sites | ICD10 | 12232017 | 12212017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12232017 | 2017-12-23T07:40:07+00:00 |  | 000040490-01 | MARCELLA | KISER | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 12222017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223003 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 12232017 | 12222017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
