Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-28_URGEMERG
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
| 02202018 | 2018-02-20T13:43:10+00:00 |  | 000069766-01 | HARRY | MACK | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221037 | I214, I259 | Chronic ischemic heart disease, unspecified | ICD10 | 02282018 | 02192018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02012018 | 2018-02-01T15:19:23+00:00 |  | 000029134-01 | ELIZABETH | WILSON | CEN OH UROLOGY GRP INC | 913736 | JASON | JANKOWSKI | 1053512822 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02202018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201061 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 02282018 | 02202018 | 02272018 | 51595 | CYSTECTOMY/BRICKER/PELV-ILIAC LYMPH | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 02232018 | 2018-02-23T14:25:00+00:00 |  | 000114685-01 | Gloria | Fauss | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 02232018 | 02272018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223055 | J159 | Unspecified bacterial pneumonia | ICD10 | 02282018 | 02232018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02242018 | 2018-02-24T15:23:39+00:00 |  | 000029091-01 | LARRY | BROKAW | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 02222018 | 02272018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226009 | I4891, I509, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 02282018 | 02222018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02022018 | 2018-02-02T11:39:00+00:00 |  | 000102860-01 | Ronald | Stake | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02262018 | 02272018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202034 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02282018 | 02262018 | 02272018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02052018 | 2018-02-05T12:56:13+00:00 |  | 000055867-01 | ROY | ROSS JR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205095 | I639 | Cerebral infarction, unspecified | ICD10 | 02282018 | 02132018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02142018 | 2018-02-14T15:03:17+00:00 |  | 000040235-01 | CARMEN | GARGARO | CENTRAL OHIO SURG ASSOC | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214052 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 02282018 | 02132018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02152018 | 2018-02-15T07:43:00+00:00 |  | 000047452-01 | SAUNDRA | PATTERSON | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02282018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02262018 | 02272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215002 | M25512 | Pain in left shoulder | ICD10 | 02282018 | 02262018 | 02272018 | 23472, 23420, 23440, 23395, 20680, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01232018 | 2018-01-23T15:42:26+00:00 |  | 000079919-01 | William | Day | FAIRFIELD HSPISTS INC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123090 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 02282018 | 01222018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01252018 | 2018-01-25T08:00:21+00:00 |  | 000009359-01 | YUVONNE | KNAPP | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02282018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02262018 | 02272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125005 | M25111 | Fistula, right shoulder | ICD10 | 02282018 | 02262018 | 02272018 | 23472, 23420, 23440, 23020, 23395, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02052018 | 2018-02-05T11:33:46+00:00 |  | 000095890-01 | John | Cappel | ADENA MEDICAL GROUP LLC | 932324 | MATTHEW W | CHRISTIAN | 1043260698 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205059 | Z8546 | Personal history of malignant neoplasm of prostate | ICD10 | 02282018 | 02192018 | 02212018 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 02162018 | 2018-02-16T10:51:44+00:00 |  | 000121414-01 | Michael | Janney | OHIO KIDNEY CONSULTANTS | 904375 | CHRISTOPHER S | SAUNDERS | 1023076171 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216044 | M25452 | Effusion, left hip | ICD10 | 02282018 | 02162018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T10:32:23+00:00 |  | 000065610-01 | ELIZABETH | WEAVER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219040 | J159 | Unspecified bacterial pneumonia | ICD10 | 02282018 | 02192018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02192018 | 2018-02-19T13:05:45+00:00 |  | 000079150-01 | Ralph | Ferrell Jr | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219077 | N390 | Urinary tract infection, site not specified | ICD10 | 02282018 | 02172018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T13:09:06+00:00 |  | 000015191-01 | PAULINE | WARRENS | ADENA MEDICAL GROUP LLC | 936383 | DANIEL J | EVANS | 1760477640 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219078 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02282018 | 02182018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02192018 | 2018-02-19T13:12:18+00:00 |  | 000070619-01 | Bazel | Jenkins | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred |  | Inpatient | Inpatient | 02182018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220001 | J159 | Unspecified bacterial pneumonia | ICD10 | 02282018 | 02182018 | 02212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T01:26:14+00:00 |  | 000100182-01 | BENNETT | WISE | KEYSTONE MENTAL HEALTH | 950087 | IVANA | BALIC | 1386824167 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 02282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220054 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 02282018 | 02192018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T12:21:26+00:00 |  | 000039325-01 | JANE | WILSON | COLON & RECTAL SURG INC | 942590 | ELLEN H | BAILEY | 1184867756 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 02272018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222043 | C186 | Malignant neoplasm of descending colon | ICD10 | 02282018 | 02232018 | 02272018 | 44145 | COLECTOMY C COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 02232018 | 2018-02-23T09:32:09+00:00 |  | 000023694-01 | BETTY | COOPER | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223009 | J209, R0600 | Dyspnea, unspecified | ICD10 | 02282018 | 02212018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02232018 | 2018-02-23T13:40:05+00:00 |  | 000057548-01 | THAD | HELFER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223053 | I249, I509, J9601, N179 | Acute kidney failure, unspecified | ICD10 | 02282018 | 02232018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02232018 | 2018-02-23T14:41:41+00:00 |  | 000029986-01 | PHYLLIS | LOVE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02282018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02212018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223058 | R262 | Difficulty in walking, not elsewhere classified | ICD10 | 02282018 | 02212018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02022018 | 2018-02-02T12:40:56+00:00 |  | 000032676-01 | SANDRA | BLOOM | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02262018 | 02272018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  | 180215156809.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202047 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 02282018 | 02262018 | 02272018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02132018 | 2018-02-13T15:46:37+00:00 |  | 000049352-01 | BARBARA | SMITH | OSU SURGERY LLC | 918702 | JOHN E | PHAY | 1790869899 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213114 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 02282018 | 02232018 | 02242018 | 60240, 38724 | CERVICAL LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T09:48:10+00:00 |  | 000078904-01 | Sue | Mudgett | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02282018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02172018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219031 | K659 | Peritonitis, unspecified | ICD10 | 02282018 | 02172018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02202018 | 2018-02-20T13:23:05+00:00 |  | 000095958-01 | Ronald | Cahoone | MARIETTA HLTH CARE PHYS | 921885 | RAJENDRA S | BHATI | 1164641759 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02282018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221016 | K56609 | K56609 | ICD10 | 02282018 | 02192018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02212018 | 2018-02-21T14:11:51+00:00 |  | 000085888-01 | Johnnie | Lawson | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02212018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222011 | A419, E876, I959, J189, N179, R0902, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02282018 | 02212018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02222018 | 2018-02-22T12:21:09+00:00 |  | 000109251-01 | Laura | Morrin | MIAMI VALLEY HSPISTS GRP | 927301 | AKOSUA | AFFUL | 1184981193 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222050 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 02282018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T10:43:22+00:00 |  | 000090647-01 | JUDY | WILSON | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222063 | D509, D649, E872, R0602, R911 | Solitary pulmonary nodule | ICD10 | 02282018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T10:02:57+00:00 |  | 000067976-01 | MARGRETTA | WEST | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223018 | R0602 | Shortness of breath | ICD10 | 02282018 | 02212018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02232018 | 2018-02-23T11:10:19+00:00 |  | 000117589-01 | BECKY | JOHNSON | MOUNT CARMEL EAST PHYS | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02262018 | 02272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223037 | E6601, I10, K219, M2550 | Pain in unspecified joint | ICD10 | 02282018 | 02262018 | 02272018 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02232018 | 2018-02-23T09:39:17+00:00 |  | 000003514-01 | RUTH | ROSENTHAL | PARKINSON, NICHOLAS | 901740 | NICHOLAS | PARKINSON | 1700860095 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02202018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223039 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02282018 | 02202018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T19:43:08+00:00 |  | 000044306-01 | PEGGY | SALYER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226003 | E872, M6282 | Rhabdomyolysis | ICD10 | 02282018 | 02222018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02242018 | 2018-02-24T11:43:51+00:00 |  | 000094170-01 | Bonnie | Reed | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226007 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 02282018 | 02232018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02252018 | 2018-02-25T13:33:00+00:00 |  | 000051556-01 | Glenn | Priest | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226026 | K56609 | K56609 | ICD10 | 02282018 | 02242018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02262018 | 2018-02-26T10:57:12+00:00 |  | 000024979-01 | SANDRA | SWORDS | CEN OH PRIMARY CARE SPEC | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02252018 | 02272018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226074 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02282018 | 02252018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01252018 | 2018-01-25T13:57:44+00:00 |  | 000080198-01 | Edgar | Castle Jr | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02262018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125070 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02282018 | 02262018 | 02282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02092018 | 2018-02-09T16:19:58+00:00 |  | 000038028-01 | EARL | CHAFINS | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02282018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212003 | I639 | Cerebral infarction, unspecified | ICD10 | 02282018 | 02142018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 02262018 | 2018-02-26T10:39:44+00:00 |  | 000009223-01 | DORIS | SMITH | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MADISON MEMORIAL HOSPITAL | 902209 | 1992747570 | MADISON MEMORIAL HOSPITAL | 1992747570 | Inpatient | IP | Concurrent Review | CONC |  | MADISON MEMORIAL HOSPITAL | 02282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226068 | I509 | Heart failure, unspecified | ICD10 | 02282018 | 02222018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02262018 | 2018-02-26T12:16:49+00:00 |  | 000077410-01 | Linda | Osborn | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02252018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226085 | D509, D649, K259, K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 02282018 | 02252018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T14:50:59+00:00 |  | 000070819-01 | Franklin | Isaac | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 02282018 | 03142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180226098 | G255, I639 | Cerebral infarction, unspecified | ICD10 | 02282018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02272018 | 2018-02-27T12:54:57+00:00 |  | 000115333-01 | Cheryl | Hutson | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 02282018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02282018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180227064 | E6601, Z96653 | Presence of artificial knee joint, bilateral | ICD10 | 02282018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02272018 | 2018-02-27T13:08:09+00:00 |  | 000072738-01 | Elizabeth | Brown | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227070 | F17210, I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 02282018 | 02262018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T16:27:57+00:00 |  | 000096350-01 | Ruthie | McBride | HOSPITALIST MEDICINE PHY | 942986 | RAMACHANDER R | ELURI | 1790036770 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02282018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 02252018 | 02272018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227104 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02282018 | 02252018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
