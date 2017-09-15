Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-12_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-12_OBS
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
| 08282017 | 2017-08-28T09:37:44+00:00 |  | 000099322-01 | Elmer | Boshears | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09122017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828078 | C801, N3000, R0902, R739 | Hyperglycemia, unspecified | ICD10 | 09122017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09122017 | 2017-09-12T10:32:21+00:00 | 263216927254 | 000029484-01 | DENZIL | COLLIER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912023 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09112017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T16:13:33+00:00 |  | 000075367-01 | Sandra | Noland | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912072 | R6889 | Other general symptoms and signs | ICD10 | 09122017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T09:45:55+00:00 | 251843797249 | 000030245-01 | BEVERLY | HOWARD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09062017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907018 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 09122017 | 09062017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09082017 | 2017-09-08T15:00:38+00:00 |  | 000030722-01 | Lena | Dillon | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911066 | N189 | Chronic kidney disease, unspecified | ICD10 | 09122017 | 09072017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T08:30:18+00:00 |  | 000028263-01 | ROBERT | HUPP | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09092017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911081 | C9590, J810, R079, R0989 | Oth symptoms and signs involving the circ and resp systems | ICD10 | 09122017 | 09092017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T08:24:41+00:00 | 261410927252 | 000023946-01 | ROBERT | DUNIGAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09092017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911008 | R0902 | Hypoxemia | ICD10 | 09122017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T09:46:45+00:00 |  | 000096041-01 | Gary | Kelley | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09122017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08092017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810047 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T10:37:51+00:00 |  | 000066148-01 | ROBERT | BOST | CARDIOTHORACIC & VASC SU | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905066 | I70234 | Athscl native art of right leg w ulcer of heel and midfoot | ICD10 | 09122017 | 09062017 | 09072017 | 35556, 35572, 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09122017 | 2017-09-12T09:00:54+00:00 | 251945297254 | 000026510-01 | GLENN | LIFF SR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912003 | R42 | Dizziness and giddiness | ICD10 | 09122017 | 09112017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09122017 | 2017-09-12T08:38:41+00:00 |  | 000005978-01 | RUTH | REBER | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | THE TIMKEN COMPANY | Reports | Observation | Inpatient | 09082017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912001 | I4892 | Unspecified atrial flutter | ICD10 | 09122017 | 09082017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09012017 | 2017-09-01T13:02:00+00:00 |  | 000060729-01 | Gerald | Mccorkle | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901053 | R109 | Unspecified abdominal pain | ICD10 | 09122017 | 08312017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09082017 | 2017-09-08T09:00:12+00:00 |  | 000085676-01 | Howard | Buskirk | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09122017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Inpatient | 09082017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908047 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09082017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09082017 | 2017-09-08T09:28:47+00:00 | 250693567251 | 000070938-01 | Hubert | Lund | SOUND PHYSICIANS OF OHI0 | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09082017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908018 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09082017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09122017 | 2017-09-12T09:08:10+00:00 | 250801657254 | 000064139-01 | SHIRLEY | MOORE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912004 | R4182 | Altered mental status, unspecified | ICD10 | 09122017 | 09112017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T10:57:28+00:00 | 262994817252 | 000102401-01 | ROSE | SULLIVAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911058 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T08:55:02+00:00 | 251649077251 | 000047143-01 | DONNA | FOUST | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09082017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911014 | R0602 | Shortness of breath | ICD10 | 09122017 | 09082017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09112017 | 2017-09-11T10:51:25+00:00 |  | 000096245-01 | Joyce | Knisley | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09122017 | Approved | MediGold Essential Care |  | Observation | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912040 | R6889 | Other general symptoms and signs | ICD10 | 09122017 | 09072017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09072017 | 2017-09-07T09:23:14+00:00 | 262837397249 | 000057688-01 | ALICE | LINVILLE | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09062017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907010 | D469, M6281, R627 | Adult failure to thrive | ICD10 | 09122017 | 09062017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09112017 | 2017-09-11T10:34:23+00:00 | 253299257252 | 000065471-01 | JOHNNY | NEWTON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911048 | R079 | Chest pain, unspecified | ICD10 | 09122017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T14:49:09+00:00 |  | 000040226-01 | B | HAUGHAWAOUT | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 09122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911065 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 09122017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
