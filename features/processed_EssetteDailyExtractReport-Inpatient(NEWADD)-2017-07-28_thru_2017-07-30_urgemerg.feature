Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-28_thru_2017-07-30_URGEMERG
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
| 07032017 | 2017-07-03T08:22:05+00:00 |  | 000087206-01 | Joel | Pitman | ROBERT SAMAAN MD INC | 925370 |  | ROBERT SAMAAN MD INC | 1336208974 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703088 | I442 | Atrioventricular block, complete | ICD10 | 07282017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T13:11:57+00:00 |  | 000039266-01 | VIRGINIA | MILLER | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705069 | I639 | Cerebral infarction, unspecified | ICD10 | 07282017 | 07102017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 07052017 | 2017-07-05T13:57:36+00:00 |  | 000097674-01 | Rose | Hazelbaker | ADENA MEDICAL GROUP LLC | 937191 | RANDALL L | MILLER | 1639144637 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705091 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07282017 | 07072017 | 07142017 | 33519 | CORONARY BYPASS, THREE VENOUS GRAFTS | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 07102017 | 2017-07-10T16:27:18+00:00 | 017880871-7192 | 000035406-01 | L | BLUE | JOINT IMPLANT SURGEONS | 931649 | JASON A | REED | 1821254095 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07262017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711012 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07282017 | 07262017 | 07272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07112017 | 2017-07-11T09:13:50+00:00 |  | 000102290-01 | Stephen | Finck | HMP OF OHIO PC | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 07282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711047 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07282017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07132017 | 2017-07-13T10:43:55+00:00 | 177978507193 | 000099438-01 | John | Scott | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713035 | I739 | Peripheral vascular disease, unspecified | ICD10 | 07282017 | 07122017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 07142017 | 2017-07-14T10:20:27+00:00 |  | 000080214-01 | Gale | Ellis | MARIETTA HLTH CARE PHYS | 921985 | MATTHEW B | YOAK | 1922003219 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07242017 | 07272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714021 | S81802A, T1490 | Injury, unspecified | ICD10 | 07282017 | 07242017 | 07272017 | 11043, 11046, 15100, 15101, 97606 | NEG PRESS WOUND TX, > 50 CM | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 07142017 | 2017-07-14T11:25:42+00:00 | 257556907195 | 000028811-01 | SHIRLEY | JOSSELYN | HMP OF OHIO PC | 915074 | ARINZE E | AKUSOBA | 1366517591 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714034 | J90, J9601 | Acute respiratory failure with hypoxia | ICD10 | 07282017 | 07132017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 07162017 | 2017-07-16T08:26:04+00:00 |  | 000080041-01 | Carmen | Jarvis | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07152017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717034 | R109 | Unspecified abdominal pain | ICD10 | 07282017 | 07152017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07172017 | 2017-07-17T14:10:12+00:00 | 258396437197 | 000031289-01 | KENNETH | SCHUMACHER | MOUNT CARMEL HLTH PRVDRS | 924488 | SAAD A | HAGRAS | 1740460161 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07172017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717080 | N3001 | Acute cystitis with hematuria | ICD10 | 07282017 | 07172017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07172017 | 2017-07-17T14:34:25+00:00 | 259174867197 | 000110555-01 | Stuart | Orem | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07162017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717088 | L0291, N493 | Fournier gangrene | ICD10 | 07282017 | 07162017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07172017 | 2017-07-17T08:16:42+00:00 |  | 000085486-01 | Finola | Abell | ER MED PHYS OF CHAMPAIGN | 940456 | JUSTIN D | COOMES | 1730322413 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07142017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718004 | J189, J9383, J948 | Other specified pleural conditions | ICD10 | 07282017 | 07142017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07182017 | 2017-07-18T08:16:03+00:00 |  | 000080077-01 | Carl | Roberts Jr | ORTHO ASSOC OF ZANESVILL | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07262017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718008 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07282017 | 07262017 | 07282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07122017 | 2017-07-12T08:46:50+00:00 |  | 000034642-01 | ELSIE | WILCOX | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718010 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 07282017 | 07252017 | 07282017 | 42415, 38724, 15770 | GRAFT DERMA-FAT-FASCIA | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 07182017 | 2017-07-18T13:27:47+00:00 |  | 000079406-01 | Leah | Stanley | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Member | Inpatient | Inpatient | 07202017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718102 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 07282017 | 07202017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T14:43:51+00:00 |  | 000036782-01 | ELLENIA | WALTON | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07242017 | 07272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718116 | D352 | Benign neoplasm of pituitary gland | ICD10 | 07282017 | 07242017 | 07272017 | 62272, 61782, 62165, 20926 | OBT. OTHER TIS. FOR GRAFT, | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 07192017 | 2017-07-19T10:36:19+00:00 |  | 000000720-01 | DARLENE | DICK | COPC CENTRAL OHIO PRIMAR | 914691 | JOANNA L | FAILOR | 1922217686 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719065 | M4640 | Discitis, unspecified, site unspecified | ICD10 | 07282017 | 07182017 | 07252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T14:06:34+00:00 |  | 000096143-01 | Jerry | Wentz | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07272017 | 07282017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719071 | C61 | Malignant neoplasm of prostate | ICD10 | 07282017 | 07272017 | 07282017 | 55866, 38571, 49585 | REPAIR UMBILICAL HERNIA, AGE 5 YEARS OR OVER; | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07202017 | 2017-07-20T10:14:08+00:00 | 252408067200 | 000072957-01 | Jeffrey | Swartz | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07192017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720021 | I350, S2241XA | Multiple fractures of ribs, right side, init for clos fx | ICD10 | 07282017 | 07192017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07202017 | 2017-07-20T15:39:41+00:00 | 250823077201 | 000064127-01 | JOAN | MARTENSEN | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 07202017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720078 | E875, N170, R6521 | Severe sepsis with septic shock | ICD10 | 07282017 | 07202017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07212017 | 2017-07-21T10:11:27+00:00 | 250089507201 | 000016197-01 | TRINA | BLANKENSHIP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07202017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721019 | N189 | Chronic kidney disease, unspecified | ICD10 | 07282017 | 07202017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07212017 | 2017-07-21T13:30:49+00:00 |  | 000076381-01 | Larry | Adams | CHARLES D HANSHAW DO INC | 913190 | CHARLES D | HANSHAW | 1871523209 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724033 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 07282017 | 07202017 | 07282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07252017 | 2017-07-25T10:09:44+00:00 | 250866517205 | 000083211-01 | Bettie | Paugh | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725028 | I639, R51 | Headache | ICD10 | 07282017 | 07242017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07252017 | 2017-07-25T10:31:00+00:00 | 251209807206 | 000096965-01 | Duane | Wegner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07252017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725033 | I509 | Heart failure, unspecified | ICD10 | 07282017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T13:17:43+00:00 |  | 000115067-01 | Darlene | Schaeffer-Bryant | CENTRAL OH HSPISTS INC | 923671 | NENNA N | EGBOH | 1104053800 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07282017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07242017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725107 | N179 | Acute kidney failure, unspecified | ICD10 | 07282017 | 07242017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07262017 | 2017-07-26T09:45:21+00:00 | 252056787207 | 000046407-01 | FELIX | MILANO | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07262017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726011 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07282017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T12:26:45+00:00 |  | 000081817-01 | Kathy | Rosencrance | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07272017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726044 | I6522, I708 | Atherosclerosis of other arteries | ICD10 | 07282017 | 07272017 | 07282017 | 35606 | BYPASS GR,NT VN, CAROTID-SUBCL. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07262017 | 2017-07-26T12:05:36+00:00 |  | 000111021-01 | Edna | Hill | MERCY HEALTH YOUNGSTOWN, | 948640 |  | MERCY HEALTH YOUNGSTOWN, LLC | 1548296106 | MERCY HEALTH YOUNGSTOWN, | 948640 | 1548296106 | MERCY HEALTH YOUNGSTOWN, LLC | 1548296106 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HEALTH YOUNGSTOWN, LLC | 07282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07222017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726050 | M316, R51 | Headache | ICD10 | 07282017 | 07222017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07262017 | 2017-07-26T13:04:48+00:00 |  | 000114518-01 | Linda | Miller | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07262017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726056 | S0232XA | FRACTURE OF ORBITAL FLOOR, LEFT SIDE, INIT | ICD10 | 07282017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T13:23:30+00:00 |  | 000111276-01 | ROBERT | MEYERS | SOUND KENWOOD HSPISTS OF | 928645 | MUHAMMAD R | AHMAD | 1255355319 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 07272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726061 | I214, I249, R079, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07282017 | 07252017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T09:43:44+00:00 | 250053027207 | 000021043-01 | BIRUTA | BUCKENBERGER | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 07262017 | 07272017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727013 | I4891 | Unspecified atrial fibrillation | ICD10 | 07282017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T07:57:04+00:00 | 025229812-7178 | 000020321-01 | HOMAN | SKAGGS | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07282017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 07262017 | 07272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728001 | N319 | Neuromuscular dysfunction of bladder, unspecified | ICD10 | 07282017 | 07262017 | 07272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T14:47:28+00:00 |  | 000069092-01 | CHARLOTTE | AKERS | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 07282017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170726067 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 07282017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07282017 | 2017-07-28T13:14:16+00:00 |  | 000098183-01 | Robert | Sells Sr | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07282017 | Denied | MediGold Medical Only | Fax | Criteria Not Met | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170728041 | J189 | Pneumonia, unspecified organism | ICD10 | 07282017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
