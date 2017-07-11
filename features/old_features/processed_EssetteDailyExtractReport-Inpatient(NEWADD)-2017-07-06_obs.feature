Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_OBS
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
| 06122017 | 2017-06-12T10:20:36+00:00 |  | 000011912-01 | CLARENCE | RAVER | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06102017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612117 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 07062017 | 06102017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T10:22:24+00:00 |  | 000045267-01 | CHARLES | FREEMAN | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 06102017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612118 | R0602 | Shortness of breath | ICD10 | 07062017 | 06102017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:24:24+00:00 |  | 000103566-01 | Joseph | Taylor | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06112017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612119 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 06112017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T10:26:18+00:00 |  | 000081220-01 | Patricia | Blazer | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06112017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612126 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 06112017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06122017 | 2017-06-12T10:27:15+00:00 |  | 000106689-01 | James | Mcafee | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06092017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612127 | R29810 | Facial weakness | ICD10 | 07062017 | 06092017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06162017 | 2017-06-16T15:46:02+00:00 |  | 000084508-01 | Frank | Dobie | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06162017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616072 | R05 | Cough | ICD10 | 07062017 | 06162017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T08:39:30+00:00 |  | 000099346-01 | Glenna | Owens | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06172017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619085 | K559 | Vascular disorder of intestine, unspecified | ICD10 | 07062017 | 06172017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06222017 | 2017-06-22T15:43:28+00:00 |  | 000089267-01 | David | Clark | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06212017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622076 | R531 | Weakness | ICD10 | 07062017 | 06212017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06232017 | 2017-06-23T14:26:25+00:00 |  | 000104205-01 | Dorothy | Knott | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06222017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623059 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 06222017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T09:36:04+00:00 |  | 000084135-01 | Mabel | Rhinehart | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06232017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626069 | J189, R0602 | Shortness of breath | ICD10 | 07062017 | 06232017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T10:01:17+00:00 |  | 000081959-01 | Sharon | Moore | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627071 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T16:25:44+00:00 |  | 000035013-01 | JOHN | FOLTZ | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Post-Service | POST |  | ADENA REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170628048 | D649 | Anemia, unspecified | ICD10 | 07062017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T11:31:18+00:00 |  | 000079361-01 | Robert | Haynes | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628049 | D649 | Anemia, unspecified | ICD10 | 07062017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T16:45:15+00:00 |  | 000072212-01 | Patricia | Vanburen | DAYTON COLON & RECTAL CT | 903985 | AUGUSTO L | MARTINEZ | 1629071337 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06262017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629024 | R109, R110 | Nausea | ICD10 | 07062017 | 06262017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06292017 | 2017-06-29T14:04:40+00:00 |  | 000102907-01 | Bradley | Forrest | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629069 | K625 | Hemorrhage of anus and rectum | ICD10 | 07062017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T09:51:17+00:00 | 163523197182 | 000110767-01 | LORRAINE | CHAFFIN | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07062017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07012017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703021 | M25551 | Pain in right hip | ICD10 | 07062017 | 07012017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07012017 | 2017-07-01T19:34:27+00:00 |  | 000094602-01 | Linda | Collison | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703026 | K859 | Acute pancreatitis, unspecified | ICD10 | 07062017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T10:15:25+00:00 | 251822967182 | 000017782-01 | DONNA | HANDLEY | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07012017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703031 | N390 | Urinary tract infection, site not specified | ICD10 | 07062017 | 07012017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T10:25:16+00:00 | 251862247183 | 000078552-01 | Charlene | Jefferson | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07022017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703035 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 07062017 | 07022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T07:49:51+00:00 |  | 000099921-01 | Edith | Moore | UNIVERSITY OF CINCINNATI | 930721 | DAVID W | LAMONT | 1740211069 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703041 | K868 | Other specified diseases of pancreas | ICD10 | 07062017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T09:39:55+00:00 |  | 000112192-01 | Michael | Rudd | THE CHRIST HSP CARDIOVAS | 912291 | JOHN J | SZAWALUK | 1578527495 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07012017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703077 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T08:20:58+00:00 |  | 000067570-01 | JAMES | YOUNG | LICKING MEM INPATIENT ME | 919278 | FOLARIN K | SOGBETUN | 1356536882 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703085 | N179 | Acute kidney failure, unspecified | ICD10 | 07062017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T11:37:04+00:00 |  | 000116671-01 | CLIFFORD | JOHNSON | SOUND KENWOOD HSPISTS OF | 932294 | NARENDRA B | VEERAPANENI | 1477784379 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703106 | R55 | Syncope and collapse | ICD10 | 07062017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T15:10:08+00:00 |  | 000069522-01 | HELEN | VANMETER | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703131 | R0602 | Shortness of breath | ICD10 | 07062017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T15:58:33+00:00 |  | 000044068-01 | PATRICIA | WHITE | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07022017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705009 | I480 | Paroxysmal atrial fibrillation | ICD10 | 07062017 | 07022017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07042017 | 2017-07-04T17:13:38+00:00 |  | 000097536-01 | Waldon | Bruce Jr | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07022017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705015 | R6510, R6520 | Severe sepsis without septic shock | ICD10 | 07062017 | 07022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T11:36:10+00:00 |  | 000097505-01 | Robert | Haslett | LICKING MEM INPATIENT ME | 919278 | FOLARIN K | SOGBETUN | 1356536882 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705049 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T11:23:46+00:00 |  | 000075489-01 | Dorothy | Prouty | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705052 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T12:54:34+00:00 | 025277048-7186 | 000041931-01 | BARBARA | ZOSEL | MOUNT CARMEL HLTH PRVDRS | 934617 | IRINA | RYAZANSKY | 1073550893 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705060 | I509 | Heart failure, unspecified | ICD10 | 07062017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:37:16+00:00 |  | 000084352-01 | Jack | Spence | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705098 | R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T10:37:18+00:00 |  | 000113092-01 | Linda | Haswell | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705099 | N179 | Acute kidney failure, unspecified | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T10:38:02+00:00 |  | 000113292-01 | RANDALL | BROWN | GENESIS MEDICAL GRP LLC | 924142 | EDWARD S | UMLAUF | 1942207063 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07032017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705101 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07062017 | 07032017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T14:28:53+00:00 |  | 000111765-01 | Mark | Williams | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706092 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07062017 | 2017-07-06T15:19:46+00:00 |  | 000096868-01 | Sarah | Richards | ALLIANCE PHYSICIANS INC | 926594 | JANELLE M | EVANS | 1912058041 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170706105 | N819 | Female genital prolapse, unspecified | ICD10 | 07062017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
