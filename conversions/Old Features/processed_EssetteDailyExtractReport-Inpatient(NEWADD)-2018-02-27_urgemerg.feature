Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_URGEMERG
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
| 02222018 | 2018-02-22T13:09:27+00:00 |  | 000031290-01 | PATRICIA | KINGSTON | HOSPITALIST MEDICINE PHY | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02212018 | 02262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222071 | I10, N132, I2720 | I2720 | ICD10 | 02272018 | 02212018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02222018 | 2018-02-22T11:47:30+00:00 |  | 000021907-01 | PATRICIA | KREAGER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02202018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222031 | R509 | Fever, unspecified | ICD10 | 02272018 | 02202018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02132018 | 2018-02-13T16:44:21+00:00 |  | 000089110-01 | Rose | Patterson | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214013 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02272018 | 02122018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02202018 | 2018-02-20T09:09:23+00:00 |  | 000073895-01 | Arthur | Wharton | HOSPITALIST MEDICINE PHY | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220062 | A419 | Sepsis, unspecified organism | ICD10 | 02272018 | 02182018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02042018 | 2018-02-04T14:52:30+00:00 |  | 000083558-01 | Verla | Pitts | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205040 | K625 | Hemorrhage of anus and rectum | ICD10 | 02272018 | 02022018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 02132018 | 2018-02-13T13:43:50+00:00 |  | 000083578-01 | Donna | Stout | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213091 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 02272018 | 02192018 | 02232018 | 44207, 49585 | REPAIR UMBILICAL HERNIA, AGE 5 YEARS OR OVER; | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 02122018 | 2018-02-12T15:19:43+00:00 |  | 000067194-01 | Mary | Castle | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213018 | N390 | Urinary tract infection, site not specified | ICD10 | 02272018 | 02092018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T09:40:46+00:00 |  | 000065777-01 | JERRY | SCHWARTZENBERGER | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215017 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02272018 | 02192018 | 02262018 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 02202018 | 2018-02-20T11:19:09+00:00 |  | 000027643-01 | ROGER | HILEMON | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220083 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 02272018 | 02192018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02212018 | 2018-02-21T10:23:31+00:00 |  | 000073599-01 | Bruce | Blevins | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02202018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221042 | I351 | Nonrheumatic aortic (valve) insufficiency | ICD10 | 02272018 | 02202018 | 02262018 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 02212018 | 2018-02-21T09:35:11+00:00 |  | 000035102-01 | MARK | CLEMANS | HOSPITAL MEDICINE SERVIC | 946505 | MANORAMA | CHALUVADI | 1639433766 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02202018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221068 | D649 | Anemia, unspecified | ICD10 | 02272018 | 02202018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T11:02:42+00:00 |  | 000105643-01 | Frederick | Regan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222027 | R4020 | Unspecified coma | ICD10 | 02272018 | 02192018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02222018 | 2018-02-22T13:02:21+00:00 |  | 000101416-01 | Donald | Tucker | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222070 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 02272018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01122018 | 2018-01-12T09:59:04+00:00 |  | 000073726-01 | Donna | Hodge | ORTHO INSTITUTE OF DAYTO | 902345 | KEVIN J | PALEY | 1982603627 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112024 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02272018 | 02192018 | 02222018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02082018 | 2018-02-08T14:07:42+00:00 |  | 000112857-01 | Clyde | Neiswanger | CLERMONT INTERNISTS ASSO | 924626 | MAITHILI S | PATIL | 1942278593 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208069 | D6489, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02272018 | 02062018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02092018 | 2018-02-09T11:41:44+00:00 |  | 000087586-01 | Ronald | Bushhorn | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02202018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209051 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02272018 | 02202018 | 02212018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02122018 | 2018-02-12T09:37:15+00:00 |  | 000051593-01 | ANDREW | JONES | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02272018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02102018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212045 | D61818 | Other pancytopenia | ICD10 | 02272018 | 02102018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 02152018 | 2018-02-15T08:30:41+00:00 |  | 000102198-01 | Thomas | Vaughan | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02142018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215052 | A419, I4891, T814XXA | Infection following a procedure, initial encounter | ICD10 | 02272018 | 02142018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02152018 | 2018-02-15T14:35:11+00:00 |  | 000120526-01 | Jimmy | Walker | DAYTON BEHAVIORAL CARE | 902688 | OTTO R | DUENO | 1467447623 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02142018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215061 | F200 | Paranoid schizophrenia | ICD10 | 02272018 | 02142018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02202018 | 2018-02-20T08:03:44+00:00 |  | 000039401-01 | DAVID | BEEKMAN | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220045 | A419 | Sepsis, unspecified organism | ICD10 | 02272018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T08:29:17+00:00 |  | 000102755-01 | Gregory | Wearly | OSU INTERNAL MED LLC | 932551 | JOHN W | CHRISTMAN | 1720027808 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02232018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226044 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02272018 | 02232018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T14:50:59+00:00 |  | 000070819-01 | Franklin | Isaac | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02272018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 02272018 | 02282018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180226098 | G255, I639 | Cerebral infarction, unspecified | ICD10 | 02272018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01272018 | 2018-01-27T04:20:04+00:00 |  | 000082032-01 | Wanza | Springer | MIDWEST PSYCH CTR INC | 932392 | RAKESSHKUMAR | KANERIA | 1740347566 | BECKETT SPRINGS LLC | 940170 | 1538404371 | BECKETT SPRINGS HOSPITAL | 1538404371 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BECKETT SPRINGS HOSPITAL | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01262018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129001 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 02272018 | 01262018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T07:57:30+00:00 |  | 000098818-01 | Lenard | Milburn | ATRIUM HOSPITALIST GROUP | 948011 | DANIEL J | SHEPS | 1245580331 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219017 | N179, N186 | End stage renal disease | ICD10 | 02272018 | 01222018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T13:20:17+00:00 |  | 000121657-01 | OTTO | TOPPING | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02152018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220020 | R531 | Weakness | ICD10 | 02272018 | 02152018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02212018 | 2018-02-21T14:30:37+00:00 |  | 000104483-01 | Wilhelmina | Huber | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02202018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222014 | D649 | Anemia, unspecified | ICD10 | 02272018 | 02202018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02222018 | 2018-02-22T11:12:09+00:00 |  | 000116983-01 | Gary | Reef | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02212018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222048 | A419, N390, R0902 | Hypoxemia | ICD10 | 02272018 | 02212018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02222018 | 2018-02-22T15:59:59+00:00 |  | 000093826-01 | Patricia | Kendig | MIAMI VALLEY HSPISTS GRP | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222085 | J810, R4182, I160 | HYPERTENSIVE URGENCY | ICD10 | 02272018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T09:27:09+00:00 |  | 000003107-01 | NAOMI | LESHER | OSU INTERNAL MED LLC | 909692 | CHIRAG R | PATEL | 1043497134 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223017 | I4581, R451 | Restlessness and agitation | ICD10 | 02272018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02232018 | 2018-02-23T10:14:05+00:00 |  | 000037290-01 | MARILYN | BUSH | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223034 | J189 | Pneumonia, unspecified organism | ICD10 | 02272018 | 02222018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02252018 | 2018-02-25T15:22:24+00:00 |  | 000030640-01 | MARY | FRITZSCHE | COPC CENTRAL OHIO PRIMAR | 918098 | BHARATKUMAR I | PATEL | 1952692667 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02232018 | 02262018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226029 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 02272018 | 02232018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02252018 | 2018-02-25T17:33:47+00:00 |  | 000085296-01 | Freddie | Chamberlain | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02242018 | 02262018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226032 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02272018 | 02242018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T09:22:32+00:00 |  | 000091126-01 | Richard | Eckart | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226054 | H4901, H5461, R200 | Anesthesia of skin | ICD10 | 02272018 | 02242018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T16:49:44+00:00 |  | 000049165-01 | BECKEY | RIDENOUR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02272018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02272018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180227001 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 02272018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02272018 | 2018-02-27T09:30:11+00:00 |  | 000092512-01 | Margaret | Croucher | SOUTH BALDWIN REGIONAL HOME HEALTH | 944310 |  | SOUTH BALDWIN REGIONAL HOME HEALTH | 1427082221 | SOUTH BALDWIN REGIONAL HOME HEALTH | 944310 | 1427082221 | SOUTH BALDWIN REGIONAL HOME HEALTH | 1427082221 | Inpatient | IP | Concurrent Review | CONC |  | SOUTH BALDWIN REGIONAL HOME HEALTH | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02232018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227045 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 02272018 | 02232018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
