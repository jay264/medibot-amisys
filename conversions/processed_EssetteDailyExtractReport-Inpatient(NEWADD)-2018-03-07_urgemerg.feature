Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-07_URGEMERG
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
| 02212018 | 2018-02-21T09:37:15+00:00 |  | 000031865-01 | CLARENCE | SPEAKMAN | MOUNT CARMEL HLTH PRVDRS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221046 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03072018 | 02282018 | 03062018 | 31622, 32666, 32484 | REMOVAL OF LUNG, OTHER THAN TOTAL PNEUMONECTOMY; | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 7, 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 02262018 | 2018-02-26T18:24:06+00:00 |  | 000072109-01 | Linda | Bond | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227030 | I4891, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03072018 | 02262018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03052018 | 2018-03-05T12:51:50+00:00 |  | 000043104-01 | MACK | BLANKENSHIP | COLS INPATIENT CARE INC | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03042018 | 03062018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305100 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03072018 | 03042018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03022018 | 2018-03-02T15:36:55+00:00 |  | 000037573-01 | JAMES | PETERS | LEE MEMORIAL HEALTH SYSTEM | 939644 |  | LEE MEMORIAL HEALTH SYSTEM | 1710093521 | LEE MEMORIAL HEALTH SYSTEM | 939644 | 1710093521 | LEE MEMORIAL HEALTH SYSTEM | 1710093521 | Inpatient | IP | Concurrent Review | CONC |  | LEE MEMORIAL HEALTH SYSTEM | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305012 | K5660 | Unspecified intestinal obstruction | ICD10 | 03072018 | 03022018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T12:35:51+00:00 |  | 000120076-01 | Deborah | Barker | ORTHOPEDIC ONE INC | 925969 | JASON R | FERREL | 1063790657 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208051 | M4316, M48062 | M48062 | ICD10 | 03072018 | 03012018 | 03062018 | 22612, 22614, 22842, 22633, 22634, 63047, 63048, 20931, 20936, L0650 | LSO SC R ANT/POS PNL PRE OTS | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | HCPCS | HC |  |  |  | 5.0 |
| 02202018 | 2018-02-20T16:43:27+00:00 |  | 000070216-01 | Audalene | Barnes | COLON & RECTAL SURG INC | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03052018 | 03062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221028 | K623 | Rectal prolapse | ICD10 | 03072018 | 03052018 | 03062018 | 45130 | EXC RECTAL PROCIDENT PERINEAL APPR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T13:17:59+00:00 |  | 000114881-01 | Walter | Hurst | HOSPITALIST MEDICINE PHY | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02202018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222005 | A419 | Sepsis, unspecified organism | ICD10 | 03072018 | 02202018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02232018 | 2018-02-23T12:22:39+00:00 |  | 000000202-01 | WILLIAM | RUSHIA | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223046 | R6521 | Severe sepsis with septic shock | ICD10 | 03072018 | 02222018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02232018 | 2018-02-23T16:38:27+00:00 |  | 000078922-01 | Gary | Grizzle | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02282018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226004 | I2510, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03072018 | 02282018 | 03062018 | 33530, 33533, 33405 | REPLACEMENT AORTIC VALVE | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 7, 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 02272018 | 2018-02-27T07:57:55+00:00 |  | 000044837-01 | RICHARD | MILLS | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227036 | T8189XA, T8789 | Other complications of amputation stump | ICD10 | 03072018 | 02262018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02282018 | 2018-02-28T17:36:07+00:00 |  | 000102310-01 | JAMES | SARVER | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228096 | A419, I214, J9600, M6281 | Muscle weakness (generalized) | ICD10 | 03072018 | 02272018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03012018 | 2018-03-01T16:28:02+00:00 |  | 000038488-01 | PATRICIA | LONGBERRY | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03032018 | 03062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302002 | S72025A | Nondisp fx of epiphy (separation) (upper) of l femur, init | ICD10 | 03072018 | 03032018 | 03062018 | 27125 | PARTIAL HIP REPLACEMENT, PROSTHESIS | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03022018 | 2018-03-02T12:58:25+00:00 |  | 000053301-01 | DAINA | MCGARY | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03012018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302034 | R55, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 03072018 | 03012018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02142018 | 2018-02-14T16:43:15+00:00 |  | 000087312-01 | Leroy | Rutledge | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03052018 | 03062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215013 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03072018 | 03052018 | 03062018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:53:56+00:00 |  | 000071758-01 | William | Geisler | ALLIANCE PHYSICIANS INC | 924143 | MATTHEW D | HESS | 1407056518 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 02282018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221023 | M1612, M25552 | Pain in left hip | ICD10 | 03072018 | 02272018 | 02282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02232018 | 2018-02-23T14:45:31+00:00 |  | 000094658-01 | Yvonne | Gilliam | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | PROVIDER, UNKNOWN | 999999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC | UNKNOWN | PROVIDER | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223063 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 03072018 | 02222018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02262018 | 2018-02-26T14:05:31+00:00 |  | 000102755-01 | Gregory | Wearly | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03072018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02232018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226078 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03072018 | 02232018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03012018 | 2018-03-01T11:19:38+00:00 |  | 000034556-01 | LEOLA | REINCKE | MOUNT CARMEL HLTH SYS | 932482 | JOSEPH D | THOMAS | 1083876288 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301044 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 03072018 | 02282018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02132018 | 2018-02-13T09:44:27+00:00 |  | 000049704-01 | MARGARET | PLUNKETT | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03022018 | 03062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213059 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03072018 | 03022018 | 03062018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 02232018 | 2018-02-23T19:05:29+00:00 |  | 000024294-01 | RUTH | METTLER | SOMC MED CARE FOUNDATION | 923188 | SARA C | ROCHESTER | 1144247172 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226017 | F22 | Delusional disorders | ICD10 | 03072018 | 02222018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03052018 | 2018-03-05T10:23:11+00:00 |  | 000100655-01 | Terry | Martin | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305028 | R001 | Bradycardia, unspecified | ICD10 | 03072018 | 03042018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T08:31:55+00:00 |  | 000092257-01 | Arthur | Gall | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305065 | I82A12 | Acute embolism and thrombosis of left axillary vein | ICD10 | 03072018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T12:22:28+00:00 |  | 000067067-01 | JERRY | SAPP | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03032018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305095 | J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 03072018 | 03032018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T13:28:49+00:00 |  | 000107010-01 | Mary | Gilmore | APOGEE MED GRP OHIO INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03042018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305104 | S72101A | Unsp trochanteric fracture of right femur, init for clos fx | ICD10 | 03072018 | 03042018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T16:11:22+00:00 |  | 000083550-01 | Joan | Shaff | LEE MEMORIAL HEALTH SYSTEM | 939644 |  | LEE MEMORIAL HEALTH SYSTEM | 1710093521 | LEE MEMORIAL HEALTH SYSTEM | 939644 | 1710093521 | LEE MEMORIAL HEALTH SYSTEM | 1710093521 | Inpatient | IP | Concurrent Review | CONC |  | LEE MEMORIAL HEALTH SYSTEM | 03072018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03042018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305118 | R6889 | Other general symptoms and signs | ICD10 | 03072018 | 03042018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T15:27:55+00:00 |  | 000046933-01 | ANNA | MOORE | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306018 | E860, E871 | Hypo-osmolality and hyponatremia | ICD10 | 03072018 | 03022018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03062018 | 2018-03-06T14:41:50+00:00 |  | 000057544-01 | DEBBIE | MORROW | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03072018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03052018 | 03062018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306086 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03072018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T15:33:25+00:00 |  | 000091057-01 | Joyce | Steinmetz | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03072018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180306093 | I611 | Nontraumatic intcrbl hemorrhage in hemisphere, cortical | ICD10 | 03072018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
