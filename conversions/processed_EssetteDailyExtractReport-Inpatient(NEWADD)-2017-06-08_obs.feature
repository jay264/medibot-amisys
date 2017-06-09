Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-08_OBS
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
| 05032017 | 2017-05-03T09:50:37+00:00 |  | 000086333-01 | Lynne | Hawk | HMP OF OHIO PC | 915074 | ARINZE E | AKUSOBA | 1366517591 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06082017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05022017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503070 | D649 | Anemia, unspecified | ICD10 | 06082017 | 05022017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082017 | 2017-05-08T14:12:16+00:00 |  | 000080721-01 | James | Paisley | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06082017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 05082017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509074 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 06082017 | 05082017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T13:03:24+00:00 |  | 000091046-01 | Beatrice | Gibson | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523065 | M6281, R2689, R4781 | Slurred speech | ICD10 | 06082017 | 05222017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T12:55:10+00:00 |  | 000076489-01 | Robert | Crabtree | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523066 | I509, R0602, R0789 | Other chest pain | ICD10 | 06082017 | 05222017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06042017 | 2017-06-04T11:15:55+00:00 |  | 000076455-01 | Paul | Gudorf | INTERNAL MED CARE INC | 904867 | TROY A | TYNER | 1003814526 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605003 | A419, R0902 | Hypoxemia | ICD10 | 06082017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06042017 | 2017-06-04T12:49:32+00:00 |  | 000091498-01 | Joseph | Opperman | SWEST INPATIENT PHYS LLC | 931477 | ROBERT W | MOORE | 1780741058 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06012017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605006 | R531 | Weakness | ICD10 | 06082017 | 06012017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T09:57:01+00:00 | 025066013-7154 | 000117135-01 | Deidre | Legg | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605028 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 06082017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T09:59:01+00:00 | 025646652-7153 | 000108826-01 | Charles | Tague | CEN OH PRIMARY CARE SPEC | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06022017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605029 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 06082017 | 06022017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T08:18:12+00:00 |  | 000097897-01 | Harold | Yates | AAMIR KHAN MD INC | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06042017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605041 | I509, J90 | Pleural effusion, not elsewhere classified | ICD10 | 06082017 | 06042017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T10:24:44+00:00 |  | 000050105-01 | LINDA | CARROLL | HMP OF OHIO PC | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06022017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605072 | I509 | Heart failure, unspecified | ICD10 | 06082017 | 06022017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T13:46:39+00:00 |  | 000074647-01 | Ellen | Holbrook | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06042017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605107 | E860 | Dehydration | ICD10 | 06082017 | 06042017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T14:45:53+00:00 |  | 000067766-01 | MARJORIE | RUSSELL | KHN IP MED | 948667 | JEREMY L | CHAPMAN | 1013341098 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06082017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 06042017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605122 | R0902 | Hypoxemia | ICD10 | 06082017 | 06042017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T14:36:39+00:00 |  | 000096377-01 | Mary | Debevoise | RHODES, JAMIE A | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06042017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605124 | I509, R079 | Chest pain, unspecified | ICD10 | 06082017 | 06042017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T16:10:54+00:00 |  | 000092503-01 | John | Pinter | OHIOHEALTH PHYS GRP | 944928 | HARUKO | OKADA | 1326200346 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06042017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605142 | S6992XA | Unsp injury of left wrist, hand and finger(s), init encntr | ICD10 | 06082017 | 06042017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T08:18:26+00:00 |  | 000093046-01 | Thomas | Gardner | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606004 | N179 | Acute kidney failure, unspecified | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06062017 | 2017-06-06T08:35:37+00:00 |  | 000038380-01 | PATSY | KOVACS | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606011 | E039 | Hypothyroidism, unspecified | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06062017 | 2017-06-06T08:42:58+00:00 |  | 000111474-01 | Jack | Emde | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06082017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606031 | I639, R404 | Transient alteration of awareness | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T09:51:01+00:00 | 025488875-7157 | 000068974-01 | PHYLLIS | LOGUE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606034 | I10 | Essential (primary) hypertension | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06062017 | 2017-06-06T09:53:06+00:00 | 017107669-7156 | 000099403-01 | Robert | Randle | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606035 | J9621, M109 | Gout, unspecified | ICD10 | 06082017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T10:07:55+00:00 | 026005948-7156 | 000022732-01 | BERNARD | STAUCH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606042 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T10:34:59+00:00 |  | 000108517-01 | David | Baum | MERCY HEALTH PHYSICIANS | 921535 | MATTHEW G | WITSKEN | 1184679516 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 06082017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06052017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606046 | R42 | Dizziness and giddiness | ICD10 | 06082017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T11:17:20+00:00 |  | 000086467-01 | Ronald | Dwire | ALLIANCE PHYSICIANS INC | 919922 | JODY L | SHORT | 1053527523 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606047 | I6523, I779 | Disorder of arteries and arterioles, unspecified | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T11:37:34+00:00 |  | 000116339-01 | BETTY | LARRICK | STANLEY, STEPHEN R | 921972 | STEPHEN R | STANLEY | 1770571309 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606049 | E872, T814XXA | Infection following a procedure, initial encounter | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T11:22:42+00:00 |  | 000045521-01 | THOMAS | MINER | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606051 | I679 | Cerebrovascular disease, unspecified | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T11:54:03+00:00 |  | 000103653-01 | Emma | Williams | ALLIANCE PHYSICIANS INC | 914158 | JACOB B | GIBSON | 1780698811 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606053 | R079 | Chest pain, unspecified | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06062017 | 2017-06-06T15:42:03+00:00 |  | 000069945-01 | Cindy | Shaffer | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606074 | I959 | Hypotension, unspecified | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T08:08:51+00:00 |  | 000061305-01 | FLORENCE | COPELAND | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607002 | R079 | Chest pain, unspecified | ICD10 | 06082017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T09:46:54+00:00 | 025692339-7157 | 000025508-01 | ESTHER | COX | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607033 | R109 | Unspecified abdominal pain | ICD10 | 06082017 | 06062017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T10:14:12+00:00 |  | 000049430-01 | OTIS | STUMP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607038 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 06082017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T13:04:28+00:00 | 026065774-7157 | 000003542-01 | Patricia | Driscoll | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 06062017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607050 | R079 | Chest pain, unspecified | ICD10 | 06082017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T09:31:23+00:00 |  | 000082828-01 | Odessa | Coe | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 06082017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06072017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608026 | R079 | Chest pain, unspecified | ICD10 | 06082017 | 06072017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T09:17:10+00:00 |  | 000096382-01 | Robert | Mount | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05292017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608034 | N179 | Acute kidney failure, unspecified | ICD10 | 06082017 | 05292017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06082017 | 2017-06-08T14:26:02+00:00 | 025148649-7147 | 000030426-01 | NOVA | CLIFTON | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 06062017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608058 | I429 | Cardiomyopathy, unspecified | ICD10 | 06082017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
