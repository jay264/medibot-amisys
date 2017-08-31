Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-29_URGEMERG
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
| 08222017 | 2017-08-22T09:08:19+00:00 | 262099467233 | 000022473-01 | BERNARD | BALTZER | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822012 | E875 | Hyperkalemia | ICD10 | 08292017 | 08212017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08252017 | 2017-08-25T10:35:17+00:00 | 251955117236 | 000034774-01 | OTTO | LEWIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08292017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825029 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 08292017 | 08242017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T11:37:22+00:00 | 263409847233 | 000009860-01 | LESTER | YODER | SOUND PHYSICIANS OF OHI0 | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821081 | I4891 | Unspecified atrial fibrillation | ICD10 | 08292017 | 08212017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08262017 | 2017-08-26T08:24:29+00:00 |  | 000037877-01 | FRANKLIN | THIVENER | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08252017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829002 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 08292017 | 08252017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06162017 | 2017-06-16T14:53:26+00:00 | 251083957165 | 000023453-01 | JOHN | SANBORN | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616068 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08292017 | 06302017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T14:27:52+00:00 |  | 000003408-01 | RUTH | ANDERSON | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816037 | E162, J189, R5383 | Other fatigue | ICD10 | 08292017 | 08152017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06232017 | 2017-06-23T09:07:33+00:00 | 260754577170 | 000104791-01 | CYNTHIA | GREEN | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623013 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 08292017 | 07312017 | 08082017 | 56620, 53210 | URETHECTOMY, TOTAL INC CYSTMY, FEM- | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 08222017 | 2017-08-22T10:56:48+00:00 |  | 000097637-01 | Charles | Parker | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08292017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170822080 | G20 | Parkinson's disease | ICD10 | 08292017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08252017 | 2017-08-25T13:11:39+00:00 |  | 000015338-01 | FRANCIS | SMITH | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826013 | I5031, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08292017 | 08242017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T09:02:43+00:00 |  | 000108648-01 | Richard | Chamblin | UNIVERSITY OF CINCINNATI | 928404 | TIMOTHY | PRITTS | 1194793786 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08122017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815049 | S0219XA | Oth fracture of base of skull, init for clos fx | ICD10 | 08292017 | 08122017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08222017 | 2017-08-22T12:14:12+00:00 |  | 000104518-01 | Adam | Conley | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822102 | A419, E871, L0212, R739, Z7901, Z5181, Z789, Z9119 | Patient's noncompliance w oth medical treatment and regimen | ICD10 | 08292017 | 08212017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08142017 | 2017-08-14T09:52:14+00:00 |  | 000014221-01 | PHYLLIS | MILITELLO | OHIOHEALTH PHYS GRP | 927890 | MICHAEL | JOLLY | 1639295462 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08132017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814103 | R001 | Bradycardia, unspecified | ICD10 | 08292017 | 08132017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08222017 | 2017-08-22T09:24:06+00:00 | 252917657234 | 000020483-01 | ROBERT | KINSEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08222017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822021 | N390 | Urinary tract infection, site not specified | ICD10 | 08292017 | 08222017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08112017 | 2017-08-11T14:36:39+00:00 |  | 000011754-01 | DAVID | FOSNAUGH | FAIRFIELD HLTHCARE PROFS | 905153 | P ARYEH | COHEN | 1306063656 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811062 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 08292017 | 08232017 | 08262017 | 32669, 32484, 31624 | DX BRONCHOSCOPE/LAVAGE | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 08062017 | 2017-08-06T11:27:03+00:00 |  | 000081905-01 | Mary | Maynard | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08292017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 08042017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807090 | J810 | Acute pulmonary edema | ICD10 | 08292017 | 08042017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 08212017 | 2017-08-21T09:40:18+00:00 |  | 000118755-01 | Carol | Fraley | S DAYTON ACUTE CARE CNSL | 930272 | ISAAC P | HUMPHREY | 1649357724 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08202017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821124 | N10, N200 | Calculus of kidney | ICD10 | 08292017 | 08202017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08232017 | 2017-08-23T13:31:45+00:00 |  | 000082094-01 | James | Matthews | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08222017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824042 | R1084 | Generalized abdominal pain | ICD10 | 08292017 | 08222017 | 08272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08242017 | 2017-08-24T08:45:56+00:00 |  | 000114751-01 | Patsy | Strausburg | CASSANO COMMUNITY HEALTH | 904966 | CARLA M | MYERS | 1770581951 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825060 | I639 | Cerebral infarction, unspecified | ICD10 | 08292017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08232017 | 2017-08-23T15:01:23+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND KENWOOD HSPISTS OF | 932447 | OLGA A | MELZER | 1740414283 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824070 | R6889 | Other general symptoms and signs | ICD10 | 08292017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08252017 | 2017-08-25T12:11:49+00:00 |  | 000028504-01 | VIRGIL | GOODWIN | COPC CENTRAL OHIO PRIMAR | 919580 | LAURA L | SORG | 1033318373 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825050 | A419, D649, J189, R531 | Weakness | ICD10 | 08292017 | 08252017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T08:58:05+00:00 |  | 000066294-01 | BRENT | REAM | OSU INTERNAL MED LLC | 942419 | BRIAN T | PETULLO | 1508132531 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08292017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08192017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821033 | G9341, R509 | Fever, unspecified | ICD10 | 08292017 | 08192017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T12:47:41+00:00 |  | 000091324-01 | Robert | Mcgraw | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08252017 | 08292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825049 | I7101 | Dissection of thoracic aorta | ICD10 | 08292017 | 08252017 | 08292017 | 34812 | XPOSE FOR ENDOPROSTH, AORTIC | CPT | 0 | 1 |  | 5 | CPT | C4 |  |  |  | 1.0 |
| 08222017 | 2017-08-22T09:52:58+00:00 |  | 000114284-01 | Tara | Runkle | CONCORD PSYCHIATRY LLC | 943674 | SCOTT D | YOHO | 1821380809 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 08292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822081 | F1110, F322 | Major depressv disord, single epsd, sev w/o psych features | ICD10 | 08292017 | 08212017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08222017 | 2017-08-22T14:29:03+00:00 |  | 000010670-01 | RICHARD | HERRON | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823033 | I8291, J449, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 08292017 | 08212017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08132017 | 2017-08-13T12:15:15+00:00 |  | 000008861-01 | JAMES | BEBART | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08122017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814058 | F314 | Bipolar disord, crnt epsd depress, sev, w/o psych features | ICD10 | 08292017 | 08122017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08242017 | 2017-08-24T08:01:33+00:00 |  | 000113186-01 | Donald | Lane | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824056 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08292017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T10:22:20+00:00 |  | 000092732-01 | Jody | Fulks | MERCY HEALTH PHYSICIANS | 932723 | JUSTIN N | GIBLER | 1467748079 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818024 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08292017 | 08252017 | 08272017 | 49565, 15734 | MUSCLE, MYOCUTANEOUS, OR FASCIOCUTANEOUS FLAP; TRUNK | CPT | 1, 2 | 1, 2 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:30:42+00:00 |  | 000112586-01 | Rosemary | Ross | MERCY HEALTH PHYSICIANS | 920861 | ARTHUR | LEE | 1093713034 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720033 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 08292017 | 08242017 | 08262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 08172017 | 2017-08-17T11:46:33+00:00 |  | 000076148-01 | Mary Lou | Pinkerton | CENTRAL OH SURG SPEC INC | 936579 | STEPHEN T | FISHER | 1255392098 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817056 | S72002A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08292017 | 08172017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T08:57:05+00:00 |  | 000021112-01 | KENNETH | KESSLER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822011 | I469 | Cardiac arrest, cause unspecified | ICD10 | 08292017 | 08212017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08022017 | 2017-08-02T23:13:47+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | OSU INTERNAL MED LLC | 943873 | MANOJ V | RAMACHANDRAN | 1255507539 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803026 | G9340 | Encephalopathy, unspecified | ICD10 | 08292017 | 08012017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T14:59:24+00:00 | 026111694-7229 | 000023914-01 | ANNELIES | MCBRIDE | ACUTE CARE SURGEONS LLC | 936806 | KIM S | HAMELBERG | 1881699759 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818022 | K5780, N321 | Vesicointestinal fistula | ICD10 | 08292017 | 08232017 | 08292017 | 44140, 44661 | ENTEROVESICAL FIST.C BOWEL/BLAD RES | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 08252017 | 2017-08-25T10:42:37+00:00 | 256361717236 | 000035113-01 | SHIRLEY | RESTUCCI | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08242017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825034 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 08292017 | 08242017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08252017 | 2017-08-25T10:45:29+00:00 | 258571847237 | 000083537-01 | Marilyn | Sciore | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08252017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825035 | R079 | Chest pain, unspecified | ICD10 | 08292017 | 08252017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08252017 | 2017-08-25T08:08:18+00:00 |  | 000102255-01 | Harold | Estep | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08242017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825001 | R092 | Respiratory arrest | ICD10 | 08292017 | 08242017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08142017 | 2017-08-14T08:56:38+00:00 |  | 000032681-01 | FLORENCE | STACY | NEW CARLISLE FAM PRCT LL | 911235 | ASHOK P | DEVATHA | 1497740328 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08112017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814100 | R112, R42 | Dizziness and giddiness | ICD10 | 08292017 | 08112017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 08282017 | 2017-08-28T10:05:36+00:00 |  | 000084321-01 | Paul | Thomas | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828080 | R079 | Chest pain, unspecified | ICD10 | 08292017 | 08262017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T10:49:10+00:00 |  | 000082020-01 | Wanza | Springer | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 08292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08042017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809040 | F2089 | Other schizophrenia | ICD10 | 08292017 | 08042017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 08172017 | 2017-08-17T09:24:50+00:00 |  | 000118292-01 | Robert | Madden II | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08242017 | 08292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817031 | D49519 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF UNSPECIFIED KIDNEY | ICD10 | 08292017 | 08242017 | 08292017 | 50240 | NEPHPHRECTOMY, PARTIAL | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 08252017 | 2017-08-25T09:57:40+00:00 |  | 000037549-01 | HOMER | WIGET | APOGEE MED GRP OHIO INC | 949153 | TINA L | HARRIS | 1093191298 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826008 | M549 | Dorsalgia, unspecified | ICD10 | 08292017 | 08242017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T13:08:20+00:00 |  | 000071283-01 | Joseph | Pratt | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816020 | I509 | Heart failure, unspecified | ICD10 | 08292017 | 08142017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 08252017 | 2017-08-25T08:27:11+00:00 | 250201607236 | 000053883-01 | DAVID | CLEMENT | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08252017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825002 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 08292017 | 08252017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08242017 | 2017-08-24T09:54:22+00:00 | 250286467236 | 000009094-01 | WILLIAM | DAYTON | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08232017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824014 | J189, R569 | Unspecified convulsions | ICD10 | 08292017 | 08232017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08222017 | 2017-08-22T11:09:33+00:00 | 025030900-7235 | 000075980-01 | Connie | Downard | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08292017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08282017 | 08292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822068 | K432, Z951 | Presence of aortocoronary bypass graft | ICD10 | 08292017 | 08282017 | 08292017 | 49568 | IMPLANTATION OF MESH OR OTHER PROSTHESIS FOR INCISIONAL HERNIA REPAIR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08282017 | 2017-08-28T10:06:35+00:00 |  | 000078129-01 | William | Foraker | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08262017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828084 | R0902 | Hypoxemia | ICD10 | 08292017 | 08262017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08172017 | 2017-08-17T13:16:44+00:00 |  | 000074654-01 | Marion | Wheeler | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08282017 | 08292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818006 | N8181, N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 08292017 | 08282017 | 08292017 | 57110, 56800 | PLASTIC REPAIR INTROITUS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08282017 | 2017-08-28T09:42:23+00:00 | 254647127236 | 000016327-01 | ROBERT | DUNCAN | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08292017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 08272017 | 08292017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828028 | N179 | Acute kidney failure, unspecified | ICD10 | 08292017 | 08272017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
