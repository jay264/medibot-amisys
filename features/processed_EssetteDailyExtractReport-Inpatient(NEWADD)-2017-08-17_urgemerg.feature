Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-17_URGEMERG
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
| 08012017 | 2017-08-01T12:45:18+00:00 |  | 000032978-01 | RICHARD | GRIFFIN | OHIOHEALTH PHYS GRP | 943241 | THANH V | NGUYEN | 1073755294 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801119 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 08172017 | 08012017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 08022017 | 2017-08-02T15:56:17+00:00 |  | 000050004-01 | MACKLIN | CHRISTY | SOUND PHYSICIANS OF OHI | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802087 | C649, K922, R748 | Abnormal levels of other serum enzymes | ICD10 | 08172017 | 08012017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07302017 | 2017-07-30T14:00:17+00:00 |  | 000081386-01 | Gloria | Brown | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07302017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731083 | E162 | Hypoglycemia, unspecified | ICD10 | 08172017 | 07302017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08112017 | 2017-08-11T09:52:00+00:00 | 251715307222 | 000012974-01 | MARY | GALENTINE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08102017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811009 | I4891 | Unspecified atrial fibrillation | ICD10 | 08172017 | 08102017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08092017 | 2017-08-09T09:21:08+00:00 | 025729420-7179 | 000093381-01 | Paul | Hotchkiss | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08152017 | 08162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809014 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | 08152017 | 08162017 | 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T12:17:55+00:00 |  | 000081845-01 | Rodney | Goff | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 906189 | 1285785535 | SELECT SPECIALTY HOSPITAL COLUMBUS E | 1285785535 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS E | 08172017 | Denied | MediGold Essential Care | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 08172017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170815057 | A4152, K550, M86159 | Other acute osteomyelitis, unspecified femur | ICD10 | 08172017 | 08172017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07312017 | 2017-07-31T09:46:12+00:00 |  | 000075743-01 | Bertie | Hash | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08162017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731027 | D4101 | Neoplasm of uncertain behavior of right kidney | ICD10 | 08172017 | 08102017 | 08162017 | 50234 | NPHRECTMY W TOT URETRCTMY SAM INCIS | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 08112017 | 2017-08-11T10:10:42+00:00 | 263099767222 | 000015368-01 | NORMA | MILLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08102017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811016 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08172017 | 08102017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08012017 | 2017-08-01T12:38:45+00:00 |  | 000098188-01 | Gerald | Stuller | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801078 | R109 | Unspecified abdominal pain | ICD10 | 08172017 | 07312017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08102017 | 2017-08-10T16:48:43+00:00 |  | 000105638-01 | Dorothy | Perkins | SOUTHERN OHIO MED INC | 931426 | SABIR M | QURAISHI | 1427082841 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811034 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 08172017 | 08092017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08042017 | 2017-08-04T15:27:43+00:00 |  | 000118569-01 | DONALD | BENNETT | FAIRFIELD HLTHCARE PROFS | 905153 | P ARYEH | COHEN | 1306063656 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08142017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804061 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 08172017 | 08082017 | 08142017 | 33533, 33518 | CORONARY BYPASS, TWO VENOUS GRAFTS | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 07242017 | 2017-07-24T10:12:30+00:00 |  | 000097552-01 | Sandra | Campbell | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724059 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 08172017 | 08022017 | 08162017 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 15 | CPT | C4 |  |  |  | 14.0 |
| 08112017 | 2017-08-11T10:40:24+00:00 |  | 000026790-01 | JOANN | HITE | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08102017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811058 | I639 | Cerebral infarction, unspecified | ICD10 | 08172017 | 08102017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T14:24:51+00:00 |  | 000083805-01 | Sharon | Bauman | UNIV GYN & OB CNSLT | 909464 | JEFFREY M | FOWLER | 1639112451 | UPMC PRESBYTERIAN | 936614 | 1821007881 | UPMC PRESBYTERIAN | 1821007881 | Inpatient | IP | Concurrent Review | CONC |  | UPMC PRESBYTERIAN | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08132017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815053 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 08172017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T08:40:46+00:00 |  | 000076886-01 | Margaret | McNicol | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810034 | M79661, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08172017 | 08092017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08152017 | 2017-08-15T10:30:21+00:00 | 254633117226 | 000017033-01 | JOSEPH | ACHTNER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815031 | I442 | Atrioventricular block, complete | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07182017 | 2017-07-18T08:40:05+00:00 |  | 000110491-01 | Lorraine | Evans | ALLIANCE PHYSICIANS INC | 910039 | DONALD W | AMES | 1306857891 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718013 | M1611, M25551 | Pain in right hip | ICD10 | 08172017 | 08152017 | 08162017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08092017 | 2017-08-09T13:49:38+00:00 |  | 000029066-01 | CAROLYN | LAWHORN | SOUND PHYSICIANS OF OHI | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809061 | J9600, R062 | Wheezing | ICD10 | 08172017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T15:27:17+00:00 |  | 000092759-01 | Ralph | Smith | CAPITAL CITY NEUROSURG | 907620 | KELLY J | KIEHM | 1588654370 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719088 | M532X6 | Spinal instabilities, lumbar region | ICD10 | 08172017 | 08152017 | 08172017 | 22633, 63047, 22840, 22853, 20930, 20936, 69990, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08082017 | 2017-08-08T13:31:50+00:00 |  | 000040870-01 | BONNIE | BEEDLE | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 08242017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170816051 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08172017 |  |  | 22633, 22840, 22853, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | CPT | C4 |  |  | No child records to display. |  |
| 08042017 | 2017-08-04T12:07:25+00:00 |  | 000012882-01 | NAOMI | VINSON | INDIAN RIVER MEDICAL CTR | 934664 |  | INDIAN RIVER MEMORIAL INC | 1376512988 | INDIAN RIVER MEDICAL CTR | 934664 | 1376512988 | INDIAN RIVER MEMORIAL INC | 1376512988 | Inpatient | IP | Concurrent Review | CONC |  | INDIAN RIVER MEMORIAL INC | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804059 | R531 | Weakness | ICD10 | 08172017 | 08022017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T12:01:39+00:00 |  | 000107707-01 | Donna | Kaufman | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07312017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801068 | K6819 | Other retroperitoneal abscess | ICD10 | 08172017 | 07312017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06052017 | 2017-06-05T12:58:58+00:00 |  | 000081845-01 | Rodney | Goff | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 08172017 | Approved | MediGold Essential Care | Fax | With Additional Info | Inpatient | 06112017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605097 | I509 | Heart failure, unspecified | ICD10 | 08172017 | 06112017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08032017 | 2017-08-03T09:43:05+00:00 |  | 000100869-01 | Suroba | West | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08022017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803051 | I481, J189, J441, J90 | Pleural effusion, not elsewhere classified | ICD10 | 08172017 | 08022017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08102017 | 2017-08-10T11:28:17+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 928007 | EDWARD A | FABER | 1326163981 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810054 | D709, R5081 | Fever presenting with conditions classified elsewhere | ICD10 | 08172017 | 08092017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08152017 | 2017-08-15T09:41:00+00:00 |  | 000062713-01 | CARLIN | GRAHAM | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815025 | I70219 | Athscl native arteries of extrm w intrmt claud, unsp extrm | ICD10 | 08172017 | 08162017 | 08172017 | 35371 | ENDARTERECTOMY,COMMON FEMORAL | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08162017 | 2017-08-16T10:27:12+00:00 | 265950317227 | 000118901-01 | Robert | Mcallister Jr | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Reports | ACO - Cardiology | Inpatient | 08152017 | 08172017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816032 | R079 | Chest pain, unspecified | ICD10 | 08172017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T15:33:34+00:00 |  | 000078513-01 | Walter | Robertson | ALLIANCE PHYSICIANS INC | 906657 | DIKLAR | MAKOLA | 1225246689 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816045 | K921 | Melena | ICD10 | 08172017 | 08142017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T10:48:09+00:00 | 251210027223 | 000046066-01 | JOHN | WAGNER | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814047 | R1013 | Epigastric pain | ICD10 | 08172017 | 08112017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08112017 | 2017-08-11T07:51:38+00:00 |  | 000092780-01 | Janet | Eckerfield | SOUND KENWOOD HSPISTS OF | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811030 | D649, N179 | Acute kidney failure, unspecified | ICD10 | 08172017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T09:54:35+00:00 | 251906937222 | 000043059-01 | LINDA | KITZMILLER | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08102017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811010 | K251 | Acute gastric ulcer with perforation | ICD10 | 08172017 | 08102017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08072017 | 2017-08-07T12:58:16+00:00 | 026455708-7218 | 000090214-01 | Walter | Risko | SOUND PHYSICIANS OF OHI | 943369 | SAMVEL | NERSISYAN | 1184982357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08062017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807071 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 08172017 | 08062017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08172017 | 2017-08-17T10:27:21+00:00 |  | 000087728-01 | Phyllis | Duncan | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08172017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 08182017 | 10182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170817042 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08172017 |  |  | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T16:17:21+00:00 | 025882632-7214 | 000095198-01 | Marilyn | Black | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815010 | M25561 | Pain in right knee | ICD10 | 08172017 | 08162017 | 08172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T10:39:47+00:00 | 179193627224 | 000084529-01 | Linda | Scott | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 08122017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814042 | G255 | Other chorea | ICD10 | 08172017 | 08122017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08112017 | 2017-08-11T08:05:50+00:00 |  | 000109760-01 | Wilda | Anderson | ONCOLOGY HEMATOLOGY CARE | 927400 | DENE C | WRENN | 1104901065 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811032 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 08172017 | 08102017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08012017 | 2017-08-01T12:49:11+00:00 |  | 000076629-01 | Angela | Hicks | SOUND KENWOOD HSPISTS OF | 925204 | AMIT | PATEL | 1720231897 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801121 | E6601, N390, R000, R319, Z6845 | Body mass index (BMI) 70 or greater, adult | ICD10 | 08172017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T11:08:35+00:00 |  | 000035085-01 | ALDEN | FARNER | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731085 | A419, I509, K4090, K819 | Cholecystitis, unspecified | ICD10 | 08172017 | 07312017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08052017 | 2017-08-05T16:47:32+00:00 |  | 000032643-01 | RONALD | HOFFER | SOUND INPATIENT PHYS OF | 915463 | GRETZEL C | KING | 1912990730 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807049 | I214, R0600, R079 | Chest pain, unspecified | ICD10 | 08172017 | 08052017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08082017 | 2017-08-08T14:57:30+00:00 | 179139107220 | 000034737-01 | WILLIAM | HEDGES | SOUND PHYSICIANS OF OHI | 909260 | AMIT K | CHATTERJEE | 1417983289 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808092 | D509 | Iron deficiency anemia, unspecified | ICD10 | 08172017 | 08082017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08142017 | 2017-08-14T09:32:49+00:00 | 258119287225 | 000080200-01 | Mildred | Budd | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08132017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814014 | D62, K559 | Vascular disorder of intestine, unspecified | ICD10 | 08172017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T12:39:55+00:00 | 253455867225 | 000049991-01 | CHARLOTTE | SCARBERRY | SOUND PHYSICIANS OF OHI | 942985 | BINAYA R | DAHAL | 1093067761 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08132017 | 08162017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814072 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08172017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T10:57:31+00:00 | 254279397209 | 000053301-01 | DAINA | MCGARY | SOUND PHYSICIANS OF OHI | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731032 | A419 | Sepsis, unspecified organism | ICD10 | 08172017 | 07282017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 08162017 | 2017-08-16T09:21:10+00:00 | 250630057228 | 000043285-01 | TOM | KNEISLEY | SOUND PHYSICIANS OF OHI | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 08162017 | 08172017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816011 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08172017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08172017 | 2017-08-17T08:29:24+00:00 |  | 000058183-01 | KATHLEEN | HOWARD | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08162017 | 08172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817004 | E042 | Nontoxic multinodular goiter | ICD10 | 08172017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T14:29:40+00:00 | 252892617195 | 000068766-01 | CAROL | NELSON | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08172017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717087 | N189 | Chronic kidney disease, unspecified | ICD10 | 08172017 | 07142017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08102017 | 2017-08-10T09:54:16+00:00 |  | 000101416-01 | Donald | Tucker | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810049 | I4891 | Unspecified atrial fibrillation | ICD10 | 08172017 | 08092017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
