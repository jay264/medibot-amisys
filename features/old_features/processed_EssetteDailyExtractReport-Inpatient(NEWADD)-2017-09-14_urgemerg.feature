Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-14_URGEMERG
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
| 09082017 | 2017-09-08T16:10:07+00:00 |  | 000100046-01 | SANDRA | MCCLELLAN | MERCY HEALTH PHYSICIANS | 920930 | CHARLES | MILLER | 1417956202 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09142017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908087 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09142017 | 09112017 | 09142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 09072017 | 2017-09-07T14:32:30+00:00 |  | 000117008-01 | John | Williams | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908016 | R079, R109 | Unspecified abdominal pain | ICD10 | 09142017 | 09062017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08292017 | 2017-08-29T09:56:45+00:00 | 250869277240 | 000020319-01 | VIRGINIA | PACK | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08282017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829018 | J189, N390 | Urinary tract infection, site not specified | ICD10 | 09142017 | 08282017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 09052017 | 2017-09-05T14:48:16+00:00 | 250790147244 | 000061427-01 | EDWARD | MUNYAN | MOUNT CARMEL HLTH SYS | 935560 | JOHN R | BURNS | 1700825353 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905087 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 09142017 | 09012017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 09112017 | 2017-09-11T10:57:14+00:00 |  | 000077920-01 | James | Tucker | HOSPITAL MEDICINE SERVIC | 949655 | WONDWOSSEN Y | DERERIE | 1760793897 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09092017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911124 | E8352 | Hypercalcemia | ICD10 | 09142017 | 09092017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09082017 | 2017-09-08T13:05:55+00:00 |  | 000095036-01 | Edison | Montgomery | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09142017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09072017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911052 | E806, I213, I509, R791 | Abnormal coagulation profile | ICD10 | 09142017 | 09072017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09062017 | 2017-09-06T14:53:53+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | OSU NEUROPSYCH PHYS SRVS | 909006 | DAVID | KASICK | 1386791861 | OSU HOSPITAL | 902254 | 1447359997 | THE OH STATE UNIVERSITY HSP HARDING | 1790876183 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HSP HARDING | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906067 | F061 | Catatonic disorder due to known physiological condition | ICD10 | 09142017 | 08282017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T15:23:53+00:00 | 017800382-7227 | 000103143-01 | David | Brown | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814122 | I4891 | Unspecified atrial fibrillation | ICD10 | 09142017 | 09112017 | 09132017 | 33256 | OPERATIVE TISSUE ABLATION & RECONSTRUCTION OF ATRIA WITH CARDIOPLUMONARY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09062017 | 2017-09-06T09:10:57+00:00 |  | 000013662-01 | PATRICK | BOCH | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906025 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 09142017 | 09112017 | 09132017 | 33419, 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 09082017 | 2017-09-08T14:02:27+00:00 |  | 000032574-01 | DONNA | WALTERS | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911062 | A419, E872, N390, K55019 | ACUTE ISCHEMIA OF SMALL INTESTINE, EXTENT UNSPECIFIED | ICD10 | 09142017 | 09072017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09132017 | 2017-09-13T12:12:55+00:00 | 017929926-7234 | 000093852-01 | Sharon | Cole | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09142017 | Approved | MediGold Southeast OH Classic Preferred | EMR | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913026 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 09142017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T11:33:01+00:00 |  | 000002297-01 | JEAN | SCOTT | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09102017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911130 | N179 | Acute kidney failure, unspecified | ICD10 | 09142017 | 09102017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T10:18:41+00:00 | 263847377253 | 000045585-01 | SYLVIA | MEYERS | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911046 | M6281 | Muscle weakness (generalized) | ICD10 | 09142017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09122017 | 2017-09-12T12:54:08+00:00 |  | 000116781-01 | Judith | Pauley | SOUND PHYSICIANS OF OHI0 | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 09142017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 09142017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170912057 | I639 | Cerebral infarction, unspecified | ICD10 | 09142017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09112017 | 2017-09-11T14:20:09+00:00 | 026786055-7254 | 000111807-01 | DUANE | MCLAUGHLIN | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09142017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911101 | M02862 | Other reactive arthropathies, left knee | ICD10 | 09142017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09122017 | 2017-09-12T08:21:36+00:00 | 251386547254 | 000028420-01 | GWEN | BELLAR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09112017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912002 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 09142017 | 09112017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T14:33:20+00:00 |  | 000118219-01 | Ellen | Mckirgan | FAYETTE COUNTY MEM HSP C | 905606 | WILLIAM C | STEVENSON | 1922181528 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908019 | L02415, L03115 | Cellulitis of right lower limb | ICD10 | 09142017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08222017 | 2017-08-22T13:22:02+00:00 | 017930144-7234 | 000111509-01 | David | Ferguson | ORTHO ASSOC OF ZANESVILL | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09122017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822086 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09142017 | 09122017 | 09132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09112017 | 2017-09-11T09:24:06+00:00 | 168481067252 | 000037704-01 | SONIA | WEINER | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09082017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911026 | I509 | Heart failure, unspecified | ICD10 | 09142017 | 09082017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09132017 | 2017-09-13T11:59:56+00:00 |  | 000090585-01 | Gary | Neal | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09142017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09122017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914065 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09142017 | 09122017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08102017 | 2017-08-10T09:23:16+00:00 | 025186547-7222 | 000048567-01 | David | Justus | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810031 | T84021A | Dislocation of internal left hip prosthesis, init encntr | ICD10 | 09142017 | 09122017 | 09142017 | 27138 | REVSN TOT HIP ARTHPLSTY FEMRL COMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08232017 | 2017-08-23T10:14:32+00:00 | 025062159-7237 | 000072222-01 | ROBERT | KUHN | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823036 | M24661, M25561 | Pain in right knee | ICD10 | 09142017 | 09122017 | 09142017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09072017 | 2017-09-07T09:40:20+00:00 |  | 000046329-01 | DAVID | SWENSON | MOUNT CARMEL HLTH SYS | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907096 | E875 | Hyperkalemia | ICD10 | 09142017 | 09052017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T10:21:24+00:00 |  | 000066729-01 | JUDITH | BLAIR | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828094 | E860, R0602 | Shortness of breath | ICD10 | 09142017 | 08252017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09072017 | 2017-09-07T08:13:24+00:00 |  | 000086520-01 | Stephanie | Lincicome | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908051 | K8010 | Calculus of gallbladder w chronic cholecyst w/o obstruction | ICD10 | 09142017 | 09132017 | 09142017 | 47600 | CHOLECYSTECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09112017 | 2017-09-11T09:21:53+00:00 |  | 000118070-01 | YVONNE | ROBERTS | FAIRFIELD HLTHCARE PROFS | 918203 | AVNEET S | HIRA | 1750570669 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911089 | F319 | Bipolar disorder, unspecified | ICD10 | 09142017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09142017 | 2017-09-14T08:48:53+00:00 |  | 000026875-01 | CHIE | BERRY | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09122017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914006 | K811 | Chronic cholecystitis | ICD10 | 09142017 | 09122017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T15:20:00+00:00 |  | 000098172-01 | Bruce | Coldiron | PULMONARY MED OF DAYTON | 947283 | RAVI Y | DESAI | 1629399035 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912055 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09142017 | 09092017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09142017 | 2017-09-14T16:32:36+00:00 | 026314089-7250 | 000098574-01 | JOANN | PRICE | WESTERVILLE SURG SPEC LL | 914527 | RICHARD S | BROWN JR | 1679538177 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914110 | K8012 | Calculus of GB w acute and chronic cholecyst w/o obstruction | ICD10 | 09142017 | 09132017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09142017 | 2017-09-14T09:38:48+00:00 |  | 000079627-01 | Lisa | Woods | ENT & SINUS INSTITUTE OF | 915192 | SUMIT | BAPNA | 1841415049 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09122017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914017 | J343 | Hypertrophy of nasal turbinates | ICD10 | 09142017 | 09122017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T09:53:43+00:00 | 250535537253 | 000021709-01 | HELEN | HERBERT | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09102017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911034 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09142017 | 09102017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09142017 | 2017-09-14T06:50:24+00:00 |  | 000031524-01 | EVA | THURSTON | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09142017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914001 | K8010 | Calculus of gallbladder w chronic cholecyst w/o obstruction | ICD10 | 09142017 | 09132017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T12:05:27+00:00 |  | 000106579-01 | Joann | Reeves | OSU HLTH SYSTEM NEUROSUR | 915107 | DANIEL | PREVEDELLO | 1750391090 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828090 | E237 | Disorder of pituitary gland, unspecified | ICD10 | 09142017 | 09062017 | 09122017 | 62165, 61781 | SCAN PROC CRANIAL INTRA | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 3.0 |
| 09112017 | 2017-09-11T08:54:58+00:00 |  | 000050503-01 | GOBLE | BRANHAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911084 | A419, J159 | Unspecified bacterial pneumonia | ICD10 | 09142017 | 09082017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09142017 | 2017-09-14T16:41:59+00:00 | 025223143-7254 | 000055867-01 | ROY | ROSS JR | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914111 | R319 | Hematuria, unspecified | ICD10 | 09142017 | 09132017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:41:22+00:00 |  | 000070415-01 | Yvonne | Miller | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828071 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09142017 | 09112017 | 09132017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09122017 | 2017-09-12T09:38:11+00:00 |  | 000026678-01 | WALTER | SUMMERS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913041 | I4891, J159 | Unspecified bacterial pneumonia | ICD10 | 09142017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09112017 | 2017-09-11T09:09:14+00:00 |  | 000055763-01 | ELMER | VANCE | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911087 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09142017 | 09082017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T09:27:08+00:00 |  | 000084606-01 | Ethel | Grimm | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907045 | E8770 | Fluid overload, unspecified | ICD10 | 09142017 | 09052017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08152017 | 2017-08-15T14:32:21+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08152017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815091 | D7581 | Myelofibrosis | ICD10 | 09142017 | 08152017 | 09132017 | 38240, 36558, 76937, 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 30, 30, 30, 30 | CPT | C4 |  |  |  | 4.0 |
| 08222017 | 2017-08-22T11:39:14+00:00 | 025669068-7251 | 000037278-01 | PATRICIA | FOX | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822100 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09142017 | 09112017 | 09132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08152017 | 2017-08-15T10:12:32+00:00 | 251294257227 | 000008318-01 | WILLIAM | ZWEYDORFF | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08152017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815027 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 09142017 | 08152017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 09062017 | 2017-09-06T14:24:42+00:00 |  | 000103529-01 | Lynne | Jones | S DAYTON ACUTE CARE CNSL | 922839 | KARLO A | RUFO | 1194956581 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907083 | A419 | Sepsis, unspecified organism | ICD10 | 09142017 | 09052017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09122017 | 2017-09-12T10:56:04+00:00 | 256612667254 | 000009101-01 | JOANN | VAUGHN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 09112017 | 09142017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912033 | I4891 | Unspecified atrial fibrillation | ICD10 | 09142017 | 09112017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T11:30:42+00:00 |  | 000087540-01 | Lucille | Mitchell | NEUROSCIENCE CENTER | 947785 | SHRADDHA | MAINALI | 1972733657 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907103 | I639 | Cerebral infarction, unspecified | ICD10 | 09142017 | 09062017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09132017 | 2017-09-13T19:29:48+00:00 |  | 000029084-01 | SYLVESTER | PHILLIPS | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09142017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09122017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914112 | R339 | Retention of urine, unspecified | ICD10 | 09142017 | 09122017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T15:16:28+00:00 |  | 000057679-01 | JAMES | PAGE | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09052017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907085 | A419, J189, R4182 | Altered mental status, unspecified | ICD10 | 09142017 | 09052017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
