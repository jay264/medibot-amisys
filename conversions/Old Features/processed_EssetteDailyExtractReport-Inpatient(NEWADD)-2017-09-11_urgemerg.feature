Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-11_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-11_URGEMERG
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
| 08302017 | 2017-08-30T10:05:45+00:00 | 267966647241 | 000106523-01 | June | Morey | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08292017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830024 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 09112017 | 08292017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T14:38:14+00:00 |  | 000107490-01 | Clarence | Barnhart | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830040 | I5033, Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 09112017 | 08282017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09112017 | 2017-09-11T09:13:36+00:00 |  | 000072957-01 | Jeffrey | Swartz | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09112017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170911024 | I639 | Cerebral infarction, unspecified | ICD10 | 09112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09072017 | 2017-09-07T09:04:29+00:00 | 250207887249 | 000023983-01 | Norman | Clark | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09062017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907006 | M25559 | Pain in unspecified hip | ICD10 | 09112017 | 09062017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T10:52:09+00:00 | 252661427247 | 000007142-01 | ANTONIO | MOSCA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09042017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905040 | J189 | Pneumonia, unspecified organism | ICD10 | 09112017 | 09042017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08172017 | 2017-08-17T08:32:07+00:00 |  | 000103901-01 | Patricia | Davis | PARS NEUROSURG ASSOC INC | 924073 | HOUMAN H | KHOSROVI | 1235106832 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817022 | C50919, C799, M47812, M4802, M4852XA | Collapsed vertebra, NEC, cervical region, init | ICD10 | 09112017 | 09052017 | 09062017 | 22600, 22614, 63045, 63048, 22842, 20936, 20930, 69990, 61783 | SCAN PROC SPINAL | CPT | 1, 4, 1, 4, 1, 1, 1, 1, 1 | 1, 4, 1, 4, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08222017 | 2017-08-22T18:38:25+00:00 |  | 000101507-01 | Melanie | Peters | FCMH MED & SURG ASSOC | 942164 | WILLIAM K | VASILEFF | 1144485905 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09112017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08212017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823042 | S91002S | Unspecified open wound, left ankle, sequela | ICD10 | 09112017 | 08212017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T08:40:02+00:00 | 251408597245 | 000003754-01 | EDWARD | BIRKO | COPC CENTRAL OHIO PRIMAR | 914697 | JEAN E | FLAHERTY | 1740449669 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901009 | A419, L03116, N179 | Acute kidney failure, unspecified | ICD10 | 09112017 | 09012017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08102017 | 2017-08-10T15:09:07+00:00 |  | 000047578-01 | SUSAN | SOSSA | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09082017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816003 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 09112017 | 09082017 | 09092017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08292017 | 2017-08-29T09:37:28+00:00 | 264769587240 | 000037900-01 | MARY | CLARK | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829011 | M4310 | Spondylolisthesis, site unspecified | ICD10 | 09112017 | 08292017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05162017 | 2017-05-16T11:35:45+00:00 | 025044282-7157 | 000052063-01 | DONALD | GOURLEY | MOUNT CARMEL HLTH PRVDRS | 937148 | JACK L | MATHEWS | 1285676239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 09112017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516047 | E875 | Hyperkalemia | ICD10 | 09112017 | 05152017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 28.0 |
| 09072017 | 2017-09-07T09:31:27+00:00 | 259637667249 | 000111557-01 | Marietta | Webster | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 09062017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907013 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 09112017 | 09062017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T10:43:25+00:00 | 165011737247 | 000029518-01 | PAUL | MONSOUR | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09042017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905034 | I724 | Aneurysm of artery of lower extremity | ICD10 | 09112017 | 09042017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09062017 | 2017-09-06T12:55:53+00:00 | 026133052-7243 | 000027879-01 | EUGENE | JENNY | FAIRFIELD PHYS INC | 905434 | TROY D | FATE | 1174514269 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 08312017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906053 | I255 | Ischemic cardiomyopathy | ICD10 | 09112017 | 08312017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09072017 | 2017-09-07T14:32:45+00:00 | 250340037250 | 000065063-01 | DAVID | EWING JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907088 | I200 | Unstable angina | ICD10 | 09112017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T10:30:25+00:00 | 257995107249 | 000020205-01 | BETTY | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09062017 | 09112017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907037 | J189 | Pneumonia, unspecified organism | ICD10 | 09112017 | 09062017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09052017 | 2017-09-05T08:56:41+00:00 |  | 000105289-01 | Harry | Doughman | SOUND KENWOOD HSPISTS OF | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09012017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906003 | I214, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 09112017 | 09012017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09082017 | 2017-09-08T08:36:51+00:00 |  | 000072342-01 | Sharon | Adams | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908046 | D72829, E871, R4182, R748, S40012A, S61412A | Laceration without foreign body of left hand, init encntr | ICD10 | 09112017 | 09072017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09062017 | 2017-09-06T10:20:06+00:00 | 177963537248 | 000044319-01 | CHARLOTTE | WALKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09052017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906035 | S32049A | Unsp fracture of fourth lumbar vertebra, init for clos fx | ICD10 | 09112017 | 09052017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08042017 | 2017-08-04T15:23:13+00:00 | 016994936-7230 | 000094644-01 | Betsy | Forrer | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804063 | M4316, M4726, M4727, M4806, M4807 | Spinal stenosis, lumbosacral region | ICD10 | 09112017 | 09072017 | 09092017 | 22558, 22853, 22585, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 2, 1, 3, 1, 1 | 2, 1, 3, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 09052017 | 2017-09-05T12:11:07+00:00 |  | 000090711-01 | Warner | Searls | MOUNT CARMEL HLTH SYS | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 09112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09042017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906082 | R42 | Dizziness and giddiness | ICD10 | 09112017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T13:07:33+00:00 |  | 000118355-01 | Billy | Couch | SOMC MED CARE FOUNDATION | 945959 | JUSTIN | GREENLEE | 1467655647 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 09112017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911056 | E0810 | Diabetes due to underlying condition w ketoacidosis w/o coma | ICD10 | 09112017 | 09072017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08092017 | 2017-08-09T15:59:53+00:00 |  | 000081779-01 | Joann | Zitt | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810010 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09112017 | 09062017 | 09082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 09022017 | 2017-09-02T12:04:01+00:00 |  | 000065575-01 | CAROLYN | DUNCAN | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 09012017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904007 | R4182 | Altered mental status, unspecified | ICD10 | 09112017 | 09012017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09042017 | 2017-09-04T10:58:55+00:00 |  | 000005319-01 | EUGENE | ERVIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905043 | R4182 | Altered mental status, unspecified | ICD10 | 09112017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08102017 | 2017-08-10T09:29:03+00:00 |  | 000110923-01 | Janet | Miller | MERCY HEALTH PHYSICIANS | 921352 | MINDA F | HASTIE | 1881657682 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 09112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08092017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810046 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 09112017 | 08092017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 09042017 | 2017-09-04T07:07:22+00:00 |  | 000081912-01 | Kelly | Simmons | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 09032017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911001 | A4101 | Sepsis due to Methicillin susceptible Staphylococcus aureus | ICD10 | 09112017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09062017 | 2017-09-06T09:27:30+00:00 | 252353207248 | 000075469-01 | Harold | Shultz | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09052017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906015 | I509 | Heart failure, unspecified | ICD10 | 09112017 | 09052017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09052017 | 2017-09-05T10:42:03+00:00 |  | 000025507-01 | HELEN | CARVOUR | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09042017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905033 | I509 | Heart failure, unspecified | ICD10 | 09112017 | 09042017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08252017 | 2017-08-25T08:28:54+00:00 |  | 000062812-01 | JAMES | MORRIS | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825074 | I70219 | Athscl native arteries of extrm w intrmt claud, unsp extrm | ICD10 | 09112017 | 09072017 | 09092017 | 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09062017 | 2017-09-06T10:13:55+00:00 | 253202697248 | 000026970-01 | MARY | NELSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09062017 | 09092017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906033 | R0600 | Dyspnea, unspecified | ICD10 | 09112017 | 09062017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T11:41:49+00:00 |  | 000106563-01 | Timothy | Corriveau | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907076 | A419 | Sepsis, unspecified organism | ICD10 | 09112017 | 09052017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T13:37:49+00:00 |  | 000012900-01 | GLORIA | DERRICK | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818071 | M439 | Deforming dorsopathy, unspecified | ICD10 | 09112017 | 09052017 | 09082017 | 44140, 49560 | HERNIA-VENTRAL-INCISIONAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 08292017 | 2017-08-29T09:52:29+00:00 |  | 000110641-01 | Ruth | Jones | MERCY HEALTH PHYSICIANS | 946420 | JOHN P | CULLEN | 1700045564 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 09112017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09052017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829037 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 09112017 | 09052017 | 09102017 | 44139 | MOBILIZATION (TAKE-DOWN) OF SPLENIC FLEXURE PERFORMED IN CONJUNCTION | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 5.0 |
| 09052017 | 2017-09-05T14:43:09+00:00 |  | 000051516-01 | JON | BEERY | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09012017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906094 | R0602 | Shortness of breath | ICD10 | 09112017 | 09012017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09022017 | 2017-09-02T14:05:59+00:00 |  | 000114674-01 | Donna | Holley | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905074 | R109 | Unspecified abdominal pain | ICD10 | 09112017 | 09012017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08312017 | 2017-08-31T16:20:19+00:00 |  | 000003846-01 | LORETTA | BALLENGER | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901001 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09112017 | 09062017 | 09082017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09082017 | 2017-09-08T08:45:19+00:00 |  | 000066958-01 | JAMES | LEGG | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09112017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170908056 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 09112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09052017 | 2017-09-05T10:35:03+00:00 | 254608767245 | 000105713-01 | Thomas | Hall | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09022017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905029 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 09112017 | 09022017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09082017 | 2017-09-08T19:22:57+00:00 |  | 000097637-01 | Charles | Parker | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09112017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170911011 | Z472 | Encounter for removal of internal fixation device | ICD10 | 09112017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09112017 | 2017-09-11T11:44:21+00:00 |  | 000074208-01 | David | Moore | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Southeast OH Essential Care | Fax | Pending Admission | Inpatient | 09192017 | 10192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170911095 | I481 | Persistent atrial fibrillation | ICD10 | 09112017 |  |  | 33340 | PERQ CLSR TCAT L ATR APNDGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 09082017 | 2017-09-08T09:09:07+00:00 | 254589257250 | 000025511-01 | MICHAEL | FLAHERTY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09072017 | 09112017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908008 | R0602 | Shortness of breath | ICD10 | 09112017 | 09072017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T10:36:00+00:00 |  | 000090581-01 | Fred | Baker | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09112017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09042017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906059 | E7220, G9341 | Metabolic encephalopathy | ICD10 | 09112017 | 09042017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T08:56:44+00:00 | 026116172-7223 | 000090479-01 | Nancy | Sant | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901027 | I70211 | Athscl native arteries of extrm w intrmt claud, right leg | ICD10 | 09112017 | 09062017 | 09092017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09082017 | 2017-09-08T09:30:52+00:00 | 252961267250 | 000020317-01 | DOROTHY | RICHARDSON | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908021 | R079 | Chest pain, unspecified | ICD10 | 09112017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T08:26:22+00:00 |  | 000065055-01 | LOIS | WALKER | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822041 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 09112017 | 09062017 | 09092017 | 32656, 32650, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
