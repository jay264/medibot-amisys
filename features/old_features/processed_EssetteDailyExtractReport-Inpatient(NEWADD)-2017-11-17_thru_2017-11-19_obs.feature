Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-17_thru_2017-11-19_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-17_thru_2017-11-19_OBS
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
| 11132017 | 2017-11-13T11:28:31+00:00 | 256664167316 | 000025738-01 | ROSELYN | JAKEWAY | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113051 | R079 | Chest pain, unspecified | ICD10 | 11172017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11162017 | 2017-11-16T10:30:35+00:00 | 251726587319 | 000106651-01 | Billy | Griffith | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116022 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:10:37+00:00 | 265351497316 | 000075878-01 | Sondra | Daugherty | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113010 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11172017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11162017 | 2017-11-16T10:44:40+00:00 | 251993247319 | 000072079-01 | Deborah | Large | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116027 | R079 | Chest pain, unspecified | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:43:57+00:00 | 251641957317 | 000016470-01 | MARY | EMMELHAINZ | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113028 | R4182 | Altered mental status, unspecified | ICD10 | 11172017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T10:05:07+00:00 | 250780637319 | 000021706-01 | WILLIAM | MOHLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11162017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116015 | R55 | Syncope and collapse | ICD10 | 11172017 | 11162017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T08:50:26+00:00 |  | 000088300-01 | John | Staten | SWEST OH ENT SPECIALTIST | 920268 | MATTHEW R | GARRETT | 1710170261 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116057 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T09:59:10+00:00 |  | 000104609-01 | Arnold | Brunotte | SOUND KENWOOD HSPISTS OF | 905430 | DEBORAH M | BOWE | 1679512230 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 11172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114030 | J810 | Acute pulmonary edema | ICD10 | 11172017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T12:04:09+00:00 |  | 000022292-01 | JERRY | HOLLENBACK | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116003 | L0390 | Cellulitis, unspecified | ICD10 | 11172017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09272017 | 2017-09-27T09:56:10+00:00 |  | 000100708-01 | Carolyn | Reynolds | MAYFIELD CLINIC | 921087 | ROBERT J | BOHINSKI | 1306876172 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 11172017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927066 | M4807, M5117 | Intvrt disc disorders w radiculopathy, lumbosacral region | ICD10 | 11172017 | 10112017 | 10142017 | 22633, 63047, 22840, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:56:03+00:00 | 251097827318 | 000108633-01 | James | Smith | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11142017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115025 | R509 | Fever, unspecified | ICD10 | 11172017 | 11142017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:52:56+00:00 |  | 000035732-01 | MARY | MONAHAN | MIAMI VALLEY HSPISTS GRP | 944319 | ASIF | JAN | 1366798217 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114055 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11172017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T10:05:51+00:00 | 252434807317 | 000071512-01 | Robert | Thompson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114038 | I4891, R531 | Weakness | ICD10 | 11172017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T17:04:26+00:00 |  | 000092011-01 | Charlotte | Keirns | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11032017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117024 | D649, R0602 | Shortness of breath | ICD10 | 11172017 | 11032017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T10:07:47+00:00 |  | 000079268-01 | Vera | Jeffers | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114036 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11172017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11162017 | 2017-11-16T10:57:13+00:00 | 251036647319 | 000062993-01 | JO | STEIGERWALD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11172017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116033 | R079 | Chest pain, unspecified | ICD10 | 11172017 | 11152017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:38:56+00:00 |  | 000078468-01 | Diane | Galbreath | MARIETTA HLTH CARE PHYS | 933483 | HAYDEN H | TRAN | 1124319272 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114052 | J441, R0600 | Dyspnea, unspecified | ICD10 | 11172017 | 11122017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T10:25:28+00:00 |  | 000006868-01 | RAYMOND | RITTENHOUSE | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115072 | R079 | Chest pain, unspecified | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11152017 | 2017-11-15T08:32:03+00:00 |  | 000078120-01 | Helen | Dixon | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115062 | R4182 | Altered mental status, unspecified | ICD10 | 11172017 | 11152017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T08:27:21+00:00 |  | 000115167-01 | DENNIS | HECLO | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117042 | R531 | Weakness | ICD10 | 11172017 | 11162017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11162017 | 2017-11-16T15:14:38+00:00 |  | 000086643-01 | Sylvia | Jones | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11142017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117015 | R51 | Headache | ICD10 | 11172017 | 11142017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T15:27:25+00:00 |  | 000088972-01 | Juanita | Hill | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11172017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116036 | K5900, N390, R319, R410, R748 | Abnormal levels of other serum enzymes | ICD10 | 11172017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T10:52:16+00:00 | 252221807319 | 000020833-01 | JACK | REBER | EMERGENCY SERVICES INC | 933771 | JONATHON | BROOKS | 1770561227 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 11152017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116031 | R296 | Repeated falls | ICD10 | 11182017 | 11152017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T10:48:25+00:00 | 262445757319 | 000015945-01 | ESTHER | MESSERKNECHT | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11152017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116029 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 11182017 | 11152017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11182017 | 2017-11-18T13:26:58+00:00 |  | 000104757-01 | James | Ott | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11172017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171118001 | I480 | Paroxysmal atrial fibrillation | ICD10 | 11182017 | 11172017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T10:39:58+00:00 | 180277467319 | 000077671-01 | Daniel | Hicks | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116024 | R042 | Hemoptysis | ICD10 | 11182017 | 11152017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T10:04:01+00:00 | 252121657318 | 000009794-01 | DOLORES | NUBER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11142017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115029 | R4182 | Altered mental status, unspecified | ICD10 | 11182017 | 11142017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T10:09:29+00:00 | 251601727319 | 000116394-01 | HARRY | DUNCAN | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 11152017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116016 | R1030 | Lower abdominal pain, unspecified | ICD10 | 11182017 | 11152017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:39:13+00:00 | 261264107318 | 000020190-01 | ALMA | BALL | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11182017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11142017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115012 | R109 | Unspecified abdominal pain | ICD10 | 11182017 | 11142017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11172017 | 2017-11-17T09:03:05+00:00 | 263899207320 | 000077250-01 | Joyce | Williams | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11192017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11162017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117006 | I959 | Hypotension, unspecified | ICD10 | 11192017 | 11162017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11182017 | 2017-11-18T15:23:41+00:00 |  | 000096997-01 | DAVID | RODGERS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11192017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11182017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171118006 | R079 | Chest pain, unspecified | ICD10 | 11192017 | 11182017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
