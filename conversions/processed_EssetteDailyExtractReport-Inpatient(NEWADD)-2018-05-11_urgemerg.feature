Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-11_URGEMERG
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
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
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
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

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
| 05042018 | 2018-05-04T08:20:52+00:00 |  | 000111390-01 | SHERRY | MILLS | MOUNT CARMEL HLTH PRVDRS | 910318 | ELIZABETH A | KRALL | 1275759631 | MOUNT CARMEL WEST PSYCHI | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 05112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504005 | F312 | Bipolar disord, crnt episode manic severe w psych features | ICD10 | 05112018 | 05032018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05092018 | 2018-05-09T15:28:29+00:00 |  | 000114277-01 | Peggy | Whitaker | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05092018 | 05102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510015 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102018 | 2018-05-10T10:53:32+00:00 |  | 000119864-01 | LARRY | ROBERTS | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05092018 | 05102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510044 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T12:24:49+00:00 |  | 000020194-01 | WILLARD | CLARK | OHIOHEALTH PHYS GRP | 902249 | ANNE T | LITRIZZA | 1831172402 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424084 | R531 | Weakness | ICD10 | 05112018 | 04232018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03272018 | 2018-03-27T14:16:24+00:00 |  | 000115240-01 | Karen | Greve | UNIVERSITY OF CINCINNATI | 945752 | BRYAN J | GRIFFIN | 1851476998 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05112018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03262018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328066 | F319 | Bipolar disorder, unspecified | ICD10 | 05152018 | 03262018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 46.0 |
| 04172018 | 2018-04-17T08:50:02+00:00 |  | 000098520-01 | ROBERT | WYNN | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05112018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417033 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05112018 | 05082018 | 05092018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04272018 | 2018-04-27T14:12:46+00:00 |  | 000000720-01 | DARLENE | DICK | COPC CENTRAL OHIO PRIMAR | 902423 | ARADHI U | PANDYA | 1306829908 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427057 | G062 | Extradural and subdural abscess, unspecified | ICD10 | 05112018 | 04272018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05012018 | 2018-05-01T18:36:04+00:00 |  | 000005579-01 | MILDRED | ESTEPP | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502030 | I160 | HYPERTENSIVE URGENCY | ICD10 | 05112018 | 05012018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05042018 | 2018-05-04T13:49:57+00:00 |  | 000082215-01 | Ann | Griggs | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05092018 | 05102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504040 | M19079 | Primary osteoarthritis, unspecified ankle and foot | ICD10 | 05112018 | 05092018 | 05102018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04062018 | 2018-04-06T16:28:46+00:00 |  | 000098679-01 | ROBIN | NEFF | ADVANCED NEUROSURG INC | 915845 | JAMAL | TAHA | 1801861018 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05052018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409008 | M419, M5127, M48062 | M48062 | ICD10 | 05112018 | 05052018 | 05102018 | 22612, 22614, 22558, 22585, 22842, 63047, 63048, 22853, 69990, 20930, 20936, 77002, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | CPT | C4 |  |  |  | 2.0 |
| 04062018 | 2018-04-06T16:32:56+00:00 |  | 000057271-01 | SHARON | SCHUMACHER | SIDES, JAMES A | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05082018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409013 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05112018 | 05082018 | 05092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04122018 | 2018-04-12T14:39:30+00:00 |  | 000042865-01 | Sharon | Bowman | COLON & RECTAL SURG INC | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05072018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412060 | C20 | Malignant neoplasm of rectum | ICD10 | 05112018 | 05072018 | 05092018 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04192018 | 2018-04-19T14:39:20+00:00 |  | 000119819-01 | Mildred | Banks | ORTHOPEDIC & NEUROLOGICA | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05092018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419064 | M960 | Pseudarthrosis after fusion or arthrodesis | ICD10 | 05112018 | 05092018 | 05112018 | 22612, 22614, 22849, 20936, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05012018 | 2018-05-01T11:49:48+00:00 |  | 000065350-01 | JAMES | GRIFFITH | OHIOHEALTH PHYS GRP | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502009 | S0181XA | Laceration w/o foreign body of oth part of head, init encntr | ICD10 | 05112018 | 05012018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05062018 | 2018-05-06T08:46:03+00:00 |  | 000016124-01 | JAMES | CLARK | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507037 | I160 | HYPERTENSIVE URGENCY | ICD10 | 05112018 | 05052018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05082018 | 2018-05-08T10:16:13+00:00 |  | 000108846-01 | Stephen | Hoffman | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05062018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508065 | I4891, I5021, R0602 | Shortness of breath | ICD10 | 05112018 | 05062018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082018 | 2018-05-08T20:02:20+00:00 |  | 000011703-01 | JERRY | MILLER | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 05082018 | 05102018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509018 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05112018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T08:12:36+00:00 |  | 000092234-01 | CLARENCE | HOLLAND | GREENE MEM HSP SRVS INC | 901974 | LINDA E | BAILEY | 1972503357 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509024 | S8001XA | Contusion of right knee, initial encounter | ICD10 | 05112018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T15:37:46+00:00 |  | 000115385-01 | Simon | Krsteski | SOUND INPATIENT PHYS OF | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05082018 | 05092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510020 | N1339 | Other hydronephrosis | ICD10 | 05112018 | 05082018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092018 | 2018-05-09T16:54:00+00:00 |  | 000052265-01 | CAROL | HOFF | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05092018 | 05102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510023 | Z96651 | Presence of right artificial knee joint | ICD10 | 05112018 | 05092018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T08:45:18+00:00 |  | 000051094-01 | JUDITH | BARBER | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04232018 | 04252018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315022 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05112018 | 04232018 | 04252018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04202018 | 2018-04-20T11:05:20+00:00 |  | 000030183-01 | DOROTHY | NEIGHBORS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | TRINITY HEALTH | Fax | ACO - Pulmonary | Inpatient | 04192018 | 04212018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420037 | J439 | Emphysema, unspecified | ICD10 | 05112018 | 04192018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T14:37:30+00:00 |  | 000038001-01 | JERRY | FULLER | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425078 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 05112018 | 05022018 | 05042018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 05042018 | 2018-05-04T19:38:13+00:00 |  | 000042329-01 | TERRY | STEGALL | TRAUMA & CRITICAL CARE S | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507014 | S12100A | Unsp disp fx of second cervical vertebra, init for clos fx | ICD10 | 05112018 | 05042018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05072018 | 2018-05-07T18:02:06+00:00 |  | 000086541-01 | Charlotte | Holton | JACK STANKO MD LLC | 934869 | JACK | STANKO JR | 1891751319 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 05042018 | 05102018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508035 | I509, J90, R0600 | Dyspnea, unspecified | ICD10 | 05112018 | 05042018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05082018 | 2018-05-08T15:59:39+00:00 |  | 000053634-01 | DONALDA | CAUX | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508093 | Q282, R51 | Headache | ICD10 | 05112018 | 05072018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082018 | 2018-05-08T12:10:31+00:00 |  | 000011709-01 | MICHAEL | LOSACCO | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05112018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 05072018 | 05102018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509013 | J159 | Unspecified bacterial pneumonia | ICD10 | 05112018 | 05072018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
