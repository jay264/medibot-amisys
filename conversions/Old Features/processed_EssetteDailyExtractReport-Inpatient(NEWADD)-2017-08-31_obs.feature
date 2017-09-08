Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-31_OBS
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
| 08282017 | 2017-08-28T13:18:58+00:00 |  | 000079963-01 | Gene | Stotridge | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828126 | R4182 | Altered mental status, unspecified | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T09:30:32+00:00 | 250854607238 | 000021934-01 | JUNE | OCONNELL | SOUND PHYSICIANS OF OHI0 | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828020 | L539 | Erythematous condition, unspecified | ICD10 | 08312017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08172017 | 2017-08-17T13:07:38+00:00 |  | 000032987-01 | ERMA | HINES | SURG ASSOC OF GREENE COU | 903547 | CHRISTOPHER K | MADISON | 1326015504 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08162017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818025 | R531 | Weakness | ICD10 | 08312017 | 08162017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07272017 | 2017-07-27T15:56:38+00:00 |  | 000116355-01 | Russell | Clark | SURGICAL ASSOC OF SC | 914036 |  | SURGICAL ASSOCIATES OF SC | 1144467051 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 08312017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727075 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 08312017 | 08032017 | 08042017 | 49654 | LAP INC HERNIA REPAIR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08312017 | 2017-08-31T09:02:44+00:00 | 250236277242 | 000095541-01 | Anthony | Criss Sr | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831007 | L03818 | Cellulitis of other sites | ICD10 | 08312017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08312017 | 2017-08-31T09:14:37+00:00 | 251116577242 | 000109141-01 | BETTY | SCANLON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831013 | I4891 | Unspecified atrial fibrillation | ICD10 | 08312017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08232017 | 2017-08-23T13:02:52+00:00 |  | 000074766-01 | Randall | Coile | INTERNAL MED CARE INC | 904869 | GREGGORY S | VOLK | 1780682229 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08222017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824038 | R1013, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 08312017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08302017 | 2017-08-30T09:39:08+00:00 | 259086457241 | 000030924-01 | KATHRYN | DARDINGER | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830017 | M25569 | Pain in unspecified knee | ICD10 | 08312017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T08:36:51+00:00 | 252721147242 | 000012603-01 | LILLIAN | POCHEDLEY | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829003 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 08312017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T10:09:08+00:00 | 251188787241 | 000031401-01 | LESTER | VANBUREN | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830026 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T08:13:16+00:00 |  | 000025444-01 | MARGARET | LLOYD | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828039 | H81399 | Other peripheral vertigo, unspecified ear | ICD10 | 08312017 | 08262017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T13:24:29+00:00 |  | 000085530-01 | John | Park | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829033 | R0602 | Shortness of breath | ICD10 | 08312017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T14:40:59+00:00 |  | 000093103-01 | Randy | Smith | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829049 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08312017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T09:45:29+00:00 | 256208837241 | 000074519-01 | Peggy | Sullivan | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830019 | R1013 | Epigastric pain | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08252017 | 2017-08-25T12:50:33+00:00 |  | 000091760-01 | Beverly | Myers | RIVERSIDE TRAUMA SURGEON | 920504 | JOHN A | BACH | 1891990859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08252017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825053 | R55 | Syncope and collapse | ICD10 | 08312017 | 08252017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T09:07:34+00:00 | 251820497241 | 000016805-01 | ROSEMARY | HANSON | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830012 | K226 | Gastro-esophageal laceration-hemorrhage syndrome | ICD10 | 08312017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T15:24:09+00:00 |  | 000110294-01 | Donna | Lawson | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08312017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08242017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825066 | R6889 | Other general symptoms and signs | ICD10 | 08312017 | 08242017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T12:51:51+00:00 |  | 000099550-01 | Frankie | Lander | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828079 | K5900, R109 | Unspecified abdominal pain | ICD10 | 08312017 | 08252017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08182017 | 2017-08-18T08:24:45+00:00 |  | 000047934-01 | NED | MOREHART | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08172017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818062 | I509 | Heart failure, unspecified | ICD10 | 08312017 | 08172017 | 08192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T10:36:18+00:00 |  | 000117372-01 | Donald | Gregg | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829080 | K851, R001 | Bradycardia, unspecified | ICD10 | 08312017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08232017 | 2017-08-23T10:19:39+00:00 |  | 000008791-01 | EVELYN | NETHERS | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823043 | I509 | Heart failure, unspecified | ICD10 | 08312017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03102017 | 2017-03-10T15:15:08+00:00 |  | 000040702-01 | Boyd | Johnson | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03092017 | 03132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170317090778.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170314071 | J189, R0902 | Hypoxemia | ICD10 | 08312017 | 03092017 | 03132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T14:49:42+00:00 |  | 000117156-01 | CHARLES | BURKARD | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08232017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825064 | R079 | Chest pain, unspecified | ICD10 | 08312017 | 08232017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T09:22:22+00:00 |  | 000027964-01 | MELVIN | HART | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830058 | R079 | Chest pain, unspecified | ICD10 | 08312017 | 08292017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:20:03+00:00 |  | 000109597-01 | Dorothy | Monroe | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08262017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828093 | D649, I4891, M6281 | Muscle weakness (generalized) | ICD10 | 08312017 | 08262017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08302017 | 2017-08-30T10:17:13+00:00 | 167854817242 | 000046039-01 | JOAN | TOWNSEND | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830032 | R079 | Chest pain, unspecified | ICD10 | 08312017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:00:10+00:00 | 253965787239 | 000118614-01 | David | Mays | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828036 | R6883 | Chills (without fever) | ICD10 | 08312017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T13:06:25+00:00 |  | 000046932-01 | JERRY | SHAW | COPC CENTRAL OHIO PRIMAR | 908162 | DAVID L | CONDON | 1891752994 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08262017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828120 | H44009 | Unspecified purulent endophthalmitis, unspecified eye | ICD10 | 08312017 | 08262017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08292017 | 2017-08-29T09:09:00+00:00 | 260585657240 | 000045979-01 | LEWIS | FENTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829009 | R079 | Chest pain, unspecified | ICD10 | 08312017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08242017 | 2017-08-24T14:54:52+00:00 |  | 000102053-01 | Linda | Dodson | ENT & SINUS INSTITUTE OF | 939545 | BORIS I | KARANFILOV | 1740244482 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08242017 | 08242017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824074 | J320, J321, R42 | Dizziness and giddiness | ICD10 | 08312017 | 08242017 | 08252017 | 31237 | NASAL/SINUS ENDOSCOPY, SURGICAL; | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 08172017 | 2017-08-17T12:08:11+00:00 |  | 000099550-01 | Frankie | Lander | EAST SURGICAL GROUP INC | 921217 | LINDA R | WELDER | 1437215423 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08172017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817058 | K37 | Unspecified appendicitis | ICD10 | 08312017 | 08172017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08232017 | 2017-08-23T16:38:43+00:00 |  | 000075521-01 | Dolores | Klontz | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08312017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 08222017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824077 | R079 | Chest pain, unspecified | ICD10 | 08312017 | 08222017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08312017 | 2017-08-31T09:55:35+00:00 |  | 000074168-01 | Barbara | Ross | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS MEDICAL GRP LLC | 910920 | 1063663433 | YAMANI GUNAWARDENA | 1083773550 | Observation | OBSV | Concurrent Review | CONC | YAMANI | GUNAWARDENA | 08312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831045 | R5383 | Other fatigue | ICD10 | 08312017 | 08302017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T13:56:21+00:00 |  | 000105912-01 | Margarette | Lawless | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829069 | D65, E871 | Hypo-osmolality and hyponatremia | ICD10 | 08312017 | 08252017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T11:38:53+00:00 |  | 000106585-01 | Lowell | Mayle | MED ASSOCS OF CAMBRIDGE | 917144 | KAYODE | OJEDELE | 1871546929 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08312017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721039 | E872 | Acidosis | ICD10 | 08312017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T11:09:41+00:00 |  | 000062166-01 | WILLIAM | ELLIOTT | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08312017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829045 | R739 | Hyperglycemia, unspecified | ICD10 | 08312017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T09:43:56+00:00 | 251656257241 | 000112684-01 | KAREN | FITZWATER | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829013 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 08312017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08302017 | 2017-08-30T09:44:03+00:00 |  | 000039199-01 | CHARLES | MOORE | MOUNT CARMEL HLTH SYS | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830061 | E876, I10, I4891, I509, R079 | Chest pain, unspecified | ICD10 | 08312017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T09:52:29+00:00 | 250243237240 | 000101566-01 | Ronald | Cruikshank | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08312017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828034 | I200, R079 | Chest pain, unspecified | ICD10 | 08312017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T10:37:39+00:00 |  | 000086233-01 | Margaret | Kieber | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08312017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829081 | G809 | Cerebral palsy, unspecified | ICD10 | 08312017 | 08272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |