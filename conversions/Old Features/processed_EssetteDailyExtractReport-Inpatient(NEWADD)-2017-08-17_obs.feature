Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-17_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-17_OBS
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
| 07162017 | 2017-07-16T15:26:54+00:00 |  | 000001811-01 | JOYCE | MILLER | RIVERSIDE SURG ASSOC INC | 908157 | OSCAR R | RUIZ | 1275532038 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07162017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717071 | S0101XD | Laceration without foreign body of scalp, subs encntr | ICD10 | 08172017 | 07162017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T13:40:17+00:00 |  | 000096095-01 | John | Mcconnell | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08172017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816067 | I471, R079 | Chest pain, unspecified | ICD10 | 08172017 | 08152017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T13:43:08+00:00 |  | 000067166-01 | JERRY | FAIRCHILD | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811061 | R109 | Unspecified abdominal pain | ICD10 | 08172017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T11:04:32+00:00 |  | 000012312-01 | CLYDE | RANNEBARGER | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815100 | R42 | Dizziness and giddiness | ICD10 | 08172017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08072017 | 2017-08-07T09:22:10+00:00 |  | 000087611-01 | Janice | Jackson | APOGEE MED GRP OHIO INC | 945268 | SEGUN P | ADEOYE | 1629418025 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08052017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808008 | R0602, R062, R079 | Chest pain, unspecified | ICD10 | 08172017 | 08052017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T09:10:43+00:00 | 251407127226 | 000064480-01 | BETTY | BURKE | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815003 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T09:53:08+00:00 |  | 000075121-01 | Shirley | Simmons | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814106 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08172017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T11:55:46+00:00 |  | 000086877-01 | Charles | Kirkbride | MARIETTA HLTH CARE PHYS | 945687 | WARNER | WANG | 1831358464 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 08122017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814123 | N179 | Acute kidney failure, unspecified | ICD10 | 08172017 | 08122017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08152017 | 2017-08-15T11:12:47+00:00 |  | 000067172-01 | PAUL | GWILYM | OHIOHEALTH PHYS GRP | 944872 | THOMAS E | SONNANSTINE IV | 1396852927 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815102 | K9423 | Gastrostomy malfunction | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T10:45:30+00:00 | 251976717224 | 000070976-01 | Elizabeth | Smith | SOUND PHYSICIANS OF OHI | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08122017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814046 | I5031 | Acute diastolic (congestive) heart failure | ICD10 | 08172017 | 08122017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07122017 | 2017-07-12T11:40:09+00:00 |  | 000037308-01 | GLORIA | GORDON | CENTRAL OH HSPISTS INC | 911475 | JAYMIN | PATEL | 1780785568 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712064 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08172017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08132017 | 2017-08-13T16:44:35+00:00 |  | 000003780-01 | Mary Jo | Agosta | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814031 | I509 | Heart failure, unspecified | ICD10 | 08172017 | 08122017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T11:51:57+00:00 |  | 000023694-01 | BETTY | COOPER | OHIOHEALTH PHYS GRP | 940395 | MATTHEW | MOORMAN | 1386687804 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711052 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08172017 | 07102017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08132017 | 2017-08-13T14:38:37+00:00 |  | 000101733-01 | Mary | Scott | COPC CENTRAL OHIO PRIMAR | 914691 | JOANNA L | FAILOR | 1922217686 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08122017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814073 | R55 | Syncope and collapse | ICD10 | 08172017 | 08122017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08152017 | 2017-08-15T09:20:26+00:00 | 251797647226 | 000010726-01 | RUTH | HILL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08142017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815007 | R109 | Unspecified abdominal pain | ICD10 | 08172017 | 08142017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T14:49:07+00:00 |  | 000053067-01 | ROGER | MAST | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08082017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809021 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08172017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T09:40:08+00:00 | 255050337227 | 000103118-01 | Merlin | Hamler | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815015 | J90, R0602 | Shortness of breath | ICD10 | 08172017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T08:08:22+00:00 |  | 000051048-01 | LARRY | PRICE | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817001 | I4891 | Unspecified atrial fibrillation | ICD10 | 08172017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:36:27+00:00 |  | 000084426-01 | Mary | Mathews | ARBOR VIEW FAM MED INC | 948280 | STEPHANIE | MESKO | 1780926881 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08112017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814095 | R109 | Unspecified abdominal pain | ICD10 | 08172017 | 08112017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08162017 | 2017-08-16T12:23:30+00:00 |  | 000072515-01 | Janice | Smith | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816065 | C3490, C50919, N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 08172017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T08:13:37+00:00 | 168734217222 | 000098801-01 | Clayton | Morris | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08102017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810006 | J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08172017 | 08102017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08152017 | 2017-08-15T15:02:30+00:00 |  | 000079844-01 | Mary | Collins | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816068 | I5031, J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08162017 | 2017-08-16T15:54:59+00:00 |  | 000045475-01 | LINDA | SNOOR | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08122017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817020 | R6889 | Other general symptoms and signs | ICD10 | 08172017 | 08122017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03172017 | 2017-03-17T15:20:13+00:00 |  | 000074755-01 | Joyce | Gibson | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152017 | 03182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170324091930.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170322020 | R079 | Chest pain, unspecified | ICD10 | 08172017 | 03152017 | 03182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T16:01:42+00:00 |  | 000040824-01 | CHARLES | DERENBERGER | COPC CENTRAL OHIO PRIMAR | 906381 | SHUNAID M | PATHAN | 1477726743 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802051 | N390 | Urinary tract infection, site not specified | ICD10 | 08172017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T08:40:15+00:00 |  | 000098380-01 | Brenda | Clemmons | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629035 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08172017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08152017 | 2017-08-15T10:08:32+00:00 | 179216187227 | 000096965-01 | Duane | Wegner | SOUND PHYSICIANS OF OHI | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815024 | I5041, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08172017 | 08152017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08152017 | 2017-08-15T07:49:08+00:00 |  | 000045921-01 | NANCY | HERRON | SOUND PHYSICIANS OF OHI | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08132017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815074 | J159 | Unspecified bacterial pneumonia | ICD10 | 08172017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T14:38:17+00:00 |  | 000069945-01 | Cindy | Shaffer | APOGEE MED GRP OHIO INC | 945268 | SEGUN P | ADEOYE | 1629418025 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816041 | R0602, R079, R109 | Unspecified abdominal pain | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
