Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_OBS
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
| 10042017 | 2017-10-04T10:11:19+00:00 | 256679277276 | 000069764-01 | RUBY | MCFADDEN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 10042017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004036 | I10 | Essential (primary) hypertension | ICD10 | 10062017 | 10042017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10052017 | 2017-10-05T09:56:11+00:00 | 250495657277 | 000045804-01 | JAMES | HILL | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10042017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005018 | I509 | Heart failure, unspecified | ICD10 | 10062017 | 10042017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T09:33:50+00:00 | 250932317276 | 000035180-01 | DELBERT | ROBINSON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10032017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004019 | R55 | Syncope and collapse | ICD10 | 10062017 | 10032017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T10:37:52+00:00 | 251066997278 | 000029634-01 | GUIDO | SALVATO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10052017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005033 | I493 | Ventricular premature depolarization | ICD10 | 10062017 | 10052017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T10:41:12+00:00 |  | 000080932-01 | Nellie | Rutledge | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10032017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004045 | L0390 | Cellulitis, unspecified | ICD10 | 10062017 | 10032017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092017 | 2017-05-09T14:16:25+00:00 |  | 000116839-01 | Jerome | Thibaut | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10062017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 05082017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170525106006.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510056 | D7289, J189 | Pneumonia, unspecified organism | ICD10 | 10062017 | 05082017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09292017 | 2017-09-29T09:41:48+00:00 |  | 000090053-01 | Nancy | May | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 10062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09282017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929024 | R1033 | Periumbilical pain | ICD10 | 10062017 | 09282017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T07:38:01+00:00 |  | 000036596-01 | HOMER | SCAGGS JR | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10052017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006001 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 10062017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09292017 | 2017-09-29T15:41:09+00:00 |  | 000043418-01 | JOANN | CRAWFORD | ALLIANCE PHYSICIANS INC | 947070 | CHRISTOPHER | MANHART | 1508191354 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929058 | I160 | HYPERTENSIVE URGENCY | ICD10 | 10062017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T10:47:08+00:00 |  | 000086882-01 | Arnold | Strausbaugh | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 10062017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10042017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004048 | R0902 | Hypoxemia | ICD10 | 10062017 | 10042017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T10:03:23+00:00 |  | 000069963-01 | Lorraine | Dennison | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10042017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005029 | I509 | Heart failure, unspecified | ICD10 | 10062017 | 10042017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09292017 | 2017-09-29T15:19:27+00:00 |  | 000048413-01 | DONNA | SPARKS | APOGEE MED GRP OHIO INC | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929056 | R42 | Dizziness and giddiness | ICD10 | 10062017 | 09282017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09292017 | 2017-09-29T14:56:17+00:00 |  | 000016323-01 | DONALD | MALOTT | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929050 | I480, R531 | Weakness | ICD10 | 10062017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09282017 | 2017-09-28T10:59:25+00:00 |  | 000028263-01 | ROBERT | HUPP | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928048 | R079 | Chest pain, unspecified | ICD10 | 10062017 | 09272017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09292017 | 2017-09-29T13:29:39+00:00 |  | 000116000-01 | DAVID | BROMWICH | COPC CENTRAL OHIO PRIMAR | 904202 | LOUIS W | HEVEZI | 1386689768 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09282017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929037 | I4892 | Unspecified atrial flutter | ICD10 | 10062017 | 09282017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09292017 | 2017-09-29T13:34:42+00:00 |  | 000031667-01 | ROBERT | MARTZO | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09292017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929042 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10062017 | 09282017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T09:09:21+00:00 |  | 000079738-01 | Ronald | Cunningham | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10012017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003042 | R531, R55 | Syncope and collapse | ICD10 | 10062017 | 10012017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T15:34:41+00:00 | 250691977275 | 000018994-01 | ANDREA | LONGWELL | MOUNT CARMEL HLTH SYS | 948188 | ROBERT F | BATTISTI | 1346501319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10022017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002140 | R0602 | Shortness of breath | ICD10 | 10062017 | 10022017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10032017 | 2017-10-03T09:12:19+00:00 | 253848427275 | 000028286-01 | FLORA | KAPTEINA | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10022017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003014 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10062017 | 10022017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T09:15:29+00:00 | 250018787276 | 000080776-01 | John | Aldenderfer | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10032017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004011 | R079 | Chest pain, unspecified | ICD10 | 10062017 | 10032017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T14:31:40+00:00 |  | 000117763-01 | Charles | Bartram | CARDIOTHORACIC & VASC SU | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10052017 | 10062017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003075 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 10062017 | 10052017 | 10062017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10022017 | 2017-10-02T12:54:28+00:00 | 256971027273 | 000070087-01 | Dorothy | Skeens | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09302017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002090 | N390 | Urinary tract infection, site not specified | ICD10 | 10062017 | 09302017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10022017 | 2017-10-02T18:39:19+00:00 |  | 000088953-01 | Virginia | Gwin | GENESIS MEDICAL GRP LLC | 942900 | HIMAD U K | KHATTAK | 1265691364 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09302017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003004 | K5732, M5441, R1032 | Left lower quadrant pain | ICD10 | 10062017 | 09302017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10042017 | 2017-10-04T13:51:19+00:00 |  | 000113582-01 | Lois | Bower | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10032017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004059 | J189, J90, R600 | Localized edema | ICD10 | 10062017 | 10032017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10042017 | 2017-10-04T09:58:09+00:00 | 251344437276 | 000036697-01 | PHYLLIS | BEST | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004030 | J45909 | Unspecified asthma, uncomplicated | ICD10 | 10062017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T10:30:49+00:00 | 265110217277 | 000042634-01 | MARION | DEVENEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005031 | R001 | Bradycardia, unspecified | ICD10 | 10062017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10062017 | 2017-10-06T10:19:31+00:00 | 251729537280 | 000039089-01 | BARBARA | GEORGE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 10052017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006031 | H8110 | Benign paroxysmal vertigo, unspecified ear | ICD10 | 10062017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10032017 | 2017-10-03T09:09:21+00:00 |  | 000015338-01 | FRANCIS | SMITH | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10022017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003041 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 10062017 | 10022017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
