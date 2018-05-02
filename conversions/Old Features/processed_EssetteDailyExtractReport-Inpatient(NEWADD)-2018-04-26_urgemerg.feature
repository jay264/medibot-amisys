Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-26_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-26_URGEMERG
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
| 03212018 | 2018-03-21T11:35:40+00:00 |  | 000030945-01 | LINDA | WILLIAMSON | MOUNT CARMEL WEST PHYS | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04262018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04252018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321055 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04262018 | 04242018 | 04252018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03122018 | 2018-03-12T10:39:39+00:00 |  | 000043786-01 | William | Jackson | MOUNT CARMEL HLTH PRVDRS | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04252018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312041 | I481 | Persistent atrial fibrillation | ICD10 | 04262018 | 04242018 | 04252018 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04032018 | 2018-04-03T13:17:40+00:00 |  | 000100065-01 | Furman | Tinon | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403072 | M40209, M48062 | M48062 | ICD10 | 04262018 | 04202018 | 04252018 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 3 | 1, 3 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 04172018 | 2018-04-17T11:02:15+00:00 |  | 000037461-01 | MARY | MCKAY | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417072 | A419 | Sepsis, unspecified organism | ICD10 | 04262018 | 04162018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04182018 | 2018-04-18T15:57:46+00:00 |  | 000111152-01 | Robert | Richberg Jr | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419009 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 04262018 | 04202018 | 04252018 | 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 04122018 | 2018-04-12T14:55:30+00:00 |  | 000085576-01 | Sharon | Edwards | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412062 | C8290, E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 04262018 | 04112018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04192018 | 2018-04-19T11:05:54+00:00 |  | 000064593-01 | PAMELA | DIXON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419031 | K743, R1084 | Generalized abdominal pain | ICD10 | 04262018 | 04182018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04172018 | 2018-04-17T10:53:59+00:00 |  | 000065443-01 | MARYLIN | RAINEY | CENTRAL OH HSPISTS INC | 928657 | RYAN S | CLARK | 1396049011 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417067 | I2699, R0609 | Other forms of dyspnea | ICD10 | 04262018 | 04162018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04192018 | 2018-04-19T11:11:22+00:00 |  | 000026513-01 | SPYROS | SEVIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419033 | E860, F0391, R509, R634 | Abnormal weight loss | ICD10 | 04262018 | 04182018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04202018 | 2018-04-20T10:35:00+00:00 |  | 000070129-01 | Rita | Brooks | SOUND INPATIENT PHYS OF | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420021 | D735, I639 | Cerebral infarction, unspecified | ICD10 | 04262018 | 04172018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04202018 | 2018-04-20T11:00:58+00:00 |  | 000065869-01 | HOWARD | GLOVER | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 04192018 | 04252018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420048 | I214, R079 | Chest pain, unspecified | ICD10 | 04262018 | 04192018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04202018 | 2018-04-20T14:05:26+00:00 |  | 000034852-01 | PHILLIP | ARNOLD | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04192018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420067 | R188 | Other ascites | ICD10 | 04262018 | 04192018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242018 | 2018-04-24T10:14:15+00:00 |  | 000026970-01 | MARY | NELSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04192018 | 04232018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424056 | J189 | Pneumonia, unspecified organism | ICD10 | 04262018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T11:38:54+00:00 |  | 000075233-01 | Rose | Self | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04262018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314041 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04262018 | 04232018 | 04262018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04092018 | 2018-04-09T07:32:48+00:00 |  | 000095247-01 | Robert | Levy | MERCY HEALTH PHYSICIANS | 921203 | DAVID | WARD | 1063469443 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04082018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409068 | K5732, R1031 | Right lower quadrant pain | ICD10 | 04262018 | 04082018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04092018 | 2018-04-09T15:50:08+00:00 |  | 000069899-01 | Russell | Karlen III | OH HSP FOR PSYCHIATRY | 931391 | SUJANA V | RAYANI | 1487862421 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04092018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410045 | F315, F4312 | Post-traumatic stress disorder, chronic | ICD10 | 04262018 | 04092018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 04132018 | 2018-04-13T09:22:55+00:00 |  | 000075447-01 | Arthur | Williams | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04122018 | 06182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413030 | I509 | Heart failure, unspecified | ICD10 | 04262018 | 04122018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T13:50:59+00:00 |  | 000108625-01 | Carl | Birkemeyer | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417117 | D849, E860, N3001, R531 | Weakness | ICD10 | 04262018 | 04162018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T15:09:58+00:00 |  | 000119028-01 | Gary | Rife | OSU HLTH SYSTEM NEUROSUR | 915107 | DANIEL | PREVEDELLO | 1750391090 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418006 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 04262018 | 04162018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04182018 | 2018-04-18T09:09:39+00:00 |  | 000089650-01 | Robert | Morris | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 04262018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418016 | I4891 | Unspecified atrial fibrillation | ICD10 | 04262018 | 04182018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T10:50:43+00:00 |  | 000085321-01 | Linda | Oberdorf | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418037 | R52 | Pain, unspecified | ICD10 | 04262018 | 04182018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T08:49:18+00:00 |  | 000040475-01 | DONALD | ORR | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04192018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420038 | J159 | Unspecified bacterial pneumonia | ICD10 | 04262018 | 04192018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04202018 | 2018-04-20T11:08:20+00:00 |  | 000000254-01 | THOMAS | BERTMAN | MOUNT CARMEL HEALTH SYST | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420050 | R0902, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 04262018 | 04182018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04222018 | 2018-04-22T09:30:38+00:00 |  | 000000463-01 | Carolyn | Welch | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04252018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423035 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04262018 | 04212018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T10:20:15+00:00 |  | 000118788-01 | Lonnie | Harris | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424057 | I639 | Cerebral infarction, unspecified | ICD10 | 04262018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T12:42:32+00:00 |  | 000046075-01 | WALTER | HERRON | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04252018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425055 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 04262018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03012018 | 2018-03-01T13:16:13+00:00 |  | 000078833-01 | Dianna | Parrish | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 04232018 | 04242018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301047 | E6601, G4730, I10 | Essential (primary) hypertension | ICD10 | 04262018 | 04232018 | 04242018 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03302018 | 2018-03-30T10:50:07+00:00 |  | 000058991-01 | LINDA | SELBY | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330063 | I214, R112 | Nausea with vomiting, unspecified | ICD10 | 04262018 | 03292018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 04072018 | 2018-04-07T14:28:05+00:00 |  | 000038260-01 | MURIEL | GIBSON | HOSPITALIST MEDICINE PHY | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04062018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409021 | J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04262018 | 04062018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 04132018 | 2018-04-13T10:01:12+00:00 |  | 000071225-01 | Nancy | Mason | MOUNT CARMEL HLTH SYS | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413017 | C3410 | Malignant neoplasm of upper lobe, unsp bronchus or lung | ICD10 | 04262018 | 04172018 | 04212018 | 31622, 32480 | TOTAL-SUBTOTAL LOBECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 1.0 |
| 04132018 | 2018-04-13T12:48:52+00:00 |  | 000039577-01 | LUCILLE | WOLFE | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04122018 | 04202018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413061 | J159 | Unspecified bacterial pneumonia | ICD10 | 04262018 | 04122018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04142018 | 2018-04-14T09:09:33+00:00 |  | 000093507-01 | Nancy | Brown | ALLIANCE PHYSICIANS INC | 924143 | MATTHEW D | HESS | 1407056518 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416009 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04262018 | 04242018 | 04252018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 04142018 | 2018-04-14T14:22:06+00:00 |  | 000032085-01 | JUDITH | HAWK | HOSPITALIST MEDICINE PHY | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416021 | R6521 | Severe sepsis with septic shock | ICD10 | 04262018 | 04132018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T09:52:30+00:00 |  | 000094198-01 | Terrence | Burns | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04162018 | 04172018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416041 | K3580 | Unspecified acute appendicitis | ICD10 | 04262018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T12:21:46+00:00 |  | 000059078-01 | AGNES | NEUVIRTH | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416082 | J189 | Pneumonia, unspecified organism | ICD10 | 04262018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T13:20:03+00:00 |  | 000079398-01 | Lewis | Taylor | HMP OF RICHLAND COUNTY L | 918510 | HARMANPREET S | SHINH | 1578729174 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04152018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416104 | I200, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04262018 | 04152018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04162018 | 2018-04-16T15:17:10+00:00 |  | 000086359-01 | George | Walker | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417014 | A419 | Sepsis, unspecified organism | ICD10 | 04262018 | 04142018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04172018 | 2018-04-17T09:41:47+00:00 |  | 000000497-01 | RITA | CRISSINGER | MOUNT CARMEL HLTH SYS | 936339 | JAMES A | EDISON | 1871587105 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417017 | R109 | Unspecified abdominal pain | ICD10 | 04262018 | 04142018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04182018 | 2018-04-18T07:14:13+00:00 |  | 000080409-01 | Patricia | Sexton | HOSPITALIST MEDICINE PHY | 947194 | KENNETH H | SURKIN | 1295050227 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418066 | R0602 | Shortness of breath | ICD10 | 04262018 | 04172018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04182018 | 2018-04-18T15:09:24+00:00 |  | 000062110-01 | VEANNA | INMAN | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419007 | E860, G839, K5641, R531 | Weakness | ICD10 | 04262018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04192018 | 2018-04-19T10:22:52+00:00 |  | 000105950-01 | Juanita | Metcalfe | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419027 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 04262018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T10:36:00+00:00 |  | 000099386-01 | Doris | Moore | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419029 | E876, R296 | Repeated falls | ICD10 | 04262018 | 04182018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04192018 | 2018-04-19T14:40:02+00:00 |  | 000079538-01 | Linda | Weber | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419069 | G9340 | Encephalopathy, unspecified | ICD10 | 04262018 | 04192018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04202018 | 2018-04-20T08:55:32+00:00 |  | 000089706-01 | Loretta | Metzger | ONCOLOGY HEMATOLOGY CARE | 921712 | KARYN M | DYEHOUSE | 1649297094 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420016 | C8300 | Small cell B-cell lymphoma, unspecified site | ICD10 | 04262018 | 04192018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T08:54:17+00:00 |  | 000087304-01 | John | Hahn | HOSPITALIST MEDICINE PHY | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04262018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420041 | S301XXA | Contusion of abdominal wall, initial encounter | ICD10 | 04262018 | 04192018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04212018 | 2018-04-21T08:04:55+00:00 |  | 000099642-01 | William | Ryle | HOSPITALIST MEDICINE PHY | 913013 | ROBERT N | RUBIN | 1497879555 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04262018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423025 | I472 | Ventricular tachycardia | ICD10 | 04262018 | 04202018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T15:44:07+00:00 |  | 000106772-01 | Norma | Simmermacher | MOUNT CARMEL HLTH SYS | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04242018 | 04252018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423095 | S2220XA | Unsp fracture of sternum, init encntr for closed fracture | ICD10 | 04262018 | 04242018 | 04252018 | 21825 | FX STERNUM, OPEN TREATMENT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04232018 | 2018-04-23T14:44:24+00:00 |  | 000040549-01 | RAYMOND | TOOPS | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424007 | R001 | Bradycardia, unspecified | ICD10 | 04262018 | 04212018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T12:04:45+00:00 |  | 000092526-01 | Steve | Griffith | SPRINGFIELD UROLOGY LLC | 935927 | VLADA W | MARDOVIN | 1437224508 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424081 | N453, N50819 | TESTICULAR PAIN, UNSPECIFIED | ICD10 | 04262018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T13:06:01+00:00 |  | 000115433-01 | Susan | Powers | FAIRFIELD HLTHCARE PROFS | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424085 | R092 | Respiratory arrest | ICD10 | 04262018 | 04232018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T15:04:23+00:00 |  | 000119688-01 | RITA | FALLON | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04262018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424108 | K5792, R109 | Unspecified abdominal pain | ICD10 | 04262018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T10:08:10+00:00 |  | 000046202-01 | LINDA | MOLEBASH | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04262018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 04302018 | 05302018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180426021 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 04262018 |  |  | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 04262018 | 2018-04-26T10:58:10+00:00 |  | 000035406-01 | L | BLUE | MOUNT CARMEL HLTH PRVDRS | 923371 | NAOMI H | CHEN | 1619154739 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04262018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04252018 | 04262018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426037 | E210 | Primary hyperparathyroidism | ICD10 | 04262018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
