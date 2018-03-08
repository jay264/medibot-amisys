Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-05_URGEMERG
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
| 12132017 | 2017-12-13T12:03:11+00:00 |  | 000049432-01 | ARLENE | SMITH | COSHOCTON COUNTY MEM HSP | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01112018 | 01122018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213094 | M1611, M25551 | Pain in right hip | ICD10 | 03052018 | 01112018 | 01122018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02222018 | 2018-02-22T12:35:24+00:00 |  | 000098026-01 | Gary | Lustgarten | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03052018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02222018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222067 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 03052018 | 02222018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02142018 | 2018-02-14T16:52:59+00:00 |  | 000046031-01 | DOROTHY | MCCOY | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215010 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03052018 | 02282018 | 03022018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02222018 | 2018-02-22T16:02:45+00:00 |  | 000038237-01 | DEBRA | TIMEN | MOUNT CARMEL HLTH PRVDRS | 951957 | JOHN J | KELEMEN | 1871554212 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222088 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03052018 | 02282018 | 03032018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02232018 | 2018-02-23T15:24:10+00:00 |  | 000098801-01 | Clayton | Morris | HOSPITALIST MEDICINE PHY | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223071 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 03052018 | 02222018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02222018 | 2018-02-22T06:05:55+00:00 |  | 000026847-01 | BETTY | ETTERS | OSU INTERNAL MED LLC | 948351 | CHRISTIAN T | EARL | 1316204753 | LABONE OF OHIO INC | 936446 | 1134165970 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222052 | I10, I4891 | Unspecified atrial fibrillation | ICD10 | 03052018 | 02212018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T16:26:54+00:00 |  | 000104220-01 | Judith | Riggs | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03012018 | 03022018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223078 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03052018 | 03012018 | 03022018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T15:44:34+00:00 |  | 000012745-01 | SALLY | SPEAKS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219072 | D649, E8351, J810 | Acute pulmonary edema | ICD10 | 03052018 | 02162018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02252018 | 2018-02-25T11:39:44+00:00 |  | 000061551-01 | LINA | CHRISTIAN | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226024 | A419 | Sepsis, unspecified organism | ICD10 | 03052018 | 02242018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02262018 | 2018-02-26T08:49:13+00:00 |  | 000055345-01 | ERIC | CROKER | OSU INTERNAL MED LLC | 943733 | MARIUM | HUSAIN | 1043577752 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226031 | C029, R509 | Fever, unspecified | ICD10 | 03052018 | 02252018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T07:15:49+00:00 |  | 000102569-01 | Karen | Neighbarger | COSHOCTON COUNTY MEM HSP | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03022018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122051 | M4300, M4310, M5126, M545, M9983 | Other biomechanical lesions of lumbar region | ICD10 | 03052018 | 03022018 | 03042018 | 22633, 22634, 63047, 63048, 22842, 22851, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 02142018 | 2018-02-14T14:54:12+00:00 |  | 000051180-01 | PATRICIA | DRUMMOND | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02282018 | 03022018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214048 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 03052018 | 02282018 | 03022018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02202018 | 2018-02-20T11:24:31+00:00 |  | 000111446-01 | Gary | Plueckhahn | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02192018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220071 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03052018 | 02192018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02222018 | 2018-02-22T08:37:12+00:00 |  | 000037708-01 | Frances | Starling | ADENA MEDICAL GROUP LLC | 901483 | JAMES E | FLEMING | 1952326159 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222018 | M4316, M5416, M48061 | M48061 | ICD10 | 03052018 | 02272018 | 03022018 | 63047, 20937, 22633, 22853, 22840, 22614, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1, 2, 2 | 1, 1, 1, 1, 1, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 02262018 | 2018-02-26T09:19:57+00:00 |  | 000087666-01 | Linda | Hall | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226052 | R110 | Nausea | ICD10 | 03052018 | 02242018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T10:28:36+00:00 |  | 000042333-01 | MARY | PLACE | LICKING MEM HLTH PROF | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227053 | J159 | Unspecified bacterial pneumonia | ICD10 | 03052018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02282018 | 2018-02-28T17:50:03+00:00 |  | 000107050-01 | Nina | Neubauer | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301009 | T82898D | Oth complication of vascular prosth dev/grft, subs | ICD10 | 03052018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03012018 | 2018-03-01T12:22:28+00:00 |  | 000022677-01 | DAVID | CRABTREE | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301033 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 03052018 | 03012018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T12:44:26+00:00 |  | 000015694-01 | WILLIAM | BRANSCOMB | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03012018 | 03042018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302045 | I509 | Heart failure, unspecified | ICD10 | 03052018 | 03012018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T09:30:39+00:00 |  | 000088398-01 | Rita | Ziegler | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 02052018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305008 | I509, J209 | Acute bronchitis, unspecified | ICD10 | 03052018 | 02052018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10022017 | 2017-10-02T10:20:31+00:00 |  | 000106899-01 | Mary | Mcartor | HOSPITALIST MEDICINE PHY | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09292017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171004132223.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002106 | R079 | Chest pain, unspecified | ICD10 | 03052018 | 09292017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02092018 | 2018-02-09T11:46:30+00:00 |  | 000121028-01 | Frank | Albi | TRIHEALTH G LLC | 921146 | MARK A | SNYDER | 1609876762 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 936463 | 1508835828 | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 1508835828 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN HOSPITAL OF CINCINNAT | 03052018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02262018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209050 | M1611, M25551 | Pain in right hip | ICD10 | 03052018 | 02262018 | 02272018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 02262018 | 2018-02-26T07:28:25+00:00 |  | 000119396-01 | Anthony | Mcneil | HOSPITALIST MEDICINE PHY | 949459 | FARAH | YUSUF | 1306280631 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03052018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02232018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226036 | R600 | Localized edema | ICD10 | 03052018 | 02232018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T16:45:05+00:00 |  | 000093224-01 | Mary | Adams | TRIHEALTH H LLC | 925674 | STUART A | ZAKEM | 1417939257 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02252018 | 02282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227021 | I25110 | Athscl heart disease of native cor art w unstable ang pctrs | ICD10 | 03052018 | 02252018 | 02282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T10:11:54+00:00 |  | 000113609-01 | Michael | Smallwood | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02262018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227051 | J811 | Chronic pulmonary edema | ICD10 | 03052018 | 02262018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T08:44:32+00:00 |  | 000115133-01 | Jack | Middaugh | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02272018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228028 | I4891 | Unspecified atrial fibrillation | ICD10 | 03052018 | 02272018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02282018 | 2018-02-28T16:33:11+00:00 |  | 000086634-01 | Carol | Horton | THE VILLAGES REGIONAL HOSPITAL | 900211 |  | THE VILLAGES REGIONAL HOSPITAL | 1740276518 | THE VILLAGES REGIONAL HOSPITAL | 900211 | 1740276518 | THE VILLAGES REGIONAL HOSPITAL | 1740276518 | Inpatient | IP | Concurrent Review | CONC |  | THE VILLAGES REGIONAL HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228091 | R109 | Unspecified abdominal pain | ICD10 | 03052018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03012018 | 2018-03-01T12:08:59+00:00 |  | 000049836-01 | DONALD | BOLDT | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301035 | K529, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03052018 | 02282018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03012018 | 2018-03-01T17:06:48+00:00 |  | 000014354-01 | BETTY | RADCLIFF | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02282018 | 03032018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301072 | S42409A | Unsp fracture of lower end of unsp humerus, init for clos fx | ICD10 | 03052018 | 02282018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T15:43:43+00:00 |  | 000097803-01 | Stephen | Esses | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | ACO - Cardiology | Inpatient | 03022018 | 03042018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03052018 | 03022018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
