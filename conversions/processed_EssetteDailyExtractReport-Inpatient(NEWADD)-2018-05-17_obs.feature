Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-17_OBS
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
| 05072018 | 2018-05-07T09:05:12+00:00 |  | 000039402-01 | STANLEY | MASON | FAIRFIELD HLTHCARE PROFS | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507086 | I2510, M549, R079 | Chest pain, unspecified | ICD10 | 05172018 | 05062018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T08:59:00+00:00 |  | 000007880-01 | DELLA | ADAMS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05112018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510003 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05172018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T11:11:44+00:00 |  | 000097992-01 | Marty | Williams | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510008 | R531 | Weakness | ICD10 | 05172018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T11:18:38+00:00 |  | 000029391-01 | MARY | FAGELLO | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05122018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515044 | K921, R197 | Diarrhea, unspecified | ICD10 | 05172018 | 05122018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T11:14:02+00:00 |  | 000042329-01 | TERRY | STEGALL | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05142018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515101 | D649 | Anemia, unspecified | ICD10 | 05172018 | 05142018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02202018 | 2018-02-20T11:31:01+00:00 |  | 000017338-01 | DONALD | HILL | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180221002 | M48062 | M48062 | ICD10 | 05172018 |  | 04062018 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04262018 | 2018-04-26T14:00:21+00:00 |  | 000104726-01 | Ruth | Crow | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05172018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426054 | R55, S42213A | Unsp disp fx of surgical neck of unsp humerus, init | ICD10 | 05172018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05092018 | 2018-05-09T08:35:51+00:00 |  | 000106644-01 | Everett | Williams | HEALTHSTAR MED SRVS PLLC | 908964 | BONNIE | RASHID | 1114997889 | LEE MEMORIAL HOSPITAL | 906821 | 1558302570 | LEE MEMORIAL HEALTH SYSTEMS | 1740227099 | Observation | OBSV | Concurrent Review | CONC |  | LEE MEMORIAL HEALTH SYSTEMS | 05172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509027 | I729 | Aneurysm of unspecified site | ICD10 | 05172018 | 05082018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05142018 | 2018-05-14T09:25:07+00:00 |  | 000059298-01 | JAMES | PETTET | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514071 | R109 | Unspecified abdominal pain | ICD10 | 05172018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T14:05:01+00:00 |  | 000054791-01 | FANNY | AMLIN | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05142018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515084 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 05172018 | 05142018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05162018 | 2018-05-16T11:08:36+00:00 |  | 000114418-01 | Richard | Darr | ST JOSEPH HOSPITAL | 934657 |  | ST JOSEPH HOSPITAL | 1881632818 | ST JOSEPH HOSPITAL | 934657 | 1881632818 | ST JOSEPH HOSPITAL | 1881632818 | Observation | OBSV | Concurrent Review | CONC |  | ST JOSEPH HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05152018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180516066 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05172018 | 05152018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T09:18:24+00:00 |  | 000108625-01 | Carl | Birkemeyer | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05172018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04272018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430040 | C169, R55 | Syncope and collapse | ICD10 | 05172018 | 04272018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04302018 | 2018-04-30T14:19:02+00:00 |  | 000076602-01 | Sharon | Harper | MIAMI VALLEY HSPISTS GRP | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04292018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430061 | R079 | Chest pain, unspecified | ICD10 | 05172018 | 04292018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05022018 | 2018-05-02T15:37:14+00:00 |  | 000113222-01 | Mykael | Szalankiewicz | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05172018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502074 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05172018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05022018 | 2018-05-02T15:49:57+00:00 |  | 000031472-01 | THOMAS | WARDELL | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04292018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502083 | R109, R112 | Nausea with vomiting, unspecified | ICD10 | 05172018 | 04292018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05102018 | 2018-05-10T08:46:09+00:00 |  | 000108518-01 | Diane | Clonch | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510033 | L03116, N179 | Acute kidney failure, unspecified | ICD10 | 05172018 | 05092018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T10:35:03+00:00 |  | 000085163-01 | Janet | Haddox | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511018 | E860, R1110 | Vomiting, unspecified | ICD10 | 05172018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T10:57:42+00:00 |  | 000027030-01 | BETTY | SLADE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511022 | R079 | Chest pain, unspecified | ICD10 | 05172018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05112018 | 2018-05-11T11:06:34+00:00 |  | 000121546-01 | ERMA | CIRIACHI | SOUND INPATIENT PHYS OF | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05102018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180511023 | I10, R079 | Chest pain, unspecified | ICD10 | 05172018 | 05102018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05152018 | 2018-05-15T09:49:12+00:00 |  | 000037741-01 | ROBERT | MOATS | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05142018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515075 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05172018 | 05142018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05162018 | 2018-05-16T08:26:31+00:00 |  | 000087654-01 | Ida | Noll | FAIRFIELD MEDICAL CENTER | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05172018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 05152018 | 05172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180516021 | R0602 | Shortness of breath | ICD10 | 05172018 | 05152018 | 05172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05162018 | 2018-05-16T15:25:59+00:00 |  | 000096865-01 | Dorothy | Cline | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05172018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05152018 | 05162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180516048 | R000 | Tachycardia, unspecified | ICD10 | 05172018 | 05152018 | 05162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172018 | 2018-05-17T13:33:26+00:00 |  | 000063907-01 | LEO | OESTREICHER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05122018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180517044 | R6889 | Other general symptoms and signs | ICD10 | 05172018 | 05122018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172018 | 2018-05-17T13:41:35+00:00 |  | 000068756-01 | DAVID | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05172018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05122018 | 05152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180517047 | R6889 | Other general symptoms and signs | ICD10 | 05172018 | 05122018 | 05152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
