Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-09_URGEMERG
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
| 06292017 | 2017-06-29T10:26:56+00:00 | 025429562-7173 | 000109253-01 | Ethel | Wyman | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629042 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08092017 | 08082017 | 08092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06282017 | 2017-06-28T10:16:11+00:00 |  | 000072275-01 | Sandra | Bunce | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628033 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08092017 | 08012017 | 08032017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08072017 | 2017-08-07T09:39:02+00:00 |  | 000115782-01 | JEROME | MILLER | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08092017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08062017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807064 | K922, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08092017 | 08062017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08012017 | 2017-08-01T14:24:42+00:00 |  | 000118324-01 | Roger | Clevinger | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801102 | M069, M25561, M25562, M25571, M25572, N390 | Urinary tract infection, site not specified | ICD10 | 08092017 | 07312017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08082017 | 2017-08-08T09:05:28+00:00 | 251442047219 | 000101848-01 | Darrin | Brumfield | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08072017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808017 | I2129 | STEMI involving oth sites | ICD10 | 08092017 | 08072017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07272017 | 2017-07-27T18:16:13+00:00 | 017574549-7209 | 000098026-01 | Gary | Lustgarten | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08022017 | 08092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728002 | M4802 | Spinal stenosis, cervical region | ICD10 | 08092017 | 08022017 | 08092017 | 63170, 62272 | SPNL PUNC FOR DRAINAGE SPNL FLUID | CPT | 1, 1 | 1, 1 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 08012017 | 2017-08-01T13:39:45+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 936096 | SAM L | PENZA | 1356359640 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801114 | R0602 | Shortness of breath | ICD10 | 08092017 | 08012017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T19:21:19+00:00 |  | 000086264-01 | Jerry | Carrier | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803003 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 08092017 | 08032017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08042017 | 2017-08-04T14:50:31+00:00 |  | 000098143-01 | Fred | Dailey | ORTHO ASSOC OF SW OH INC | 912566 | JAN E | SAUNDERS | 1174525901 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807050 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08092017 | 08022017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T10:20:58+00:00 | 251823037213 | 000063687-01 | JAMES | HANDLEY | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802030 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 08092017 | 08012017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06142017 | 2017-06-14T13:51:46+00:00 |  | 000025146-01 | Franklin | Stephenson | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614056 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08092017 | 07252017 | 07282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07252017 | 2017-07-25T10:37:09+00:00 | 251294257205 | 000008318-01 | WILLIAM | ZWEYDORFF | SOUND PHYSICIANS OF OHI | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725035 | N179 | Acute kidney failure, unspecified | ICD10 | 08092017 | 07242017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08032017 | 2017-08-03T10:51:30+00:00 | 026681728-7192 | 000102265-01 | Rossann | Davis | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08092017 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 08082017 | 08082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803037 | M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 08092017 | 08082017 | 08082017 | 26992 | INC DEEP C OP. CORTEX OSTEO | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 07212017 | 2017-07-21T12:24:59+00:00 |  | 000104791-01 | CYNTHIA | GREEN | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721040 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 08092017 | 07312017 | 08082017 | 50845, 44120, 51800 | CYSTOPLASTY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 9, 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 05032017 | 2017-05-03T15:19:26+00:00 |  | 000088174-01 | William | Kidder | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022017 | 05022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504043 | I469, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08092017 | 05022017 | 05022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T13:26:38+00:00 |  | 000097862-01 | Keith | Fitzpatrick | RECONSTRUCTIVE ORTHOS & | 924293 | MICHAEL L | SWANK | 1982641999 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 08092017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718107 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08092017 | 08022017 | 08032017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08042017 | 2017-08-04T09:01:24+00:00 | 264650777215 | 000103850-01 | DELORIA | ROGERS | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08032017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804011 | J189, R42 | Dizziness and giddiness | ICD10 | 08092017 | 08032017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08072017 | 2017-08-07T14:16:14+00:00 |  | 000086444-01 | Marilyn | Wise | COMMUNITY HSPIST LLC | 946367 | JOHN G | HATANELAS | 1225379795 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807088 | A419 | Sepsis, unspecified organism | ICD10 | 08092017 | 08042017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:02:46+00:00 | 016815856-7209 | 000087729-01 | Barbara | Wilson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731008 | N189 | Chronic kidney disease, unspecified | ICD10 | 08092017 | 07282017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08022017 | 2017-08-02T08:54:39+00:00 |  | 000057441-01 | TERRY | PETERS | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802069 | R531 | Weakness | ICD10 | 08092017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07162017 | 2017-07-16T16:15:02+00:00 |  | 000088528-01 | Dale | Strohm | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07152017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718055 | E11621, J189, J449, L0390, N19 | Unspecified kidney failure | ICD10 | 08092017 | 07152017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 08012017 | 2017-08-01T16:06:51+00:00 |  | 000086408-01 | Velma | Pelfrey | DAYTON GASTRO INC | 946596 | KALYAN M | BHOOPAL | 1114160926 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801122 | R1011 | Right upper quadrant pain | ICD10 | 08092017 | 07312017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08072017 | 2017-08-07T09:22:16+00:00 | 255916827216 | 000076639-01 | Olive | Koenig | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08042017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807010 | I63411 | Cereb infrc due to embolism of right middle cerebral artery | ICD10 | 08092017 | 08042017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07052017 | 2017-07-05T14:57:24+00:00 |  | 000052182-01 | Sharon | Harwood | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08042017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706041 | E872, K5100 | Ulcerative (chronic) pancolitis without complications | ICD10 | 08092017 | 07042017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 34.0 |
| 08072017 | 2017-08-07T12:34:18+00:00 |  | 000098922-01 | Katherine | Seward | WETHERINGTON, ANTHONY P | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Inpatient | IP | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08052017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808049 | N1330, R109, R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 08092017 | 08052017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T09:59:41+00:00 | 267005147217 | 000117849-01 | JUDY | MILLER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 08052017 | 08082017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807026 | R0602 | Shortness of breath | ICD10 | 08092017 | 08052017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08042017 | 2017-08-04T08:52:26+00:00 | 255673417215 | 000043685-01 | ARLYNE | HIRSH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08032017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804008 | R944 | Abnormal results of kidney function studies | ICD10 | 08092017 | 08032017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07192017 | 2017-07-19T12:00:24+00:00 |  | 000067138-01 | Sue | Hyatt | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719057 | C180 | Malignant neoplasm of cecum | ICD10 | 08092017 | 08022017 | 08082017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 07312017 | 2017-07-31T11:49:57+00:00 | 262393847211 | 000015916-01 | SALLY | RUNKLE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07302017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731048 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08092017 | 07302017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08042017 | 2017-08-04T12:48:38+00:00 |  | 000102255-01 | Harold | Estep | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08042017 | 08092017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804038 | J189 | Pneumonia, unspecified organism | ICD10 | 08092017 | 08042017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08032017 | 2017-08-03T11:14:48+00:00 |  | 000030922-01 | Richard | Bando | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08042017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803046 | I739 | Peripheral vascular disease, unspecified | ICD10 | 08092017 | 08042017 | 08092017 | 35646, 35371 | ENDARTERECTOMY,COMMON FEMORAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 07312017 | 2017-07-31T15:26:38+00:00 |  | 000081529-01 | Timothy | Curtis | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801061 | E871, K5660, K5669 | Other intestinal obstruction | ICD10 | 08092017 | 07302017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07202017 | 2017-07-20T14:20:19+00:00 | 026611136-7200 | 000053259-01 | CHRISTA | MAYS | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720090 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08092017 | 08082017 | 08092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08012017 | 2017-08-01T08:45:52+00:00 |  | 000038090-01 | RITA | SHONK | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08092017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 07312017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801107 | N186, N390 | Urinary tract infection, site not specified | ICD10 | 08092017 | 07312017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T10:12:48+00:00 | 254327237218 | 000064752-01 | SHIRLEY | CRABTREE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08062017 | 08092017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807031 | J449, R0602 | Shortness of breath | ICD10 | 08092017 | 08062017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T06:55:20+00:00 |  | 000109165-01 | Bonnie | Gibson | SOUND PHYSICIANS OF OHI | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803027 | M6281 | Muscle weakness (generalized) | ICD10 | 08092017 | 08012017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08072017 | 2017-08-07T10:28:34+00:00 | 258210067216 | 000029260-01 | MARILYN | CLUM | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08042017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807037 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 08092017 | 08042017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T08:26:28+00:00 | 026039430-7179 | 000000893-01 | SHIRLEY | GOODALL | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801038 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08092017 | 08072017 | 08082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08072017 | 2017-08-07T10:59:41+00:00 |  | 000005853-01 | HERMAN | MUNCY | SOUND PHYSICIANS OF OHI | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08092017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808041 | N390, R319 | Hematuria, unspecified | ICD10 | 08092017 | 08022017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07072017 | 2017-07-07T13:59:50+00:00 |  | 000115679-01 | Willie | Coburn | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08092017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07192017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707063 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 08092017 | 07192017 | 08082017 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 21 | CPT | C4 |  |  |  | 20.0 |
| 07252017 | 2017-07-25T09:56:04+00:00 | 168734217205 | 000098801-01 | Clayton | Morris | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08092017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07242017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725025 | M6281 | Muscle weakness (generalized) | ICD10 | 08092017 | 07242017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
