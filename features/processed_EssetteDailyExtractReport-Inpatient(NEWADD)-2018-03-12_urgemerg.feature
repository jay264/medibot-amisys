Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_URGEMERG
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
| 02072018 | 2018-02-07T16:15:59+00:00 |  | 000086691-01 | Mindie | Lanham | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03072018 | 03092018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03122018 | 03072018 | 03092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02092018 | 2018-02-09T13:38:03+00:00 |  | 000109961-01 | Peggy | Farmer | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03082018 | 03112018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209060 | M1612, M25552 | Pain in left hip | ICD10 | 03122018 | 03082018 | 03112018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02092018 | 2018-02-09T16:23:31+00:00 |  | 000118778-01 | Jackie | Whitt | MOUNT CARMEL HLTH SYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03082018 | 03092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212016 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 03122018 | 03082018 | 03092018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T15:48:15+00:00 |  | 000120638-01 | SHARON | SALLY | COLON & RECTAL SURG INC | 942590 | ELLEN H | BAILEY | 1184867756 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02232018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221093 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 03122018 | 02232018 | 03092018 | 44143 | COLECTOMY C END COLOST.(HARTMAN PR) | CPT | 1 | 1 | Approved | 15 | CPT | C4 |  |  |  | 14.0 |
| 02192018 | 2018-02-19T09:53:50+00:00 |  | 000109912-01 | William | Redick | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219038 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03122018 | 03072018 | 03082018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T16:25:07+00:00 |  | 000082879-01 | Susan | Toney | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03092018 | 03102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222001 | M12811, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 03122018 | 03092018 | 03102018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02222018 | 2018-02-22T06:05:55+00:00 |  | 000026847-01 | BETTY | ETTERS | OSU INTERNAL MED LLC | 948351 | CHRISTIAN T | EARL | 1316204753 | LABONE OF OHIO INC | 936446 | 1134165970 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02212018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180306159988.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222052 | I10, I4891 | Unspecified atrial fibrillation | ICD10 | 03122018 | 02212018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02232018 | 2018-02-23T10:19:29+00:00 |  | 000089716-01 | Shirley | Priest | BUDZIK, RONALD J | 919797 | RONALD J | BUDZIK | 1043212319 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02232018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223026 | I639 | Cerebral infarction, unspecified | ICD10 | 03122018 | 02232018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T09:46:33+00:00 |  | 000012442-01 | DON | RISER | OHIOHEALTH PHYS GRP | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223035 | J189 | Pneumonia, unspecified organism | ICD10 | 03122018 | 02222018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T08:50:09+00:00 |  | 000118161-01 | Michael | Bowersock | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 03082018 | 03092018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226016 | C61 | Malignant neoplasm of prostate | ICD10 | 03122018 | 03082018 | 03092018 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T15:13:46+00:00 |  | 000116080-01 | James | Blosser | STEP LIVELY FOOT & ANKLE | 906890 | TIMOTHY R | HOLMES | 1356546790 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02272018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228081 | M869 | Osteomyelitis, unspecified | ICD10 | 03122018 | 02272018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03012018 | 2018-03-01T10:59:20+00:00 |  | 000053169-01 | BERNICE | BYRD | COPC CENTRAL OHIO PRIMAR | 948414 | ERIC W | HARD | 1881031540 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301028 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03122018 | 02282018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T14:59:51+00:00 |  | 000085090-01 | Glenn | Bullock | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03122018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171211145244.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103081 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 03122018 | 11202017 | 11222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 2 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 01222018 | 2018-01-22T15:40:48+00:00 |  | 000074883-01 | Brooks | Freed | MOUNT CARMEL HLTH PRVDRS | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 03082018 | 03092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122139 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 03122018 | 03082018 | 03092018 | 22558, 22853, 20930, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T10:41:19+00:00 |  | 000084497-01 | Jack | Mcdaniel | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02202018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221075 | J90, R05, R079 | Chest pain, unspecified | ICD10 | 03122018 | 02202018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 02232018 | 2018-02-23T12:13:37+00:00 |  | 000104325-01 | William | Patton | SURG ASSOC OF SPRINGFIEL | 902010 | JENNIFER M | DANIELS | 1457369696 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03122018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03022018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223048 | K635 | Polyp of colon | ICD10 | 03122018 | 03022018 | 03082018 | 44110 | SINGLE ENTEROTOMY | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 02262018 | 2018-02-26T09:29:02+00:00 |  | 000078368-01 | Shirley | Wimmer | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03122018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02252018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226055 | I4891, J101, J441, J9601, R509, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 03122018 | 02252018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T14:36:58+00:00 |  | 000073240-01 | David | Darst | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03092018 | 03102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226104 | S42292A | Oth disp fx of upper end of left humerus, init for clos fx | ICD10 | 03122018 | 03092018 | 03102018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T16:32:31+00:00 |  | 000031018-01 | JAMES | COX | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301003 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03122018 | 03062018 | 03112018 | 33405 | REPLACEMENT AORTIC VALVE | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 03022018 | 2018-03-02T16:34:29+00:00 |  | 000077190-01 | Vernon | Greenlee | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305001 | C182 | Malignant neoplasm of ascending colon | ICD10 | 03122018 | 03072018 | 03112018 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 03052018 | 2018-03-05T09:58:43+00:00 |  | 000094411-01 | Lovell | Harper | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03042018 | 03092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305017 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03122018 | 03042018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03052018 | 2018-03-05T09:54:18+00:00 |  | 000026449-01 | JOSIE | CLAY | HOLLON, JOHN T | 914228 | JOHN T | HOLLON | 1124092846 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305078 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03122018 | 03052018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T09:48:09+00:00 |  | 000022241-01 | Betty | Parker | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306009 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03122018 | 03052018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03052018 | 2018-03-05T17:16:37+00:00 |  | 000029609-01 | DORIS | GELLNER | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03042018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306051 | R17 | Unspecified jaundice | ICD10 | 03122018 | 03042018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03062018 | 2018-03-06T14:47:31+00:00 |  | 000105034-01 | Charles | Washburn | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 03052018 | 03092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306080 | I509 | Heart failure, unspecified | ICD10 | 03122018 | 03052018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T16:49:25+00:00 |  | 000010018-01 | IRVIN | SWAIN | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03032018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306098 | E872, E875, N179 | Acute kidney failure, unspecified | ICD10 | 03122018 | 03032018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03072018 | 2018-03-07T09:59:00+00:00 |  | 000016037-01 | ROWENA | PEZLEY | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03062018 | 03092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307038 | I4891 | Unspecified atrial fibrillation | ICD10 | 03122018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10302017 | 2017-10-30T15:25:59+00:00 |  | 000082351-01 | Sarah | Cornish | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03082018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101030 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03122018 | 03082018 | 03102018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01092018 | 2018-01-09T16:18:45+00:00 |  | 000044912-01 | MARY | CULVER | OSU INTERNAL MED LLC | 911866 | JAMES R | KNIGHT | 1740496553 | SELECT SPECIALTY HOSPITA | 906189 | 1285785535 | SELECT SPECIALTY HOSPITAL COLUMBUS E | 1285785535 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS E | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110020 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 03122018 | 01112018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 57.0 |
| 01302018 | 2018-01-30T09:13:16+00:00 |  | 000038793-01 | MARY | ROMANS | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03052018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130077 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03122018 | 03052018 | 03092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 02202018 | 2018-02-20T14:50:37+00:00 |  | 000045402-01 | KAREN | ERISMAN | GRANDVIEW HOSPITAL & SOU | 904867 | TROY A | TYNER | 1003814526 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02192018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221039 | E872 | Acidosis | ICD10 | 03122018 | 02192018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 03062018 | 2018-03-06T11:05:53+00:00 |  | 000110299-01 | Jackie | Reber | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03052018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306069 | J189, R0902 | Hypoxemia | ICD10 | 03122018 | 03052018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T16:51:20+00:00 |  | 000045924-01 | STEVEN | HARTER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307015 | S129XXA | Fracture of neck, unspecified, initial encounter | ICD10 | 03122018 | 02282018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03072018 | 2018-03-07T10:09:29+00:00 |  | 000067667-01 | SUSAN | TURNER | HOSPITALIST MEDICINE PHY | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | ACO - CHF | Inpatient | 03072018 | 03092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307039 | I509 | Heart failure, unspecified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T10:18:41+00:00 |  | 000116493-01 | Mark | Meadors | OHIOHEALTH PHYS GRP | 936345 | ANN M | ARING | 1215925433 | PARKSIDE BEHAVIORAL HEALTH | 904396 | 1720011828 | PARKSIDE BEHAVIORAL HEALTH | 1720011828 | IP Substance Abuse | IP SA | Concurrent Review | CONC |  | PARKSIDE BEHAVIORAL HEALTH | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307041 | F1120, F319 | Bipolar disorder, unspecified | ICD10 | 03122018 | 03072018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03072018 | 2018-03-07T12:07:15+00:00 |  | 000004594-01 | DONNA | ROE | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307058 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 03122018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03082018 | 2018-03-08T10:57:42+00:00 |  | 000057548-01 | THAD | HELFER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308023 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03122018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T09:52:35+00:00 |  | 000012432-01 | BETTY | SNOOR | LICKING MEM HLTH PROF | 903573 | MEGAN E | MILLER | 1255330072 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308034 | I4891 | Unspecified atrial fibrillation | ICD10 | 03122018 | 03072018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03082018 | 2018-03-08T14:18:25+00:00 |  | 000054384-01 | JOHN | PETERS | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03092018 | 03112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308035 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03122018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:22:32+00:00 |  | 000040866-01 | BETTY | BRANHAM | MOUNT CARMEL HLTH SYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308037 | T8452XA | Infect/inflm reaction due to internal left hip prosth, init | ICD10 | 03122018 | 03072018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T14:26:00+00:00 |  | 000017462-01 | LORRAINE | PITTMAN | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308039 | I161 | HYPERTENSIVE EMERGENCY | ICD10 | 03122018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T15:14:15+00:00 |  | 000058239-01 | IDA | DEVAULT | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03072018 | 03092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308066 | I509 | Heart failure, unspecified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03092018 | 2018-03-09T12:04:10+00:00 |  | 000040490-01 | MARCELLA | KISER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03122018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180309057 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 03122018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03102018 | 2018-03-10T11:00:23+00:00 |  | 000112175-01 | Rosalie | Caldwell | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03092018 | 03102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312013 | N815, N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 03122018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03112018 | 2018-03-11T10:22:34+00:00 |  | 000098489-01 | Alice | Mitchell | SOUND INPATIENT PHYS OF | 919157 | DANA P | HOUSER | 1982857165 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03082018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312015 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03122018 | 03082018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03102018 | 2018-03-10T11:43:09+00:00 |  | 000022081-01 | CORA | OBRYAN | SOUND INPATIENT PHYS OF | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03092018 | 03112018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312018 | I4891 | Unspecified atrial fibrillation | ICD10 | 03122018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03102018 | 2018-03-10T12:44:39+00:00 |  | 000070261-01 | Joyce | Pombert | SOUND INPATIENT PHYS OF | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03092018 | 03112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312021 | J8410, R0902 | Hypoxemia | ICD10 | 03122018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T08:55:28+00:00 |  | 000074389-01 | Paula | Claar | OHIOHEALTH PHYS GRP | 936583 | BRUCE L | FLEISHMAN | 1508812769 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312030 | I10, I214, I25110, R079 | Chest pain, unspecified | ICD10 | 03122018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03112018 | 2018-03-11T11:36:39+00:00 |  | 000057283-01 | MURIEL | COLLIER | OHIOHEALTH PHYS GRP | 949185 | CHIDINMA | AKUSOBA | 1457799074 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312031 | R0602 | Shortness of breath | ICD10 | 03122018 | 03102018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
