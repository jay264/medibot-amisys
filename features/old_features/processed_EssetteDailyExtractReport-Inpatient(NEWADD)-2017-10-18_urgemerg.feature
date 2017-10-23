Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-18_URGEMERG
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
| 10102017 | 2017-10-10T13:17:36+00:00 |  | 000053886-01 | PAUL | SHREVE | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10182017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010092 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10182017 | 10092017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10132017 | 2017-10-13T14:25:59+00:00 | 026350387-7269 | 000081041-01 | Richard | Stretton | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 10182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10172017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013056 | M25562 | Pain in left knee | ICD10 | 10182017 | 10162017 | 10172017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10092017 | 2017-10-09T10:23:58+00:00 | 263448687281 | 000115484-01 | EMILY | GETTYS | SOUND PHYSICIANS OF OHI0 | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10092017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009044 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10182017 | 10092017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10132017 | 2017-10-13T15:51:55+00:00 | 252198927286 | 000011848-01 | JOAN | PEARSON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013061 | M86151 | Other acute osteomyelitis, right femur | ICD10 | 10182017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10102017 | 2017-10-10T11:28:02+00:00 | 251872717283 | 000090564-01 | Adam | Jones | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10102017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010037 | I509 | Heart failure, unspecified | ICD10 | 10182017 | 10102017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10132017 | 2017-10-13T09:56:07+00:00 | 250948067285 | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10122017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013011 | J189 | Pneumonia, unspecified organism | ICD10 | 10182017 | 10122017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10162017 | 2017-10-16T11:57:07+00:00 | 250895187286 | 000040861-01 | Ann | Payne | CEP AMERICA - OHIO LLC | 951965 | ALEXANDER | WANG | 1861837650 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 10132017 | 10172017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016059 | R079 | Chest pain, unspecified | ICD10 | 10182017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10122017 | 2017-10-12T10:18:40+00:00 | 257487417284 | 000090172-01 | George | Gholson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10112017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012012 | J00 | Acute nasopharyngitis [common cold] | ICD10 | 10182017 | 10112017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10102017 | 2017-10-10T15:48:31+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011040 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10182017 | 10092017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09262017 | 2017-09-26T07:26:13+00:00 |  | 000060961-01 | CONSTANCE | RINE | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09242017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926003 | E871, I509 | Heart failure, unspecified | ICD10 | 10182017 | 09242017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10092017 | 2017-10-09T10:26:22+00:00 |  | 000116219-01 | WILLIAM | SHEARD JR | TRIHEALTH H LLC | 932557 | BRADLEY J | SCHULTZ | 1821366618 | MCCULLOUGH-HYDE MEM HSP | 923689 | 1245216183 | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 1245216183 | Inpatient | IP | Concurrent Review | CONC |  | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 10182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009085 | R109 | Unspecified abdominal pain | ICD10 | 10182017 | 10062017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09202017 | 2017-09-20T12:39:06+00:00 |  | 000067847-01 | ANDREA | LOGAN | CENTRAL OH HSPISTS INC | 914259 | JAMES W | DEVORE JR | 1033308333 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09192017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920092 | E878 | Oth disorders of electrolyte and fluid balance, NEC | ICD10 | 10182017 | 09192017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 10162017 | 2017-10-16T09:14:42+00:00 | 253814677288 | 000114032-01 | Roy | Bradley | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 10152017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016032 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 10182017 | 10152017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10052017 | 2017-10-05T15:08:25+00:00 |  | 000087018-01 | Daniel | Kennedy | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005052 | R0602, R0609 | Other forms of dyspnea | ICD10 | 10182017 | 10042017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 10162017 | 2017-10-16T14:03:08+00:00 |  | 000097505-01 | Robert | Haslett | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10182017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 10182017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171017036 | R561 | Post traumatic seizures | ICD10 | 10182017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10132017 | 2017-10-13T11:42:30+00:00 |  | 000034814-01 | SARAH | SHULTZ | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013040 | I10 | Essential (primary) hypertension | ICD10 | 10182017 | 10112017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T12:54:29+00:00 |  | 000077342-01 | David | Francis | SOUND PHYSICIANS OF OHI0 | 948091 | SAMUEL | ADAMS | 1225018104 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10152017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017023 | I4891, I509, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10182017 | 10152017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T16:00:54+00:00 | 250106557282 | 000002452-01 | JOYCE | BERRY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10092017 | 10182017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009107 | J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 10182017 | 10092017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10162017 | 2017-10-16T07:27:16+00:00 | 251399977287 | 000028952-01 | REBECCA | BANNER | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10142017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016001 | R109 | Unspecified abdominal pain | ICD10 | 10182017 | 10142017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T09:37:05+00:00 | 250696767270 | 000057879-01 | HOWARD | LEWINTER | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09262017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927017 | N390 | Urinary tract infection, site not specified | ICD10 | 10182017 | 09262017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 10132017 | 2017-10-13T09:50:09+00:00 |  | 000076170-01 | Thomas | Nethers | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10122017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013010 | C459, I4891 | Unspecified atrial fibrillation | ICD10 | 10182017 | 10122017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10052017 | 2017-10-05T08:33:21+00:00 |  | 000057679-01 | JAMES | PAGE | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10042017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005013 | A047, E118, L03116, M868X9 | Other osteomyelitis, unspecified sites | ICD10 | 10182017 | 10042017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 09152017 | 2017-09-15T15:07:28+00:00 |  | 000090305-01 | Philip | Vaughn | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10182017 | 10172017 | 10182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10132017 | 2017-10-13T13:56:50+00:00 |  | 000109651-01 | William | Stewart | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016045 | I469, I4901 | Ventricular fibrillation | ICD10 | 10182017 | 10132017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10122017 | 2017-10-12T11:43:53+00:00 |  | 000100165-01 | James | Hayes | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10182017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012040 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 10182017 | 10112017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10042017 | 2017-10-04T15:26:40+00:00 |  | 000090108-01 | Inez | Stinson | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10032017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005019 | G939 | Disorder of brain, unspecified | ICD10 | 10182017 | 10032017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10102017 | 2017-10-10T14:08:43+00:00 |  | 000083845-01 | Norman | Brooks | CAMPBELL, JESSICA B | 900148 | JESSICA B | CAMPBELL | 1437190790 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10122017 | 10172017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010081 | I70221 | Athscl native arteries of extremities w rest pain, right leg | ICD10 | 10182017 | 10122017 | 10172017 | 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 10092017 | 2017-10-09T09:02:40+00:00 | 250018787281 | 000080776-01 | John | Aldenderfer | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009008 | R0902 | Hypoxemia | ICD10 | 10182017 | 10082017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10162017 | 2017-10-16T08:44:08+00:00 | 256952727286 | 000003516-01 | GOLDIE | MOONEY | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016020 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 10182017 | 10132017 | 10182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10162017 | 2017-10-16T11:32:46+00:00 |  | 000096147-01 | Frederick | Goerler | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10142017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017007 | D46C | Myelodysplastic syndrome w isolated del(5q) chromsoml abnlt | ICD10 | 10182017 | 10142017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T14:14:07+00:00 |  | 000091158-01 | Ellen | Estridge | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011055 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10182017 | 10102017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
