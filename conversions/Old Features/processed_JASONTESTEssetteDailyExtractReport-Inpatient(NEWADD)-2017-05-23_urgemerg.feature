Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-23_URGEMERG
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

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 04102017 | 2017-04-10T16:31:18+00:00 |  | 000070608-01 | Danny | Belcher | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04072017 | 04212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170417096106.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412015 | R109 | Unspecified abdominal pain | ICD10 | 05232017 | 04072017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 04212017 | 2017-04-21T15:02:38+00:00 |  | 000081215-01 | Karol | Bennett | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04202017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421062 | T8132XA | Disruption of internal operation (surgical) wound, NEC, init | ICD10 | 05232017 | 04202017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 32.0 |
| 04242017 | 2017-04-24T11:55:07+00:00 | 025173406-7131 | 000111547-01 | KENNETH | GRESSIERER | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424105 | M4802 | Spinal stenosis, cervical region | ICD10 | 05232017 | 05162017 | 05202017 | 22551, 22552, 22846 | ANTERIOR INSTRUMENTATION; 4 TO 7 VERTEBRAL SEGMENTS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04262017 | 2017-04-26T15:17:24+00:00 |  | 000098966-01 | John | Long | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04252017 | 04272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427034 | R079 | Chest pain, unspecified | ICD10 | 05232017 | 04252017 | 04272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272017 | 2017-04-27T14:03:10+00:00 |  | 000021021-01 | JAMES | WILEY | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427082 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 05232017 | 05152017 | 05222017 | 51595 | CYSTECTOMY/BRICKER/PELV-ILIAC LYMPH | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 04282017 | 2017-04-28T15:02:33+00:00 |  | 000079007-01 | Sandra | Young | TAMPA GENERAL HOSPITAL | 934674 |  | TAMPA GENERAL HOSPITAL | 1235196510 | TAMPA GENERAL HOSPITAL | 934674 | 1235196510 | TAMPA GENERAL HOSPITAL | 1235196510 | Inpatient | IP | Concurrent Review | CONC |  | TAMPA GENERAL HOSPITAL | 05232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04242017 | 04302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501013 | K121 | Other forms of stomatitis | ICD10 | 05232017 | 04242017 | 04302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 32.0 |
| 05042017 | 2017-05-04T14:06:27+00:00 | 025728135-7125 | 000040820-01 | CAROLYN | PLOTT | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505001 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 05232017 | 05162017 | 05232017 | 32480, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 05042017 | 2017-05-04T11:36:58+00:00 |  | 000073976-01 | Mary | Nauer | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05032017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508005 | K5669 | Other intestinal obstruction | ICD10 | 05232017 | 05032017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05082017 | 2017-05-08T14:41:53+00:00 | 025976707-7128 | 000095187-01 | JANET | GUMP | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05232017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05222017 | 05232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508085 | M47812, M4802, M5020, M5412 | Radiculopathy, cervical region | ICD10 | 05232017 | 05222017 | 05232017 | 22551, 22845, 22851, 20930, 69990, 95941, 95938, 95861 | EMG TWO EXTRM.& RLTD PARASPNL AREAS | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05092017 | 2017-05-09T11:33:35+00:00 |  | 000087100-01 | Emma | Dyer | ALLIANCE PHYSICIANS INC | 901100 | THOMAS J | MERLE | 1730187469 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 05042017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509051 | Z0389 | Encntr for obs for oth suspected diseases and cond ruled out | ICD10 | 05232017 | 05042017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05092017 | 2017-05-09T14:13:13+00:00 | 016419746-7129 | 000101696-01 | Wanda | Carter | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 05222017 | 05232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509107 | M47812 | Spondylosis w/o myelopathy or radiculopathy, cervical region | ICD10 | 05232017 | 05222017 | 05232017 | 22551, 22845, 22851, 20930, 69990, 95941, 95938, 95861 | EMG TWO EXTRM.& RLTD PARASPNL AREAS | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05102017 | 2017-05-10T13:37:43+00:00 |  | 000104972-01 | Delores | Ellison | TRIHLTH DIGESTIVE DISEAS | 921214 | RONALD J | WEISENBERGER | 1124027065 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 05232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511022 | M6281, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05232017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05102017 | 2017-05-10T16:58:01+00:00 | 026091679-7132 | 000002688-01 | SARAH | RHODES | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05182017 | 05222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511077 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05232017 | 05182017 | 05222017 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 05122017 | 2017-05-12T09:00:30+00:00 |  | 000083390-01 | ROBERT | PENLAND | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05112017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512045 | E669, R569 | Unspecified convulsions | ICD10 | 05232017 | 05112017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05122017 | 2017-05-12T13:14:13+00:00 |  | 000043253-01 | GEORGE | DRAKE | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05112017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512051 | T07 | Unspecified multiple injuries | ICD10 | 05232017 | 05112017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05152017 | 2017-05-15T15:33:54+00:00 |  | 000002778-01 | LINDA | BAISE | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05132017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515107 | R109 | Unspecified abdominal pain | ICD10 | 05232017 | 05132017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05162017 | 2017-05-16T10:17:39+00:00 |  | 000117004-01 | Judy | Harding | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516054 | J189 | Pneumonia, unspecified organism | ICD10 | 05232017 | 05152017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T12:20:17+00:00 |  | 000110640-01 | Terry | Budd | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05152017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516071 | A4102, N179 | Acute kidney failure, unspecified | ICD10 | 05232017 | 05162017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05162017 | 2017-05-16T13:52:18+00:00 |  | 000078909-01 | Rose | Mcfarland | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516084 | K625 | Hemorrhage of anus and rectum | ICD10 | 05232017 | 05152017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05162017 | 2017-05-16T13:58:16+00:00 |  | 000098752-01 | Freddy | Oroark | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05232017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05132017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516087 | A419 | Sepsis, unspecified organism | ICD10 | 05232017 | 05132017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05132017 | 2017-05-13T17:10:11+00:00 |  | 000035518-01 | WAYNE | MCCONNELL | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05122017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516109 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 05232017 | 05122017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05172017 | 2017-05-17T09:35:26+00:00 |  | 000015724-01 | DELPHEAN | HIGGINS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05172017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517015 | J159 | Unspecified bacterial pneumonia | ICD10 | 05232017 | 05172017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05182017 | 2017-05-18T11:29:31+00:00 |  | 000035343-01 | CHLOE ANN | WELSH | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518033 | K6389, N19, R1903 | Right lower quadrant abdominal swelling, mass and lump | ICD10 | 05232017 | 05172017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05182017 | 2017-05-18T12:41:40+00:00 |  | 000050703-01 | HAZEL | HOPPER | NORTH CEN OHIO FAM CARE | 942353 | MESFIN A | SEIFU | 1942265426 | BUCYRUS COMMUNITY HOSPITAL | 936412 | 0 | BUCYRUS COMMUNITY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | BUCYRUS COMMUNITY HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518044 | I509, J159 | Unspecified bacterial pneumonia | ICD10 | 05232017 | 05172017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05182017 | 2017-05-18T15:14:16+00:00 |  | 000038620-01 | DOLORES | FAWBUSH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05172017 | 05232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518061 | J159 | Unspecified bacterial pneumonia | ICD10 | 05232017 | 05172017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05192017 | 2017-05-19T11:35:07+00:00 | 026027411-7138 | 000066187-01 | OMEGO | THOMAS | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05232017 | Approved | MediGold Essential Care | EMR | ACO | Inpatient | 05182017 | 05222017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519039 | J159 | Unspecified bacterial pneumonia | ICD10 | 05232017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T11:43:15+00:00 |  | 000031885-01 | JAMES | LEE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05192017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519042 | I509 | Heart failure, unspecified | ICD10 | 05232017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T13:44:05+00:00 |  | 000102082-01 | LESTER | GAYHEART | ALLIANCE PHYSICIANS INC | 910276 | KHAWAJA S | BAIG | 1346206778 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05182017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519061 | R001 | Bradycardia, unspecified | ICD10 | 05232017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05212017 | 2017-05-21T08:20:16+00:00 |  | 000048516-01 | JANET | OGDEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522004 | R6521 | Severe sepsis with septic shock | ICD10 | 05232017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T08:42:49+00:00 |  | 000007296-01 | ROBERT | MILLER | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | ACO | Inpatient | 05212017 | 05232017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522010 | R079 | Chest pain, unspecified | ICD10 | 05232017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T07:46:59+00:00 |  | 000086186-01 | Mildred | Keister | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05232017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05202017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522021 | I6200, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05232017 | 05202017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T14:53:21+00:00 |  | 000116664-01 | Kathyrn | Stewart | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522113 | T50901A | Poisoning by unsp drug/meds/biol subst, accidental, init | ICD10 | 05232017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05232017 | 2017-05-23T07:41:28+00:00 |  | 000074805-01 | Barry | Richeson | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05232017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05222017 | 05232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523002 | K429 | Umbilical hernia without obstruction or gangrene | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T09:16:00+00:00 | 026445471-7122 | 000081239-01 | John | Benninghoff | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05232017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05222017 | 05232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523022 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T08:48:05+00:00 |  | 000085504-01 | Elizabeth | Roark Ramsey | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523025 | T50994A | Poisoning by oth drug/meds/biol subst, undetermined, init | ICD10 | 05232017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T16:20:29+00:00 |  | 000016867-01 | ELLEN | HOLTON | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05192017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523087 | S72092J | Oth fx head/neck of l femr, 7thJ | ICD10 | 05232017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05232017 | 2017-05-23T16:33:14+00:00 |  | 000069816-01 | Donna | Swan | HMP OF OHIO PC | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05192017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523091 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05232017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
