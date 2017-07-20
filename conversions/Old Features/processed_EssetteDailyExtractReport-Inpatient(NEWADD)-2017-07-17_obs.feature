Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-17_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-17_OBS
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
| 06082017 | 2017-06-08T16:23:10+00:00 |  | 000087553-01 | Ralph | Lewis | MAYFIELD CLINIC | 942404 | VINCENT A | DINAPOLI | 1144482746 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 06192017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609001 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07172017 | 06192017 | 06212017 | 22558, 22853, 22845, 69990, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 2.0 |
| 07052017 | 2017-07-05T13:41:49+00:00 |  | 000077097-01 | Kenneth | Denny | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705088 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 07172017 | 07142017 | 07152017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:53:37+00:00 |  | 000076154-01 | F | Wells | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07042017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705103 | N200 | Calculus of kidney | ICD10 | 07172017 | 07042017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T10:29:01+00:00 | 259111877190 | 000078807-01 | Darrell | Morrison | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07092017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710039 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 07172017 | 07092017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T11:22:33+00:00 | 252096357191 | 000024325-01 | CARL | MYERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07102017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710059 | G9340 | Encephalopathy, unspecified | ICD10 | 07172017 | 07102017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T08:13:37+00:00 |  | 000057679-01 | JAMES | PAGE | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711024 | J189 | Pneumonia, unspecified organism | ICD10 | 07172017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T10:30:55+00:00 | 252347077192 | 000028059-01 | MARY | SELBE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07112017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712007 | K651 | Peritoneal abscess | ICD10 | 07172017 | 07112017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07122017 | 2017-07-12T11:09:31+00:00 | 250151087192 | 000030445-01 | THOMAS | BURNS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07112017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712010 | B370, B3781, R1314 | Dysphagia, pharyngoesophageal phase | ICD10 | 07172017 | 07112017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07122017 | 2017-07-12T12:55:08+00:00 | 257036327192 | 000116215-01 | GLEN | SIDWELL JR | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Southeast OH Essential Care | Reports | Observation | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712033 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07172017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T13:36:37+00:00 |  | 000087075-01 | Diane | Hetzel | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712072 | N10, N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 07172017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T15:45:25+00:00 | 250362137193 | 000042802-01 | JERRY | FLEET | HMP OF OHIO PC | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712074 | N390 | Urinary tract infection, site not specified | ICD10 | 07172017 | 07122017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07132017 | 2017-07-13T09:29:25+00:00 | 266583057193 | 000056393-01 | MARY | BORROR | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713010 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07172017 | 07122017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T09:46:32+00:00 | 254294277193 | 000054100-01 | JESSIE | COWAN | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713019 | N179 | Acute kidney failure, unspecified | ICD10 | 07172017 | 07122017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T09:57:21+00:00 | 250584017193 | 000117182-01 | DAN | JENKINS | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713024 | L0390 | Cellulitis, unspecified | ICD10 | 07172017 | 07122017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07132017 | 2017-07-13T10:01:06+00:00 | 164974327193 | 000002206-01 | BARBARA | MCCAMBRIDGE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07122017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713026 | G459, I639 | Cerebral infarction, unspecified | ICD10 | 07172017 | 07122017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T10:25:57+00:00 |  | 000084802-01 | Jimmie | Leonard | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07122017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713052 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07172017 | 07122017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T16:12:13+00:00 | 251032567194 | 000051984-01 | DONALD | STAGG | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713073 | E860, R531 | Weakness | ICD10 | 07172017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T09:23:11+00:00 | 2561755847195 | 000102504-01 | Connie | McDaniel | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714007 | N390 | Urinary tract infection, site not specified | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T09:40:49+00:00 | 252365897194 | 000042530-01 | RONALD | SINES | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714010 | I4891 | Unspecified atrial fibrillation | ICD10 | 07172017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T17:16:18+00:00 |  | 000110031-01 | Catherine | Mccoy | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07072017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714017 | I4891, J449, K5900, R079 | Chest pain, unspecified | ICD10 | 07172017 | 07072017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07142017 | 2017-07-14T10:24:43+00:00 | 263856597194 | 000072405-01 | James | Hicks | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714018 | N134 | Hydroureter | ICD10 | 07172017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T10:32:36+00:00 | 250552727194 | 000080118-01 | Argil | Horn | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714019 | I2699, R0602 | Shortness of breath | ICD10 | 07172017 | 07132017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T11:01:09+00:00 | 252997097195 | 000035404-01 | Ronald | Hurst | HMP OF OHIO PC | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714026 | R109 | Unspecified abdominal pain | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T08:54:23+00:00 |  | 000091388-01 | Colin | Ray Jr | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07132017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714046 | M71021 | Abscess of bursa, right elbow | ICD10 | 07172017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T08:16:18+00:00 |  | 000088435-01 | John | Callahan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07152017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717001 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 07172017 | 07152017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T09:29:45+00:00 |  | 000074903-01 | Barbara | Foris | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717009 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T09:45:04+00:00 |  | 000039099-01 | JUNE | GERHARDT | SZAMES, STEVEN E | 934913 | STEVEN E | SZAMES | 1063505238 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717011 | M2040 | Other hammer toe(s) (acquired), unspecified foot | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07152017 | 2017-07-15T10:38:17+00:00 |  | 000071935-01 | Richard | Showers | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717016 | E875 | Hyperkalemia | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07152017 | 2017-07-15T11:02:52+00:00 |  | 000076559-01 | Carlos | Bird | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717022 | R0600 | Dyspnea, unspecified | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T12:02:00+00:00 |  | 000046755-01 | JANET | WARD | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717038 | R1011 | Right upper quadrant pain | ICD10 | 07172017 | 07142017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T13:15:24+00:00 | 251196557195 | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07142017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717059 | T814XXD | Infection following a procedure, subsequent encounter | ICD10 | 07172017 | 07142017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T07:13:27+00:00 |  | 000055127-01 | THERESA | HILL | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07152017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717079 | D649 | Anemia, unspecified | ICD10 | 07172017 | 07152017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
