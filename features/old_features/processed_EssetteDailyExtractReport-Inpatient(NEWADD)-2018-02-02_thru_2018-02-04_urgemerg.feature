Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-02_thru_2018-02-04_URGEMERG
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
| 01252018 | 2018-01-25T10:42:17+00:00 |  | 000087845-01 | Larry | Taylor | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125039 | E162, E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 02022018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T16:48:23+00:00 |  | 000106661-01 | Robert | Baird | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123002 | R0902, Z720 | Tobacco use | ICD10 | 02022018 | 01192018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02012018 | 2018-02-01T11:00:31+00:00 |  | 000002762-01 | LAVERNE | WARNER | CEN OH PRIMARY CARE SPEC | 915278 | BRIAN S | TAYLOR | 1205076569 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201039 | I509 | Heart failure, unspecified | ICD10 | 02022018 | 01222018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01162018 | 2018-01-16T10:34:38+00:00 |  | 000033960-01 | JUDITH | HASTLER | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116059 | C6932 | Malignant neoplasm of left choroid | ICD10 | 02022018 | 01252018 | 01292018 | 67218 | DEST TUMOR RETINA RADIA BY IMPLANT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 01182018 | 2018-01-18T10:48:36+00:00 |  | 000119823-01 | Martha | Darling | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118037 | R0602 | Shortness of breath | ICD10 | 02022018 | 01172018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01222018 | 2018-01-22T09:31:30+00:00 |  | 000032520-01 | PAUL | WOODS JR | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122089 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 02022018 | 01192018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01222018 | 2018-01-22T09:49:53+00:00 |  | 000105935-01 | Delmer | Lowe | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01202018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122090 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02022018 | 01202018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01222018 | 2018-01-22T11:04:32+00:00 |  | 000077003-01 | Diane | Saxton | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122103 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 02022018 | 01192018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01222018 | 2018-01-22T13:26:51+00:00 |  | 000084658-01 | Donald | Green | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01212018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122142 | R079 | Chest pain, unspecified | ICD10 | 02022018 | 01212018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01252018 | 2018-01-25T10:36:07+00:00 |  | 000089892-01 | Virginia | Chiles | EL MASRY, WAGUIH S | 909350 | WAGUIH S | EL MASRY | 1336103167 | MANATEE MEMORIAL HSP | 934639 | 1760472799 | MANATEE MEMORIAL HOSPITAL | 1760472799 | Inpatient | IP | Concurrent Review | CONC |  | MANATEE MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01232018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125036 | E872, I469 | Cardiac arrest, cause unspecified | ICD10 | 02022018 | 01232018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01252018 | 2018-01-25T14:13:54+00:00 |  | 000076331-01 | Michael | Denney | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125075 | A419 | Sepsis, unspecified organism | ICD10 | 02022018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01252018 | 2018-01-25T12:29:10+00:00 |  | 000082347-01 | Francis | Bope | SOUTH BALDWIN REGIONAL MED CTR | 905640 |  | SOUTH BALDWIN REGIONAL MED CTR | 1053382655 | SOUTH BALDWIN REGIONAL MED CTR | 905640 | 1053382655 | SOUTH BALDWIN REGIONAL MED CTR | 1053382655 | Inpatient | IP | Concurrent Review | CONC |  | SOUTH BALDWIN REGIONAL MED CTR | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125081 | J189 | Pneumonia, unspecified organism | ICD10 | 02022018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01242018 | 2018-01-24T13:18:33+00:00 |  | 000085799-01 | Carl | Jones | HOSPITALIST MEDICINE PHY | 906163 | ARSHAD A | SHAH | 1578583605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01232018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126072 | J189, J690, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02022018 | 01232018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01302018 | 2018-01-30T11:57:03+00:00 |  | 000075032-01 | Jerome | Knight | DELRAY MEDICAL CENTER | 905690 |  | DELRAY MEDICAL CENTER | 1326078288 | DELRAY MEDICAL CENTER | 905690 | 1326078288 | DELRAY MEDICAL CENTER | 1326078288 | Inpatient | IP | Concurrent Review | CONC |  | DELRAY MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131020 | E875, N179, N390 | Urinary tract infection, site not specified | ICD10 | 02022018 | 01282018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02012018 | 2018-02-01T10:46:23+00:00 |  | 000035165-01 | DARLEEN | SHOW | ORTHOPEDIC ONE INC | 936024 | STEPHEN J | CHOBAN | 1518998376 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201036 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02022018 | 01312018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T16:03:11+00:00 |  | 000037789-01 | MARLENE | WHITED | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204159 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02022018 | 01302018 | 02012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01222018 | 2018-01-22T18:06:04+00:00 |  | 000109700-01 | Herbert | Moore | ROHS, ROBERT G | 924833 | ROBERT G | ROHS | 1972599694 | GOOD SAMARITAN HOSPITAL PSYCH | 925453 | 1245209576 | GOOD SAMARITAN HOSPITAL PSYCH | 1245209576 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL PSYCH | 02022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123015 | F0281, F062 | Psychotic disorder w delusions due to known physiol cond | ICD10 | 02022018 | 01192018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01242018 | 2018-01-24T13:34:14+00:00 |  | 000118270-01 | Diana | Brown | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124058 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 02022018 | 01242018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01262018 | 2018-01-26T09:34:36+00:00 |  | 000019425-01 | HARRY | MILLER | HOLMES REGIONAL | 934631 |  | HOLMES REGIONAL | 1295702728 | HOLMES REGIONAL | 934631 | 1295702728 | HOLMES REGIONAL | 1295702728 | Inpatient | IP | Concurrent Review | CONC |  | HOLMES REGIONAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126020 | M549 | Dorsalgia, unspecified | ICD10 | 02022018 | 01252018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01262018 | 2018-01-26T15:55:41+00:00 |  | 000026327-01 | LOIS | REED | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126071 | R0902 | Hypoxemia | ICD10 | 02022018 | 01252018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000052378-01 | ROBERT | MASSEY | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01272018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129077 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02022018 | 01272018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000069772-01 | Linda | Rinehart | HOSPITALIST MEDICINE PHY | 952663 | JESSE | DION | 1619383734 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 01282018 | 02012018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129088 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02022018 | 01282018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T11:04:28+00:00 |  | 000023873-01 | CECIL | KIRK | HOSPITALIST MEDICINE PHY | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129106 | E871, N390, R4182 | Altered mental status, unspecified | ICD10 | 02022018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T09:50:26+00:00 |  | 000107553-01 | Tammy | Patterson | SOUND INPATIENT PHYS OF | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01272018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129111 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 02022018 | 01272018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T16:04:39+00:00 |  | 000111390-01 | SHERRY | MILLS | OH HSP FOR PSYCHIATRY | 906239 |  | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 02022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129125 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 02022018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01302018 | 2018-01-30T09:36:05+00:00 |  | 000017603-01 | LOIS | LYNN | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130023 | I639 | Cerebral infarction, unspecified | ICD10 | 02022018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T10:16:10+00:00 |  | 000057379-01 | CAROLYN | JORDAN | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130048 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02022018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T09:22:12+00:00 |  | 000066057-01 | THOMAS | MANTER | HOSPITALIST MEDICINE PHY | 904484 | BAHADUR | SHAH | 1912010547 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | ACO - CHF | Inpatient | 01292018 | 02012018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130067 | I509, J90 | Pleural effusion, not elsewhere classified | ICD10 | 02022018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T16:05:55+00:00 |  | 000043017-01 | NANCY | BUCKINGHAM | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131105 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 02022018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T09:52:39+00:00 |  | 000029997-01 | LARRY | MATTES | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02022018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180201011 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02022018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02022018 | 2018-02-02T12:40:56+00:00 |  | 000032676-01 | SANDRA | BLOOM | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 02262018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180202047 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 02022018 |  |  | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 29 | CPT | C4 |  |  | No child records to display. |  |
