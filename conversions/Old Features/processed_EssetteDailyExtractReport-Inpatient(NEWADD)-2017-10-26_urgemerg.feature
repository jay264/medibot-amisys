Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-26_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-26_URGEMERG
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
| 10062017 | 2017-10-06T17:05:52+00:00 |  | 000024228-01 | SHIRLEY | MILLS | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10252017 | Approved | THE TIMKEN COMPANY | Fax | EIS | Inpatient | 10252017 | 10252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009010 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10252017 | 10252017 | 10252017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 10262017 | 2017-10-26T08:24:30+00:00 |  | 000102670-01 | Carol | Corner | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 10242017 | 10252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026005 | D414 | Neoplasm of uncertain behavior of bladder | ICD10 | 10262017 | 10242017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T09:21:09+00:00 |  | 000082872-01 | Kathy | Sullivan | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024051 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10262017 | 10232017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10052017 | 2017-10-05T16:56:19+00:00 |  | 000104819-01 | Susan | Shaffer | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006008 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10262017 | 10192017 | 10252017 | 32669 | THORACOSCOPY REMOVE SEGMENT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 10242017 | 2017-10-24T09:03:41+00:00 | 250082717297 | 000034882-01 | RITA | HEWITT | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10242017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024012 | G9340, K631, R109 | Unspecified abdominal pain | ICD10 | 10262017 | 10242017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10182017 | 2017-10-18T15:38:02+00:00 | 250562337291 | 000094645-01 | Bill | Jeffrey | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10182017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018074 | A419, K819 | Cholecystitis, unspecified | ICD10 | 10262017 | 10182017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10242017 | 2017-10-24T16:26:28+00:00 |  | 000112180-01 | Brenda | Starner | DUBLIN SPRINGS LLC | 923693 |  | COLUMBUS SPRINGS DUBLIN | 1164798708 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 10262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10142017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025040 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 10262017 | 10142017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10222017 | 2017-10-22T18:35:57+00:00 |  | 000052663-01 | JOAN | BRAGG | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023107 | N390 | Urinary tract infection, site not specified | ICD10 | 10262017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09272017 | 2017-09-27T11:11:33+00:00 |  | 000006647-01 | ADA | RIGHTER | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10242017 | 10252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927065 | I4891 | Unspecified atrial fibrillation | ICD10 | 10262017 | 10242017 | 10252017 | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10052017 | 2017-10-05T08:37:29+00:00 |  | 000051459-01 | ERNEST | ADAMS | OSU SURGERY LLC | 917856 | LARRY M | JONES | 1659356434 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005015 | T25022A | Burn of unspecified degree of left foot, initial encounter | ICD10 | 10262017 | 10042017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10162017 | 2017-10-16T11:56:42+00:00 | 251035097287 | 000000736-01 | MARY | STOCKDALE | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10142017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016060 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 10262017 | 10142017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 10192017 | 2017-10-19T11:50:11+00:00 |  | 000061759-01 | DONNA | BETHEL | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019060 | I5031, J189, R0600 | Dyspnea, unspecified | ICD10 | 10262017 | 10182017 | 10222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10102017 | 2017-10-10T08:43:56+00:00 |  | 000048468-01 | PATRICIA | DEXTER | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010061 | R079 | Chest pain, unspecified | ICD10 | 10262017 | 10092017 | 10192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10192017 | 2017-10-19T11:44:04+00:00 |  | 000077002-01 | Stephen | Saxton | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019059 | I10, I2699, R0902 | Hypoxemia | ICD10 | 10262017 | 10182017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T18:09:04+00:00 |  | 000105094-01 | JOHN | EMERY JR | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024035 | J810 | Acute pulmonary edema | ICD10 | 10262017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T09:17:56+00:00 |  | 000027402-01 | TERRIE | JUSTICE | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013032 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 10262017 | 10112017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 10232017 | 2017-10-23T16:12:37+00:00 |  | 000106587-01 | Christopher | Jarrells | S DAYTON ACUTE CARE CNSL | 902589 | ROBERT | SAWYER | 1730160268 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10262017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10202017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024029 | J9601, R0602 | Shortness of breath | ICD10 | 10262017 | 10202017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10202017 | 2017-10-20T09:06:29+00:00 |  | 000112241-01 | Kathy | Jackson | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020039 | S42201A | Unsp fracture of upper end of right humerus, init | ICD10 | 10262017 | 10192017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10172017 | 2017-10-17T13:12:18+00:00 |  | 000114200-01 | Ida | Webb | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | IP Substance Abuse | IP SA | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 10262017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017063 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 10262017 | 10162017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T12:35:44+00:00 |  | 000077779-01 | Helen | Temple | ZANESVILLE XPRESS ORTHO | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016079 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10262017 | 10232017 | 10252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10232017 | 2017-10-23T10:27:15+00:00 |  | 000075441-01 | Ronald | Hardy | GENESIS MEDICAL GRP LLC | 929149 | ADAM R | ROTHERMEL | 1154647899 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10222017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023116 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 10262017 | 10222017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10142017 | 2017-10-14T17:38:27+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016110 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10262017 | 10132017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10222017 | 2017-10-22T19:13:28+00:00 | 017996553-7292 | 000012422-01 | MINA | GORBY | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10192017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171022002 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10262017 | 10192017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10232017 | 2017-10-23T10:01:54+00:00 |  | 000078210-01 | Katrina | Whitesed | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 10262017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10212017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023109 | D649 | Anemia, unspecified | ICD10 | 10262017 | 10212017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T10:26:58+00:00 | 260377087294 | 000072736-01 | Marjory | Hillis | EMERGENCY SERVICES INC | 914016 | MICHAEL J | GLUECKERT | 1295902237 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 10212017 | 10262017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023050 | R609 | Edema, unspecified | ICD10 | 10262017 | 10212017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10232017 | 2017-10-23T10:34:53+00:00 | 250649157294 | 000009904-01 | JAMES | LAW | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10212017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023055 | A047, K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 10262017 | 10212017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10172017 | 2017-10-17T15:56:21+00:00 |  | 000115312-01 | HENRY | HATCHER JR | ALLIANCE PHYSICIANS INC | 948840 | RAGAVAN | NARAYANAN | 1205147030 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018006 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 10262017 | 10162017 | 10212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10162017 | 2017-10-16T10:29:23+00:00 |  | 000115167-01 | DENNIS | HECLO | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016093 | R55 | Syncope and collapse | ICD10 | 10262017 | 10132017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09272017 | 2017-09-27T09:51:39+00:00 | 256688157269 | 000070886-01 | Donald | Schlater | SOUND PHYSICIANS OF OHI0 | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10262017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09262017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927026 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 10262017 | 09262017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 10042017 | 2017-10-04T12:57:05+00:00 | 025903559-7271 | 000059673-01 | DONALD | HOOVLER | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004082 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10262017 | 10252017 | 10262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10062017 | 2017-10-06T14:09:44+00:00 |  | 000098392-01 | James | Anderson | ALLIANCE PHYSICIANS INC | 910918 | MICHAEL C | WELKER | 1942211305 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006059 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10262017 | 10232017 | 10252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10202017 | 2017-10-20T09:21:20+00:00 | 252263867292 | 000116060-01 | ROBERT | ROWLES JR | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10192017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020027 | N390, R319 | Hematuria, unspecified | ICD10 | 10262017 | 10192017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10242017 | 2017-10-24T14:53:40+00:00 |  | 000081686-01 | Kevin | Daniel | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024085 | R079, R748 | Abnormal levels of other serum enzymes | ICD10 | 10262017 | 10242017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09282017 | 2017-09-28T10:15:29+00:00 | 025109888-7249 | 000118115-01 | John | Smith Sr | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928060 | D120, D123 | Benign neoplasm of transverse colon | ICD10 | 10262017 | 10242017 | 10262017 | 44025 | COLOTOMY,FOR BX OR REMVL OF F.B. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10232017 | 2017-10-23T11:15:11+00:00 | 263501567295 | 000060807-01 | GEORGE | WALRAVEN | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10222017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023080 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10262017 | 10222017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T10:36:53+00:00 | 267570817293 | 000072013-01 | Robert | Langford | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10262017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10202017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023056 | R0602 | Shortness of breath | ICD10 | 10262017 | 10202017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09182017 | 2017-09-18T12:25:07+00:00 | 017954202-7263 | 000083935-01 | Sandra | Rice | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918085 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10262017 | 10252017 | 10262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10242017 | 2017-10-24T08:29:51+00:00 | 258923047298 | 000002343-01 | HAROLD | BENNETT | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024016 | R079 | Chest pain, unspecified | ICD10 | 10262017 | 10242017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
