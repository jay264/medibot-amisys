Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_OBS
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
| 01032018 | 2018-01-03T15:13:40+00:00 |  | 000108738-01 | Beth | Crandall | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02022018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103122 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02022018 | 01302018 | 02012018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01252018 | 2018-01-25T13:47:34+00:00 |  | 000115844-01 | Scott | Christy | HUMPHREY, FREDERIC A | 906929 | FREDERIC A | HUMPHREY | 1366438848 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Observation | OBSV | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 02022018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 01242018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125074 | L0390 | Cellulitis, unspecified | ICD10 | 02022018 | 01242018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T12:20:35+00:00 |  | 000091274-01 | Jeffrey | Miller | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01272018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129083 | J189 | Pneumonia, unspecified organism | ICD10 | 02022018 | 01272018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01312018 | 2018-01-31T11:44:34+00:00 |  | 000077191-01 | Barbara | Greenlee | MOUNT CARMEL EAST PHYS | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131047 | K5660 | Unspecified intestinal obstruction | ICD10 | 02022018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01252018 | 2018-01-25T08:56:19+00:00 |  | 000056814-01 | SONDRA | BUCK | MOUNT CARMEL HLTH PRVDRS | 932450 | JOSHUA R | SILVERSTEIN | 1952587743 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01242018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125030 | I4891 | Unspecified atrial fibrillation | ICD10 | 02022018 | 01242018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T09:55:35+00:00 |  | 000105796-01 | Carol | Clark | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126021 | I501, I509, J90 | Pleural effusion, not elsewhere classified | ICD10 | 02022018 | 01252018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01262018 | 2018-01-26T10:36:35+00:00 |  | 000098818-01 | Lenard | Milburn | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01252018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126026 | N186 | End stage renal disease | ICD10 | 02022018 | 01252018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01262018 | 2018-01-26T10:51:37+00:00 |  | 000106584-01 | Gary | Lamb | KHN IP MED | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126027 | R000 | Tachycardia, unspecified | ICD10 | 02022018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01262018 | 2018-01-26T11:58:49+00:00 |  | 000096433-01 | John | Eaton | APOGEE MED GRP OHIO INC | 947678 | MICHELLE N | AKIKO | 1114285624 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126044 | R413 | Other amnesia | ICD10 | 02022018 | 01262018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01262018 | 2018-01-26T15:36:04+00:00 |  | 000109086-01 | Ruth | Ermlich | KNOX COMMUNITY HOSP GRP | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126065 | I2699, I5040 | Unsp combined systolic and diastolic (congestive) hrt fail | ICD10 | 02022018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T08:04:40+00:00 |  | 000065527-01 | FREDA | CRAIG | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129028 | R079 | Chest pain, unspecified | ICD10 | 02022018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T11:21:53+00:00 |  | 000114346-01 | Cinda | Rimer | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01262018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130001 | R079 | Chest pain, unspecified | ICD10 | 02022018 | 01262018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01302018 | 2018-01-30T14:27:16+00:00 |  | 000065639-01 | DAVID | RHOADS | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131007 | J189 | Pneumonia, unspecified organism | ICD10 | 02022018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T10:07:58+00:00 |  | 000047809-01 | BARBARA | FITZWATER | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131030 | I4891, J8410, J849 | Interstitial pulmonary disease, unspecified | ICD10 | 02022018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T11:31:28+00:00 |  | 000108889-01 | Joyce | Culp | MOUNT CARMEL HLTH PRVDRS | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202035 | I739 | Peripheral vascular disease, unspecified | ICD10 | 02022018 | 02012018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T14:14:43+00:00 |  | 000111828-01 | DONNA | ARCHER | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131004 | K5732, N730 | Acute parametritis and pelvic cellulitis | ICD10 | 02022018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T15:51:27+00:00 |  | 000081980-01 | Cindra | Pennington | MOUNT CARMEL HLTH SYS | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131017 | J90, K7581, K766, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 02022018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T13:14:53+00:00 |  | 000100369-01 | Ana | Alvares | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131031 | E871, R410 | Disorientation, unspecified | ICD10 | 02022018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T14:29:40+00:00 |  | 000113745-01 | Patricia | Harlow | KHN IP MED | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01292018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131034 | I4891, I5033, I509 | Heart failure, unspecified | ICD10 | 02022018 | 01292018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T11:11:16+00:00 |  | 000104634-01 | Rachel | Rumbaugh | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201038 | J200 | Acute bronchitis due to Mycoplasma pneumoniae | ICD10 | 02022018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T11:14:15+00:00 |  | 000079298-01 | David | Conrad | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201040 | I509 | Heart failure, unspecified | ICD10 | 02022018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
