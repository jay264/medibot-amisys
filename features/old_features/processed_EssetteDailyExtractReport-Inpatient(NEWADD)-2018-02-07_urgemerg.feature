Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-07_URGEMERG
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
| 01262018 | 2018-01-26T08:34:59+00:00 |  | 000043902-01 | JOSIE | RATHBURN | CEN OH PRIMARY CARE SPEC | 936972 | NISHIT G | JHAVERI | 1356400659 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126013 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 02072018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T15:59:16+00:00 |  | 000072996-01 | Deborah | Backulich | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202062 | I4891 | Unspecified atrial fibrillation | ICD10 | 02072018 | 02012018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01192018 | 2018-01-19T12:15:44+00:00 |  | 000046448-01 | EDWARD | BLACK | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01282018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119039 | I2510, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02072018 | 01282018 | 02062018 | 33533, 33405, 33530 | REOPERATION, CORONARY ARTERY BYPASS,MORE THAN 1 MONTH AFTER ORIGINAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 10, 10, 10 | CPT | C4 |  |  |  | 9.0 |
| 02032018 | 2018-02-03T17:37:45+00:00 |  | 000074242-01 | Dorothy | Gross | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205028 | D62, K254 | Chronic or unspecified gastric ulcer with hemorrhage | ICD10 | 02072018 | 02022018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T13:54:17+00:00 |  | 000069996-01 | Vicky | Hunter | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02052018 | 02062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104106 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 02072018 | 02052018 | 02062018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01122018 | 2018-01-12T11:55:41+00:00 |  | 000091271-01 | Stephen | Means | MOUNT CARMEL HLTH SYS | 932260 | IRINA C | ARP | 1558625780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01192018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112049 | L89153 | Pressure ulcer of sacral region, stage 3 | ICD10 | 02072018 | 01192018 | 02062018 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 19 | CPT | C4 |  |  |  | 18.0 |
| 01142018 | 2018-01-14T09:01:06+00:00 |  | 000104828-01 | DONALD | HAMNER | RIVERSIDE RAD ASSOC | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01122018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115010 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 02072018 | 01122018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01252018 | 2018-01-25T08:26:36+00:00 |  | 000051273-01 | CYNTHIA | CAMERON | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125019 | A419, M6282, R509 | Fever, unspecified | ICD10 | 02072018 | 01242018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01262018 | 2018-01-26T11:55:41+00:00 |  | 000102110-01 | Angelyn | Blakeman | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126036 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 02072018 | 01252018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T11:51:37+00:00 |  | 000108984-01 | Penelope Sue | Rogers | APOGEE MED GRP OHIO INC | 943746 | JAMES | BARRON | 1295776441 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129087 | J189 | Pneumonia, unspecified organism | ICD10 | 02072018 | 01262018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01302018 | 2018-01-30T11:23:20+00:00 |  | 000112132-01 | TOMMY | NEWLAND | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130050 | J189, J9601, J9602, R748, R7881 | Bacteremia | ICD10 | 02072018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02012018 | 2018-02-01T18:06:09+00:00 |  | 000037974-01 | LEE | REEL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202013 | I509 | Heart failure, unspecified | ICD10 | 02072018 | 01312018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02042018 | 2018-02-04T14:32:15+00:00 |  | 000006911-01 | JOAN | PASSEN | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02032018 | 02062018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205048 | R079 | Chest pain, unspecified | ICD10 | 02072018 | 02032018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T14:27:29+00:00 |  | 000028883-01 | PHILIP | JOHNSON | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226170 | D49512 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF LEFT KIDNEY | ICD10 | 02072018 | 01302018 | 02062018 | 50543 | LAPARO PARTIAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 12282017 | 2017-12-28T14:10:41+00:00 |  | 000015441-01 | BONNIE | HANES | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228064 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02072018 | 01312018 | 02052018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 01042018 | 2018-01-04T11:37:50+00:00 |  | 000093527-01 | Rickey | Harper | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02052018 | 02062018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104063 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 02072018 | 02052018 | 02062018 | 34802, 34812, 34825, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01122018 | 2018-01-12T13:39:22+00:00 |  | 000094523-01 | Roger | Winland | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12122017 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112077 | J9691 | Respiratory failure, unspecified with hypoxia | ICD10 | 02072018 | 01122018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 01172018 | 2018-01-17T09:06:02+00:00 |  | 000070613-01 | Ann | Pryfogle | HOSPITALIST MEDICINE PHY | 943369 | SAMVEL | NERSISYAN | 1184982357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02072018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 01162018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117012 | E872, R6521 | Severe sepsis with septic shock | ICD10 | 02072018 | 01162018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 01252018 | 2018-01-25T16:20:52+00:00 |  | 000112152-01 | Wayne | Page | KNOX COMMUNITY HOSP GRP | 935489 | STEVEN E | CLUTTER | 1992845895 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02072018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01242018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126001 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02072018 | 01242018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01312018 | 2018-01-31T07:55:51+00:00 |  | 000095861-01 | Judith | Bame | OSU SURGERY LLC | 907326 | STEVEN M | STEINBERG | 1932156866 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01302018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131024 | K668 | Other specified disorders of peritoneum | ICD10 | 02072018 | 01302018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T09:54:38+00:00 |  | 000111998-01 | Karen | Spencer | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02052018 | 02062018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201010 | M19011, M75101 | Unsp rotatr-cuff tear/ruptr of right shoulder, not trauma | ICD10 | 02072018 | 02052018 | 02062018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01042018 | 2018-01-04T08:55:23+00:00 |  | 000090789-01 | William | Gleckler | OSU SURGERY LLC | 928938 | JOHN K | BAILEY | 1710955794 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104028 | T300 | Burn of unspecified body region, unspecified degree | ICD10 | 02072018 | 01032018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01312018 | 2018-01-31T13:08:58+00:00 |  | 000045118-01 | RUTH | KNAPP | ADENA MEDICAL GROUP LLC | 935741 | ALAN T | MONG | 1013935311 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131066 | R109 | Unspecified abdominal pain | ICD10 | 02072018 | 01302018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01312018 | 2018-01-31T13:16:00+00:00 |  | 000046071-01 | ELIZABETH | GUSSE | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131079 | S3210XA | Unsp fracture of sacrum, init encntr for closed fracture | ICD10 | 02072018 | 01302018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02012018 | 2018-02-01T12:20:01+00:00 |  | 000097601-01 | Lyle | Ward | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201045 | I5020, J9602, N179 | Acute kidney failure, unspecified | ICD10 | 02072018 | 01312018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02022018 | 2018-02-02T09:37:55+00:00 |  | 000088393-01 | Larry | Huffman | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 02072018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202025 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 02072018 | 02012018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02032018 | 2018-02-03T17:25:44+00:00 |  | 000058127-01 | SANDRA | ROBSON | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02022018 | 02052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205025 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02072018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T09:07:29+00:00 |  | 000030684-01 | EDWIN | MCCLUNG | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02072018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205049 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02072018 | 02032018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02042018 | 2018-02-04T16:18:12+00:00 |  | 000030056-01 | CHARLES | WETTA | HOSPITALIST MEDICINE PHY | 915074 | ARINZE E | AKUSOBA | 1366517591 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02072018 | Approved | TRINITY HEALTH | Fax | ACO - Atrial Fib | Inpatient | 02022018 | 02052018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205055 | I4891, R079 | Chest pain, unspecified | ICD10 | 02072018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T11:43:59+00:00 |  | 000051842-01 | GARRY | BIRD | OSU INTERNAL MED LLC | 936096 | SAM L | PENZA | 1356359640 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02042018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205062 | R6251 | Failure to thrive (child) | ICD10 | 02072018 | 02042018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T12:56:13+00:00 |  | 000055867-01 | ROY | ROSS JR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02072018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02072018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180205095 | I639 | Cerebral infarction, unspecified | ICD10 | 02072018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02052018 | 2018-02-05T14:06:58+00:00 |  | 000109101-01 | RALPH | WITHERS | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Essential Care | Fax | ACO - Cardiology | Inpatient | 02032018 | 02062018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205110 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02072018 | 02032018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T16:17:54+00:00 |  | 000083333-01 | Jeffery | Miller | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02072018 | Approved | MediGold Southwest OH Classic Preferred | Fax | EIS | Inpatient | 02042018 | 02062018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206009 | C3490, J910, M84459A, S72001G | Fx unsp part of nk of r femr, subs for clos fx w delay heal | ICD10 | 02072018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
