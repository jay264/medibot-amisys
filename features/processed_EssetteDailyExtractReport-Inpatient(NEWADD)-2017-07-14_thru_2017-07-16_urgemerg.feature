Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-14_thru_2017-07-16_URGEMERG
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
| 04142017 | 2017-04-14T15:07:40+00:00 | 026456646-7108 | 000101941-01 | James | Ramey | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414079 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07142017 | 07102017 | 07132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04262017 | 2017-04-26T15:45:44+00:00 |  | 000032560-01 | BEATRICE | WYNETT | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252017 | 04282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427033 | J40, J9801, R0902 | Hypoxemia | ICD10 | 07142017 | 04252017 | 04282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06072017 | 2017-06-07T13:37:38+00:00 |  | 000081787-01 | Linda | Edwards | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607059 | K659, R1030, R6521 | Severe sepsis with septic shock | ICD10 | 07142017 | 06062017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 06152017 | 2017-06-15T12:42:32+00:00 |  | 000111377-01 | James | Zavisin | CARY COPELAND, DPM, INC | 926068 | DOMINIC A | RIZZO | 1043283047 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615059 | L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 07142017 | 06122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 06222017 | 2017-06-22T13:31:29+00:00 |  | 000031254-01 | JOYCE | MYERS | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622056 | C541 | Malignant neoplasm of endometrium | ICD10 | 07142017 | 07102017 | 07132017 | 38562, 58150 | TOTAL HYST W/WO RMVL TUBES OR OVARY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06232017 | 2017-06-23T09:35:45+00:00 |  | 000024830-01 | MARGARET | GRUBAUGH | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623015 | I639 | Cerebral infarction, unspecified | ICD10 | 07142017 | 06272017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 06262017 | 2017-06-26T10:51:29+00:00 | 25045927176 | 000017745-01 | WILLIAM | HOBENSACK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626044 | R310 | Gross hematuria | ICD10 | 07142017 | 06252017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 06232017 | 2017-06-23T15:52:26+00:00 |  | 000054408-01 | CAROL | WALLAR | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626046 | R7309 | Other abnormal glucose | ICD10 | 07142017 | 06222017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06272017 | 2017-06-27T13:11:02+00:00 | 026078117-7165 | 000035500-01 | EVELYN | PAWLAK | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 07142017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627078 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07142017 | 07132017 | 07142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T10:56:44+00:00 |  | 000089572-01 | Donna | McCall | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 06282017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629043 | H02409, R1310 | Dysphagia, unspecified | ICD10 | 07142017 | 06282017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 06292017 | 2017-06-29T12:35:59+00:00 |  | 000101165-01 | Dawn | Day | CONCORD PSYCHIATRY LLC | 943674 | SCOTT D | YOHO | 1821380809 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629057 | F1320 | Sedative, hypnotic or anxiolytic dependence, uncomplicated | ICD10 | 07142017 | 06292017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06302017 | 2017-06-30T10:02:12+00:00 | 016823606-7152 | 000043233-01 | DAVID | DUPLER | NORTH CEN OHIO FAM CARE | 916037 | CHRISTOPHER D | MCCLUNG | 1285804252 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07122017 | 07132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630021 | N359 | Urethral stricture, unspecified | ICD10 | 07142017 | 07122017 | 07132017 | 53010, 52000 | CYSTOURETHOSCOPY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07012017 | 2017-07-01T07:57:47+00:00 |  | 000115194-01 | Billy | Mitchell | OSU INTERNAL MED LLC | 910383 | RAMI | KAHWASH | 1053515718 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07012017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703005 | I509 | Heart failure, unspecified | ICD10 | 07142017 | 07012017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T08:19:09+00:00 | 017870148-7181 | 000113331-01 | Jenilee | Lamay | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703013 | T84032A | Mech loosening of internal right knee prosthetic joint, init | ICD10 | 07142017 | 07112017 | 07132017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07032017 | 2017-07-03T10:35:06+00:00 | 258706517181 | 000115529-01 | Dennis | Martin | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07012017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703042 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 07142017 | 07012017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07032017 | 2017-07-03T10:42:06+00:00 | 255241167183 | 000056559-01 | GARY | MONTEITH | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07022017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703046 | R6521 | Severe sepsis with septic shock | ICD10 | 07142017 | 07022017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07032017 | 2017-07-03T10:32:48+00:00 |  | 000027942-01 | BETTY | WONDERLEIGH | MADISON ER PHYS INC | 909542 | NATHALIE | SZILAGYI | 1417020686 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07022017 | 07082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703055 | A419, N390, R4182 | Altered mental status, unspecified | ICD10 | 07142017 | 07022017 | 07092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07052017 | 2017-07-05T11:18:56+00:00 | 257181057186 | 000030896-01 | GENEVA | BEE | HMP OF OHIO PC | 909497 | REAGAN | NORGAN | 1487877999 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07052017 | 07132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705043 | M84373S | Stress fracture, unspecified ankle, sequela | ICD10 | 07142017 | 07052017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07052017 | 2017-07-05T15:47:26+00:00 |  | 000057562-01 | CHARLES | KENYON | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706057 | S22069A | Unsp fracture of T7-T8 vertebra, init for clos fx | ICD10 | 07142017 | 07052017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07062017 | 2017-07-06T09:55:26+00:00 |  | 000117026-01 | DELMAR | SEVERING | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07052017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706070 | N19, N390 | Urinary tract infection, site not specified | ICD10 | 07142017 | 07052017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07102017 | 2017-07-10T09:06:10+00:00 |  | 000067172-01 | PAUL | GWILYM | OHIOHEALTH PHYS GRP | 944872 | THOMAS E | SONNANSTINE IV | 1396852927 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07082017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710014 | K5669 | Other intestinal obstruction | ICD10 | 07142017 | 07082017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T09:44:19+00:00 | 260226687190 | 000026610-01 | Sharon | Bailey | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07142017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07092017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710027 | T8451XD | Infect/inflm reaction due to internal right hip prosth, subs | ICD10 | 07142017 | 07092017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07102017 | 2017-07-10T10:33:49+00:00 | 251188127190 | 000001789-01 | WALTER | VONAU | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07092017 | 07132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710043 | I951 | Orthostatic hypotension | ICD10 | 07142017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T11:40:59+00:00 |  | 000087142-01 | David | Knicely | GENESIS MEDICAL GRP LLC | 904911 | DAVID M | BARBARA | 1619929981 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710064 | K3580 | Unspecified acute appendicitis | ICD10 | 07142017 | 07082017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07102017 | 2017-07-10T07:56:11+00:00 |  | 000027026-01 | KENNETH | OESTERLE | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710072 | I509 | Heart failure, unspecified | ICD10 | 07142017 | 07072017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07102017 | 2017-07-10T08:53:15+00:00 |  | 000110529-01 | Bonnie | Walker | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07082017 | 07102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710084 | E860, R739 | Hyperglycemia, unspecified | ICD10 | 07142017 | 07082017 | 07112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T11:38:29+00:00 |  | 000050056-01 | SHARON | HODGE | SOUTHERN OHIO MEDICAL CENTER | 928970 |  | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 07142017 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710103 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07142017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T11:37:21+00:00 |  | 000083266-01 | Ronald | Dewert | MEDICINE INPATIENT GROUP | 927693 | SIVANI S | PATHMARAJAH | 1336257666 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710118 | R4182 | Altered mental status, unspecified | ICD10 | 07142017 | 07072017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07112017 | 2017-07-11T11:57:07+00:00 |  | 000046411-01 | GWENDOLYN | KNIGHT | OHIOHEALTH PHYS GRP | 940395 | MATTHEW | MOORMAN | 1386687804 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711039 | E872 | Acidosis | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T11:54:03+00:00 |  | 000092249-01 | Edward | Schantz | RIVERSIDE TRAUMA SURGEON | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711041 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 07142017 | 07112017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07112017 | 2017-07-11T13:22:47+00:00 |  | 000016886-01 | HELEN | SANDERS | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711086 | M6281 | Muscle weakness (generalized) | ICD10 | 07142017 | 07092017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07112017 | 2017-07-11T15:18:17+00:00 |  | 000089222-01 | Daniel | Kaiser | MERCY HEALTH PHYSICIANS | 921187 | DANIEL A | TRAMUTA | 1902803612 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07102017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711094 | R079 | Chest pain, unspecified | ICD10 | 07142017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T10:44:36+00:00 | 250124427193 | 000047396-01 | CARL | BARKER | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07122017 | 07142017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712008 | I214, I5043 | Acute on chronic combined systolic and diastolic hrt fail | ICD10 | 07142017 | 07122017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T12:50:11+00:00 | 252624737192 | 000003514-01 | RUTH | ROSENTHAL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712032 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 07142017 | 07112017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T11:11:28+00:00 |  | 000067040-01 | Genevieve | Cordle | COPC CENTRAL OHIO PRIMAR | 915278 | BRIAN S | TAYLOR | 1205076569 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712042 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 07142017 | 07112017 | 07122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T10:27:28+00:00 |  | 000098171-01 | WAYNE | LAUGHMAN | DAYTON CTR FOR NEURO DIS | 917956 | RAJINDER | SINGH | 1750506457 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07142017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713056 | I442, I4892, Z950 | Presence of cardiac pacemaker | ICD10 | 07142017 | 07122017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
