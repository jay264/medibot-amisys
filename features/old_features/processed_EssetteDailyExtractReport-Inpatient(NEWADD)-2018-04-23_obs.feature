Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-23_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-23_OBS
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
| 04132018 | 2018-04-13T07:44:56+00:00 |  | 000051118-01 | ROBERT | JUSTICE | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04122018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413018 | J441, R0902 | Hypoxemia | ICD10 | 04232018 | 04122018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T09:30:29+00:00 |  | 000028293-01 | INGEBORG | DAVIS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04132018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416067 | M25552, R1110, R630 | Anorexia | ICD10 | 04232018 | 04132018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03212018 | 2018-03-21T13:47:07+00:00 |  | 000030595-01 | MARY | BROWN | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321060 | R296, Z7409 | Other reduced mobility | ICD10 | 04232018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T08:21:03+00:00 |  | 000108628-01 | Larry | Reid | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04232018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403058 | R0902 | Hypoxemia | ICD10 | 04232018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T13:47:37+00:00 |  | 000080904-01 | Melinda | Gruenberg | PATEL, KETAN K | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04232018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04152018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416070 | D6489 | Other specified anemias | ICD10 | 04232018 | 04152018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04172018 | 2018-04-17T07:35:31+00:00 |  | 000089229-01 | Veverly | Luckett | ER MED PHYS OF CHAMPAIGN | 940456 | JUSTIN D | COOMES | 1730322413 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04232018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04162018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417041 | R197 | Diarrhea, unspecified | ICD10 | 04232018 | 04162018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04172018 | 2018-04-17T12:43:31+00:00 |  | 000009076-01 | RONALD | SMALLRIDGE | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417123 | E860, N179, R4182 | Altered mental status, unspecified | ICD10 | 04232018 | 04162018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04102018 | 2018-04-10T13:34:13+00:00 |  | 000075118-01 | Clarence | Sink Jr | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04102018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410099 | R079 | Chest pain, unspecified | ICD10 | 04232018 | 04102018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04122018 | 2018-04-12T11:42:03+00:00 |  | 000030331-01 | Betty | Ugland | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04232018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04112018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412045 | E876, R42 | Dizziness and giddiness | ICD10 | 04232018 | 04112018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T12:34:00+00:00 |  | 000044930-01 | MARY | DYER | ADENA MEDICAL GROUP LLC | 922056 | TAREK | MOUSSA | 1154656882 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04132018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416095 | R079 | Chest pain, unspecified | ICD10 | 04232018 | 04132018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04162018 | 2018-04-16T12:58:49+00:00 |  | 000091316-01 | Bobby | Owens | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04142018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416096 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04232018 | 04142018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04172018 | 2018-04-17T08:03:12+00:00 |  | 000030574-01 | JACK | HUGHES | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417047 | I509, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04232018 | 04172018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04172018 | 2018-04-17T14:33:51+00:00 |  | 000078225-01 | Midori | Clark | MARIETTA HLTH CARE PHYS | 925532 | SUJEETH K | SHETTY | 1063627727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04232018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417126 | K5669, N390 | Urinary tract infection, site not specified | ICD10 | 04232018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T08:31:00+00:00 |  | 000112462-01 | Norman | Blauser | MARIETTA HLTH CARE PHYS | 925532 | SUJEETH K | SHETTY | 1063627727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04232018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418019 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 04232018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T10:42:08+00:00 |  | 000031056-01 | MARY | RICHARDS | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418034 | R109 | Unspecified abdominal pain | ICD10 | 04232018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T10:51:00+00:00 |  | 000121829-01 | Randall | Bland | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418038 | I200 | Unstable angina | ICD10 | 04232018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04202018 | 2018-04-20T09:26:28+00:00 |  | 000073280-01 | Larry | Hardbarger | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420045 | D6489, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04232018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T08:09:58+00:00 |  | 000116354-01 | CAROL | PROKOP | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04202018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423009 | R45851 | Suicidal ideations | ICD10 | 04232018 | 04202018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04222018 | 2018-04-22T07:37:11+00:00 |  | 000034903-01 | BETTY | COMBS | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423034 | R6889 | Other general symptoms and signs | ICD10 | 04232018 | 04202018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T10:34:39+00:00 |  | 000047804-01 | ORLA | UHRICK | HMP OF FRANKLIN CTY LTD | 911142 | JILL | BARNO | 1922030915 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419032 | I959, R55 | Syncope and collapse | ICD10 | 04232018 | 04182018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T09:55:20+00:00 |  | 000016165-01 | MERLE | SWANK | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420047 | R079 | Chest pain, unspecified | ICD10 | 04232018 | 04192018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T16:25:14+00:00 |  | 000075784-01 | June | Steen | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423016 | R109 | Unspecified abdominal pain | ICD10 | 04232018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T13:43:30+00:00 |  | 000096677-01 | Dorothy | Adams | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423055 | R6889 | Other general symptoms and signs | ICD10 | 04232018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T09:42:10+00:00 |  | 000012905-01 | LEROY | SHEETS | CLUTTER, STEVEN E | 935489 | STEVEN E | CLUTTER | 1992845895 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04232018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423070 | R55 | Syncope and collapse | ICD10 | 04232018 | 04202018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04232018 | 2018-04-23T09:46:17+00:00 |  | 000089500-01 | Joanne | Bowman | KNOX COMMUNITY HOSPITAL | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04232018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04202018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423071 | R079 | Chest pain, unspecified | ICD10 | 04232018 | 04202018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04232018 | 2018-04-23T10:33:29+00:00 |  | 000114925-01 | Wilma | Woodard | OSU GENERAL INTL MED LLC | 944690 | KRUTI | PATEL | 1568604924 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04232018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04212018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423072 | R008 | Other abnormalities of heart beat | ICD10 | 04232018 | 04212018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
