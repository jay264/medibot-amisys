Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-21_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-21_OBS
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
| 05012017 | 2017-05-01T15:48:25+00:00 |  | 000060397-01 | MARGIE | CLARK | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302017 | 05022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502023 | S82391A, S82401A | Unsp fracture of shaft of right fibula, init for clos fx | ICD10 | 06212017 | 04302017 | 05022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T14:40:55+00:00 |  | 000078808-01 | Betty | Ward | MERCY HEALTH PHYSICIANS | 921735 | PAUL | FAVORITO | 1306845151 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06152017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606075 | M12819, M19011 | Primary osteoarthritis, right shoulder | ICD10 | 06212017 | 06152017 | 06162017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 06072017 | 2017-06-07T13:54:24+00:00 |  | 000039792-01 | MARY | BRANHAM | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607061 | I4891 | Unspecified atrial fibrillation | ICD10 | 06212017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T14:11:04+00:00 |  | 000100164-01 | Lonnie | Hubbard | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06062017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607070 | R55 | Syncope and collapse | ICD10 | 06212017 | 06062017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06102017 | 2017-06-10T15:25:20+00:00 |  | 000045923-01 | ELLSWORTH | BROWN JR | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612047 | D649, E039, R079, R195 | Other fecal abnormalities | ICD10 | 06212017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T15:05:36+00:00 |  | 000111529-01 | Robert | Feldman | FIRST CARE WEST DBA MMH | 915066 | ASAD | ALI | 1790715233 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06112017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612113 | D649, N189, R4182, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 06212017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:21:27+00:00 |  | 000099120-01 | Michael | Moler | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06112017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612116 | R109 | Unspecified abdominal pain | ICD10 | 06212017 | 06112017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06152017 | 2017-06-15T08:47:57+00:00 |  | 000115825-01 | Margie | Schooley | COPC CENTRAL OHIO PRIMAR | 904202 | LOUIS W | HEVEZI | 1386689768 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615014 | M791 | Myalgia | ICD10 | 06212017 | 06142017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T07:59:04+00:00 |  | 000014116-01 | BERTHA | RANSON | HMP OF OHIO PC | 914213 | ERIC | MCDOUGALL | 1285609313 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615027 | E1165, G250, R6251, S0101XA, S62102A | Fracture of unsp carpal bone, left wrist, init for clos fx | ICD10 | 06212017 | 06142017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06152017 | 2017-06-15T12:46:59+00:00 |  | 000104164-01 | Arleta | Miller | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06122017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615063 | J189 | Pneumonia, unspecified organism | ICD10 | 06212017 | 06142017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T08:29:44+00:00 |  | 000112052-01 | WILLIAM | ALLEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619004 | E875, N390 | Urinary tract infection, site not specified | ICD10 | 06212017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T08:52:52+00:00 |  | 000112855-01 | Richard | Dearwester | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619011 | J449, R0602 | Shortness of breath | ICD10 | 06212017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T10:10:01+00:00 | 025088268-7169 | 000071356-01 | Charles | Padrutt | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619036 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06212017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T11:16:59+00:00 | 162960087169 | 000001362-01 | EDNA | ROOF | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619060 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 06212017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06182017 | 2017-06-18T11:55:22+00:00 |  | 000095352-01 | ANN | NICKLEY | HMP OF OHIO PC | 926861 | MOTAZ | HOSSEIN | 1922377977 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06172017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619066 | R269 | Unspecified abnormalities of gait and mobility | ICD10 | 06212017 | 06172017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T07:42:19+00:00 |  | 000080400-01 | Robert | Vaughan | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06212017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06162017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619067 | E876, K529, N179 | Acute kidney failure, unspecified | ICD10 | 06212017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T08:33:33+00:00 |  | 000107910-01 | Darrell | Cummings | AAMIR KHAN MD INC | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06172017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619095 | R079 | Chest pain, unspecified | ICD10 | 06212017 | 06172017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T10:20:34+00:00 |  | 000078760-01 | Jerry | Daniels | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619105 | G809, I6789, R262, R531 | Weakness | ICD10 | 06212017 | 06172017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T10:22:50+00:00 |  | 000045406-01 | PATRICIA | FARLEY | LICKING MEMORIAL ER MED | 903549 | GARTH A | BENNINGTON | 1184606303 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06172017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619138 | M7080 | Oth soft tissue disord related to use/pressure of unsp site | ICD10 | 06212017 | 06172017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T16:41:23+00:00 |  | 000095709-01 | BETTY | MOSPENS | PULMONARY MED OF DAYTON | 907975 | MEDIAN | ALI | 1649253113 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 06212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06182017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620010 | T783XXA | Angioneurotic edema, initial encounter | ICD10 | 06212017 | 06182017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T09:12:21+00:00 | 251768497170 | 000111041-01 | Ruthan | Hughes | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620017 | R0600 | Dyspnea, unspecified | ICD10 | 06212017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T09:16:09+00:00 |  | 000028755-01 | ANNA | LOMBARDI | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620018 | E785 | Hyperlipidemia, unspecified | ICD10 | 06212017 | 06202017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T09:02:57+00:00 |  | 000116378-01 | Roger | Sigman | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620082 | R911 | Solitary pulmonary nodule | ICD10 | 06212017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T12:28:41+00:00 |  | 000079957-01 | Kathleen | Crespo | GOOD SAMARITAN HOSPITAL | 936463 |  | GOOD SAMARITAN HOSPITAL | 1508835828 | GOOD SAMARITAN HOSPITAL | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL | 1508835828 | Observation | OBSV | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620088 | R112 | Nausea with vomiting, unspecified | ICD10 | 06212017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T08:08:24+00:00 |  | 000081646-01 | Jodi | Cooperrider | EMERGENCY SERVICES INC | 937086 | LOREN A | LEIDHEISER | 1336189596 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06202017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621003 | T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 06212017 | 06202017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
