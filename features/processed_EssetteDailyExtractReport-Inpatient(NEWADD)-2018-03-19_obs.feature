Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-19_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-19_OBS
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
| 03092018 | 2018-03-09T11:38:52+00:00 |  | 000108867-01 | RICHARD | TUTTLE | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309050 | R531 | Weakness | ICD10 | 03192018 | 03082018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03122018 | 2018-03-12T15:40:43+00:00 |  | 000042091-01 | DAVID | WHITE | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03102018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312111 | R509 | Fever, unspecified | ICD10 | 03192018 | 03102018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T15:19:28+00:00 |  | 000085593-01 | Doris | Liggett | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227091 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 03192018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03062018 | 2018-03-06T14:26:51+00:00 |  | 000035223-01 | BONNIE | POLING | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306082 | R0602 | Shortness of breath | ICD10 | 03192018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T08:03:04+00:00 |  | 000110529-01 | Bonnie | Walker | HOSPITALIST MEDICINE PHY | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313038 | E871, K529, R1084, R112, R197, R739 | Hyperglycemia, unspecified | ICD10 | 03192018 | 03122018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T13:24:23+00:00 |  | 000096425-01 | Linda | Dinnell | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315054 | K5660 | Unspecified intestinal obstruction | ICD10 | 03192018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T12:21:36+00:00 |  | 000012120-01 | RUBY | MARTINDALE | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316043 | E871, I959, R109 | Unspecified abdominal pain | ICD10 | 03192018 | 03162018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T14:21:39+00:00 |  | 000072160-01 | RUBY | LOVELY | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | TRINITY HEALTH | Reports | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316048 | K625 | Hemorrhage of anus and rectum | ICD10 | 03192018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T15:02:52+00:00 |  | 000119550-01 | Mary | Innis | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316054 | R6889 | Other general symptoms and signs | ICD10 | 03192018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T15:15:02+00:00 |  | 000099687-01 | Judith | Gibson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316057 | R05 | Cough | ICD10 | 03192018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03092018 | 2018-03-09T10:23:39+00:00 |  | 000095297-01 | Pearl | Baber | ADENA MEDICAL GROUP LLC | 932324 | MATTHEW W | CHRISTIAN | 1043260698 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309032 | N210 | Calculus in bladder | ICD10 | 03192018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T11:01:30+00:00 |  | 000075081-01 | Carole | Thomas | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309044 | R079 | Chest pain, unspecified | ICD10 | 03192018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T10:59:40+00:00 |  | 000101080-01 | Susan | Baldeschwiler | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312081 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03192018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T16:08:04+00:00 |  | 000113783-01 | Minnie | Scowden | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03092018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312110 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03192018 | 03092018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03122018 | 2018-03-12T15:45:04+00:00 |  | 000108866-01 | JOANNE | TUTTLE | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312113 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 03192018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T15:40:27+00:00 |  | 000121518-01 | Bonnie | Hall | KNOX COMMUNITY HOSPITAL | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312118 | R079 | Chest pain, unspecified | ICD10 | 03192018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03142018 | 2018-03-14T11:43:20+00:00 |  | 000074895-01 | Miriam | Schwaberow | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03132018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314040 | I4891, R079 | Chest pain, unspecified | ICD10 | 03192018 | 03132018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03142018 | 2018-03-14T14:29:46+00:00 |  | 000051656-01 | DONALD | THOMPSON | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314070 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 03192018 | 03132018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T15:24:44+00:00 |  | 000090847-01 | RALPH | SPRACKLEN | SURG ASSOC OF SPRINGFIEL | 902010 | JENNIFER M | DANIELS | 1457369696 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314074 | K460, K469, R112 | Nausea with vomiting, unspecified | ICD10 | 03192018 | 03132018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03152018 | 2018-03-15T08:06:45+00:00 |  | 000031770-01 | GENEVA | ANDERSON | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03132018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315009 | G8192, R05 | Cough | ICD10 | 03192018 | 03132018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T15:25:59+00:00 |  | 000036737-01 | BETTY | CRAMER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315050 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03192018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T09:30:32+00:00 |  | 000042450-01 | RUTH | CORDLE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316007 | K625 | Hemorrhage of anus and rectum | ICD10 | 03192018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T14:26:04+00:00 |  | 000034306-01 | IRENE | PARKER | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03152018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316050 | D6489 | Other specified anemias | ICD10 | 03192018 | 03152018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03162018 | 2018-03-16T15:17:42+00:00 |  | 000072061-01 | Grace | Pierce | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03192018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316058 | R05 | Cough | ICD10 | 03192018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T13:20:31+00:00 |  | 000092190-01 | Delvin | Carson | KNOX COMMUNITY HOSP GRP | 912867 | LAUREN E | MCDOWELL JACOB | 1801836424 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03152018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316062 | K3580 | Unspecified acute appendicitis | ICD10 | 03192018 | 03152018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03192018 | 2018-03-19T08:09:55+00:00 |  | 000105067-01 | Sue | Gardner | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319025 | R6889 | Other general symptoms and signs | ICD10 | 03192018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T12:01:17+00:00 |  | 000119328-01 | Jeweldean | Howington | TRIHEALTH G LLC | 950677 | WHITNEY | WHITIS | 1841639424 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03192018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 03082018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319069 | R0600 | Dyspnea, unspecified | ICD10 | 03192018 | 03082018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
