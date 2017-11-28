Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-27_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-27_OBS
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
| 11202017 | 2017-11-20T15:11:58+00:00 |  | 000071941-01 | Lowell | Adams | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11262017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120117 | I214, I499, R42 | Dizziness and giddiness | ICD10 | 11262017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11142017 | 2017-11-14T08:13:49+00:00 |  | 000044853-01 | RICHARD | BOWERS | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114096 | I509 | Heart failure, unspecified | ICD10 | 11272017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11062017 | 2017-11-06T13:10:08+00:00 |  | 000100060-01 | Robert | Powell | GENESIS MEDICAL GRP LLC | 941986 | ROBERT E | MOORE | 1023329737 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11032017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107047 | R079 | Chest pain, unspecified | ICD10 | 11272017 | 11032017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T11:46:54+00:00 |  | 000091962-01 | Kenneth | Dyer Jr | DAYTON SURGEONS INC | 901564 | JONATHAN E | VELASCO | 1962477661 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11112017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114061 | I998 | Other disorder of circulatory system | ICD10 | 11272017 | 11112017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11212017 | 2017-11-21T10:23:09+00:00 |  | 000079254-01 | William | Tharp | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121043 | Z742 | Need for assist at home & no house memb able to render care | ICD10 | 11272017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T09:47:04+00:00 |  | 000060960-01 | Richard | Robinson | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122043 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11272017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11042017 | 2017-11-04T08:55:03+00:00 |  | 000110529-01 | Bonnie | Walker | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11032017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106048 | J189 | Pneumonia, unspecified organism | ICD10 | 11272017 | 11032017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T07:33:07+00:00 |  | 000116522-01 | Melissa | Robinson | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122011 | R42 | Dizziness and giddiness | ICD10 | 11272017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T09:47:01+00:00 | 026661383-7329 | 000081949-01 | Kathleen | McMillen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11272017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 11262017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127034 | I4891 | Unspecified atrial fibrillation | ICD10 | 11272017 | 11262017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T15:20:35+00:00 |  | 000110806-01 | Willard | Miller | BARNESVILLE HOSPITAL | 904409 |  | BARNESVILLE HOSPITAL | 1235135450 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Observation | OBSV | Concurrent Review | CONC |  | BARNESVILLE HOSPITAL | 11272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10292017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031030 | I639, R55 | Syncope and collapse | ICD10 | 11272017 | 10292017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11212017 | 2017-11-21T10:06:20+00:00 |  | 000026449-01 | JOSIE | CLAY | SOUND PHYSICIANS OF OHI0 | 926861 | MOTAZ | HOSSEIN | 1922377977 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121038 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11272017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T10:28:58+00:00 |  | 000097715-01 | Russell | Snyder | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11232017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127021 | R079 | Chest pain, unspecified | ICD10 | 11272017 | 11232017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T17:12:39+00:00 |  | 000030123-01 | CARLENE | BAKER | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117031 | I442 | Atrioventricular block, complete | ICD10 | 11272017 | 11152017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T12:44:04+00:00 |  | 000033201-01 | DOROTHY | NICKELL | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11162017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127052 | R4182 | Altered mental status, unspecified | ICD10 | 11272017 | 11162017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T12:05:31+00:00 |  | 000089060-01 | Gail | Neighbarger | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117062 | K5669 | Other intestinal obstruction | ICD10 | 11272017 | 11162017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11222017 | 2017-11-22T13:49:47+00:00 |  | 000105834-01 | Martha | Caldwell | MED ASSOCS OF CAMBRIDGE | 922026 | MARK | GOGGIN | 1518962612 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122069 | I4891 | Unspecified atrial fibrillation | ICD10 | 11272017 | 11212017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T12:45:14+00:00 |  | 000088622-01 | Charles | Smith | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11162017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127061 | R0602 | Shortness of breath | ICD10 | 11272017 | 11162017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T09:48:19+00:00 |  | 000112578-01 | Glen | Adams | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11182017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120080 | M6281 | Muscle weakness (generalized) | ICD10 | 11272017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T07:28:11+00:00 |  | 000110368-01 | Charles | Thompson | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122007 | R0602 | Shortness of breath | ICD10 | 11272017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:22:03+00:00 |  | 000100445-01 | June | Faust | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11142017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115068 | D649, I509, R52 | Pain, unspecified | ICD10 | 11272017 | 11142017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T15:21:28+00:00 |  | 000084896-01 | Jacob | Grob | SOUND INPATIENT PHYS OF | 925203 | ASAD S | ALI | 1053386938 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11152017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116035 | J189, N179, R748 | Abnormal levels of other serum enzymes | ICD10 | 11272017 | 11152017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T09:49:47+00:00 | 250475297329 | 000033550-01 | ALMA | HOCHULI | MOUNT CARMEL HLTH PRVDRS | 926743 | LORI | WITTER | 1164474268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127036 | I10 | Essential (primary) hypertension | ICD10 | 11272017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T12:28:01+00:00 |  | 000107134-01 | Phyllis | Barnhart | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11112017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114062 | E785 | Hyperlipidemia, unspecified | ICD10 | 11272017 | 11112017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T09:55:44+00:00 | 250562337328 | 000094645-01 | Bill | Jeffrey | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127038 | R509 | Fever, unspecified | ICD10 | 11272017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T10:54:25+00:00 |  | 000035732-01 | MARY | MONAHAN | MIAMI VALLEY HSPISTS GRP | 944319 | ASIF | JAN | 1366798217 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114057 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11272017 | 11102017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T15:22:07+00:00 |  | 000027249-01 | JOHN | WILLIAMS | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114077 | K625 | Hemorrhage of anus and rectum | ICD10 | 11272017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11262017 | 2017-11-26T16:40:59+00:00 |  | 000018354-01 | PATRICIA | KENNIS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171126015 | I4891 | Unspecified atrial fibrillation | ICD10 | 11272017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T08:00:50+00:00 |  | 000054475-01 | Thomas | Keane | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11232017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127012 | D649, J811 | Chronic pulmonary edema | ICD10 | 11272017 | 11232017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11242017 | 2017-11-24T13:11:04+00:00 |  | 000087540-01 | Lucille | Mitchell | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11232017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127067 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 11272017 | 11232017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11242017 | 2017-11-24T08:46:51+00:00 |  | 000085590-01 | Millard | Wyatt | S DAYTON ACUTE CARE CNSL | 919952 | RUSSELL S | HARVEY | 1285883934 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127081 | E1310, E806 | Other disorders of bilirubin metabolism | ICD10 | 11272017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T09:24:33+00:00 |  | 000080932-01 | Nellie | Rutledge | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11242017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127149 | Z950 | Presence of cardiac pacemaker | ICD10 | 11272017 | 11242017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11242017 | 2017-11-24T12:54:28+00:00 |  | 000099989-01 | Evelyn | Johnson | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11232017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127065 | R531 | Weakness | ICD10 | 11272017 | 11232017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T11:44:11+00:00 | 172624607328 | 000065999-01 | Barbara | Voehringer | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127080 | M549 | Dorsalgia, unspecified | ICD10 | 11272017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11222017 | 2017-11-22T12:28:00+00:00 |  | 000072342-01 | Sharon | Adams | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11222017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122058 | J189, J449, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11272017 | 11222017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T14:25:40+00:00 | 262777267330 | 000040325-01 | KENNETH | COPE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127109 | R079 | Chest pain, unspecified | ICD10 | 11272017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T14:52:22+00:00 | 251109137331 | 000055881-01 | KOSMAS | SYNADINOS | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11262017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127121 | S92302A | Fracture of unsp metatarsal bone(s), left foot, init | ICD10 | 11272017 | 11262017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T12:16:56+00:00 | 256469717329 | 000069327-01 | SANDRA | DOLAN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11252017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127086 | R55 | Syncope and collapse | ICD10 | 11272017 | 11252017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T13:06:14+00:00 |  | 000092422-01 | Harold | Garrett | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121070 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 11272017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T13:28:39+00:00 |  | 000099607-01 | M Oravell | Mclean | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11162017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117069 | G9340, R531 | Weakness | ICD10 | 11272017 | 11162017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11242017 | 2017-11-24T11:12:27+00:00 |  | 000103908-01 | DOLLETTA | PAUL | SOUND KENWOOD HSPISTS OF | 928796 | KERRY A | LECKY | 1396952651 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127028 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 11272017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T17:02:31+00:00 |  | 000092417-01 | James | Lenhart | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11202017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122018 | L0390, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 11272017 | 11202017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
