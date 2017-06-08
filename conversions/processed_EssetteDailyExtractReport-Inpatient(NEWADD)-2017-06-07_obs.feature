Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_OBS
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
| 05262017 | 2017-05-26T17:06:41+00:00 |  | 000011927-01 | BARBARA | STREET | ADENA MEDICAL GROUP LLC | 927071 | MAYSA | EL-SAYYID | 1962638122 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05232017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530009 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 06072017 | 05232017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05302017 | 2017-05-30T07:55:04+00:00 |  | 000090492-01 | Thomas | Seeley | HMP OF OHIO PC | 942758 | EREK S | MAJKA | 1104110527 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05282017 | 05292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530130 | E872 | Acidosis | ICD10 | 06072017 | 05282017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T17:57:21+00:00 |  | 000098066-01 | Lelah | Vest | PIKE COMMUNITY HOSPITAL | 906609 | DAVID E | RODDY | 1952355679 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05272017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531009 | R0602 | Shortness of breath | ICD10 | 06072017 | 05272017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06012017 | 2017-06-01T09:36:09+00:00 |  | 000038960-01 | RUSSELL | TUCKER | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06012017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601030 | L0390 | Cellulitis, unspecified | ICD10 | 06072017 | 06012017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06012017 | 2017-06-01T11:19:16+00:00 |  | 000085011-01 | Anna | Holbrook | APOGEE MED GRP OHIO INC | 941919 | VEERABHADRA V | RAMESH METTA | 1376822395 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05302017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601048 | M6281 | Muscle weakness (generalized) | ICD10 | 06072017 | 05302017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06022017 | 2017-06-02T07:13:57+00:00 |  | 000097397-01 | Barbara | Searles | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05312017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602013 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06072017 | 05312017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06022017 | 2017-06-02T10:27:04+00:00 | 026738073-7152 | 000107551-01 | FRANCIS | CROTINGER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06012017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602032 | R42 | Dizziness and giddiness | ICD10 | 06072017 | 06012017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06022017 | 2017-06-02T14:14:34+00:00 |  | 000052836-01 | DENNIS | LESTER | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602070 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 06072017 | 06052017 | 06062017 | 47130, 47370 | LAPARO ABLATE LIVER TUMOR RF | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06042017 | 2017-06-04T21:30:20+00:00 |  | 000103955-01 | Rita | Farley | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604004 | Z431 | Encounter for attention to gastrostomy | ICD10 | 06072017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06042017 | 2017-06-04T13:16:49+00:00 |  | 000076345-01 | Pauline | Mcginnis | S DAYTON ACUTE CARE CNSL | 930272 | ISAAC P | HUMPHREY | 1649357724 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 06072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605010 | R112 | Nausea with vomiting, unspecified | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T07:31:54+00:00 |  | 000056969-01 | BALLARD | MULKEY | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605012 | D72829, E872, R531, R55 | Syncope and collapse | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T10:47:42+00:00 |  | 000098225-01 | Claudine | Shelfo | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06032017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605065 | R110 | Nausea | ICD10 | 06072017 | 06032017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T13:42:18+00:00 |  | 000013923-01 | Mabel | Bowden | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605105 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 06072017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T08:32:07+00:00 |  | 000104605-01 | KATHERINE | TAWROSZA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606010 | M6281 | Muscle weakness (generalized) | ICD10 | 06072017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T08:52:05+00:00 |  | 000112403-01 | Dixie | Pence | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606015 | R6889 | Other general symptoms and signs | ICD10 | 06072017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T09:06:17+00:00 |  | 000041933-01 | SAMUEL | CURNUTTE JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 06062017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606021 | I200 | Unstable angina | ICD10 | 06072017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T08:43:39+00:00 |  | 000117004-01 | Judy | Harding | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606032 | R079 | Chest pain, unspecified | ICD10 | 06072017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T10:55:19+00:00 |  | 000055834-01 | CAROL | GREGORY | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606048 | J811 | Chronic pulmonary edema | ICD10 | 06072017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T08:59:11+00:00 |  | 000069859-01 | Jill | Lanning | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607020 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 06072017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T08:40:44+00:00 |  | 000105304-01 | Arine | Mowery | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607021 | L03031 | Cellulitis of right toe | ICD10 | 06072017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T09:51:20+00:00 | 025187838-7157 | 000007068-01 | NINA | JONES | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607035 | E875, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 06072017 | 06072017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T14:16:50+00:00 |  | 000114200-01 | Ida | Webb | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06062017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607073 | F10239 | Alcohol dependence with withdrawal, unspecified | ICD10 | 06072017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T13:58:59+00:00 |  | 000106414-01 | Charlotte | Howard | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06062017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607074 | R079 | Chest pain, unspecified | ICD10 | 06072017 | 06062017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T16:02:30+00:00 |  | 000092550-01 | Rebecca | Drake | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06072017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607082 | R0600 | Dyspnea, unspecified | ICD10 | 06072017 | 06072017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
