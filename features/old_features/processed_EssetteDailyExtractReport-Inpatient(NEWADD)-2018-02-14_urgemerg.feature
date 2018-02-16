Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-14_URGEMERG
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
| 01202018 | 2018-01-20T12:00:13+00:00 |  | 000077431-01 | Ross | Owen | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122014 | J159 | Unspecified bacterial pneumonia | ICD10 | 02142018 | 01192018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 02092018 | 2018-02-09T14:14:59+00:00 |  | 000116392-01 | William | Whittington | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209071 | M549 | Dorsalgia, unspecified | ICD10 | 02142018 | 02062018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02062018 | 2018-02-06T18:58:57+00:00 |  | 000015592-01 | BETTY | SULLIVAN | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207004 | A419, L0390, R748 | Abnormal levels of other serum enzymes | ICD10 | 02142018 | 02052018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02052018 | 2018-02-05T18:17:29+00:00 |  | 000098183-01 | Robert | Sells Sr | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02142018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02052018 | 02132018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206011 | I4891, I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 02142018 | 02052018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02032018 | 2018-02-03T16:59:29+00:00 |  | 000076186-01 | Francis | Luning | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02142018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205024 | A419 | Sepsis, unspecified organism | ICD10 | 02142018 | 02022018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01312018 | 2018-01-31T15:21:40+00:00 |  | 000069839-01 | Dennis | Wright | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02142018 | Approved | MediGold Essential Care | Fax | Secondary Only | Inpatient | 01302018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131100 | J939 | Pneumothorax, unspecified | ICD10 | 02142018 | 01302018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02012018 | 2018-02-01T10:21:42+00:00 |  | 000008235-01 | STEVE | RITO | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201029 | J159 | Unspecified bacterial pneumonia | ICD10 | 02142018 | 01312018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01262018 | 2018-01-26T08:14:51+00:00 |  | 000056666-01 | JAMES | FAIRCHILD | ADENA MEDICAL GROUP LLC | 900441 | DAMIEN M | BENJAMIN | 1407881055 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126060 | K639 | Disease of intestine, unspecified | ICD10 | 02142018 | 02062018 | 02092018 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01292018 | 2018-01-29T06:18:47+00:00 |  | 000016847-01 | DANE | WILLIS | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129117 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 02142018 | 01262018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T13:11:18+00:00 |  | 000105672-01 | Linda | Jones | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131069 | R0602 | Shortness of breath | ICD10 | 02142018 | 01302018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T07:54:25+00:00 |  | 000114101-01 | Lenora | Bolinger | OSU INTERNAL MED LLC | 911552 | RAMI N | KHAYAT | 1962415182 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201004 | R4182 | Altered mental status, unspecified | ICD10 | 02142018 | 02012018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02012018 | 2018-02-01T14:41:22+00:00 |  | 000064873-01 | DEBRA | DEBOLT- REYNOLDS | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201052 | K639, R109 | Unspecified abdominal pain | ICD10 | 02142018 | 01312018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02032018 | 2018-02-03T14:30:32+00:00 |  | 000055867-01 | ROY | ROSS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205014 | I214, I509, N390, R7881 | Bacteremia | ICD10 | 02142018 | 02022018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02052018 | 2018-02-05T08:28:52+00:00 |  | 000080063-01 | Allen | Ohmer | PATEL, KETAN K | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02142018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205054 | A419, E11621, E1165, L03115, L97411, N179, R700, R7982 | Elevated C-reactive protein (CRP) | ICD10 | 02142018 | 02042018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02052018 | 2018-02-05T15:09:03+00:00 |  | 000084699-01 | David | Riley Jr | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205122 | M6281 | Muscle weakness (generalized) | ICD10 | 02142018 | 02032018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T14:14:16+00:00 |  | 000075482-01 | Linda | Brooks | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02142018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02122018 | 02132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207053 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02142018 | 02122018 | 02132018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02082018 | 2018-02-08T09:18:35+00:00 |  | 000053604-01 | SHIRLEY | TULLOS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02142018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02072018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208033 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02142018 | 02072018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02082018 | 2018-02-08T15:05:47+00:00 |  | 000092922-01 | Paul | Hoag | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208075 | E875, M6281 | Muscle weakness (generalized) | ICD10 | 02142018 | 02072018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02122018 | 2018-02-12T10:52:12+00:00 |  | 000092922-01 | Paul | Hoag | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02142018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02142018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180212060 | I639 | Cerebral infarction, unspecified | ICD10 | 02142018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01222018 | 2018-01-22T11:45:34+00:00 |  | 000117905-01 | JACQUELINE | DAY | WRIGHT STATE PHYSICIANS | 944902 | ALYSSA J | GANS | 1962638080 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122093 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 02142018 | 01202018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 01252018 | 2018-01-25T11:16:20+00:00 |  | 000104028-01 | CHARLES | CLARK | UNIVERSITY OF CINCINNATI | 924931 | GEORGE H | MEIER | 1639141658 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 02142018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01252018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125046 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 02142018 | 01252018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 01262018 | 2018-01-26T11:10:11+00:00 |  | 000096277-01 | Beverly | Callander | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126047 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 02142018 | 02052018 | 02142018 | 41116, 38724, 31600, 15240, 15758 | FREE FASCIAL FLAP WITH MICROVASCULAR ANASTOMOSIS | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 10, 10, 10, 10, 10 | CPT | C4 |  |  |  | 2.0 |
| 02042018 | 2018-02-04T17:39:04+00:00 |  | 000102427-01 | Jackie | Prosser | DUBLIN SPRINGS LLC | 923693 |  | COLUMBUS SPRINGS DUBLIN | 1164798708 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205012 | F332, F410 | Panic disorder without agoraphobia | ICD10 | 02142018 | 02042018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T13:31:46+00:00 |  | 000029813-01 | LUSHIE | HERRON | ABILENE REGIONAL MED CTR | 953181 |  | ABILENE REGIONAL MEDICAL CENTER | 1629023981 | ABILENE REGIONAL MED CTR | 953181 | 1629023981 | ABILENE REGIONAL MEDICAL CENTER | 1629023981 | Inpatient | IP | Concurrent Review | CONC |  | ABILENE REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206069 | J189 | Pneumonia, unspecified organism | ICD10 | 02142018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T11:25:26+00:00 |  | 000034789-01 | LAWRENCE | DOWDEN | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207047 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 02142018 | 02082018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T16:56:18+00:00 |  | 000083739-01 | Betty | Baxter | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209009 | J441, R079 | Chest pain, unspecified | ICD10 | 02142018 | 02012018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T14:52:24+00:00 |  | 000064693-01 | SHIRLEY | COX | OHIOHEALTH PHYS GRP | 920553 | CHRIS S | KARAS | 1174781587 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110094 | S22009A | Unsp fracture of unsp thoracic vertebra, init for clos fx | ICD10 | 02142018 | 01102018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T08:59:46+00:00 |  | 000012745-01 | SALLY | SPEAKS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208023 | N390, R300 | Dysuria | ICD10 | 02142018 | 02072018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02082018 | 2018-02-08T10:56:56+00:00 |  | 000039178-01 | ELLIS | HALL | LICKING MEM HLTH PROF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208060 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 02142018 | 02072018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T10:30:47+00:00 |  | 000087071-01 | Joyce | Schaffer | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209049 | E871, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02142018 | 02082018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02102018 | 2018-02-10T10:28:23+00:00 |  | 000102198-01 | Thomas | Vaughan | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02142018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212011 | J441, J449, J810, R0902 | Hypoxemia | ICD10 | 02142018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T14:30:51+00:00 |  | 000074883-01 | Brooks | Freed | MARIETTA HLTH CARE PHYS | 933483 | HAYDEN H | TRAN | 1124319272 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02142018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213009 | N132, N179 | Acute kidney failure, unspecified | ICD10 | 02142018 | 02102018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T15:31:33+00:00 |  | 000032081-01 | JOSEPH | FRAZIER | APOGEE MED GRP OHIO INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213020 | R0602 | Shortness of breath | ICD10 | 02142018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T12:16:06+00:00 |  | 000072628-01 | Robert | Simon | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02142018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213064 | R109 | Unspecified abdominal pain | ICD10 | 02142018 | 02102018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
