Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-25_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
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
| 03302017 | 2017-03-30T10:04:49+00:00 | 251771427089 | 000048443-01 | DAVID | HYSELL | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312017 | 04092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330013 | C180, C187 | Malignant neoplasm of sigmoid colon | ICD10 | 05252017 | 03312017 | 04102017 | 44140, 44160 | COLECTOMY, RMVL TERM ILEUM & ILEOCO | CPT | 1, 1 | 1, 1 | Approved, Approved | 10, 10 | CPT | C4 |  |  |  | 10.0 |
| 03292017 | 2017-03-29T12:16:24+00:00 |  | 000088485-01 | John | Stafford | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282017 | 04172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330045 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05252017 | 03282017 | 04182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302017 | 2017-03-30T13:44:30+00:00 |  | 000097544-01 | James | Jackson | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302017 | 04082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170331043 | R079, R42 | Dizziness and giddiness | ICD10 | 05252017 | 03302017 | 04092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04032017 | 2017-04-03T10:26:10+00:00 |  | 000065815-01 | DAVID | MARION | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403036 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05252017 | 05152017 | 05162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 04032017 | 2017-04-03T15:45:29+00:00 |  | 000053299-01 | Stella | McNaughton | ALLIANCE PHYSICIANS INC | 915319 | AMMAR | SAFAR | 1558334581 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04022017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404137 | J189 | Pneumonia, unspecified organism | ICD10 | 05252017 | 04022017 | 04052017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 04072017 | 2017-04-07T13:16:55+00:00 |  | 000002087-01 | RICHARD | LUCKHAUPT | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122017 | 04132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170407043 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 05252017 | 04122017 | 04142017 | 23473 | REVIS RECONST SHOULDER JOINT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 04132017 | 2017-04-13T07:56:31+00:00 |  | 000075917-01 | Betty | Cox | HMP OF OHIO PC | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04122017 | 04172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414080 | M549, R51 | Headache | ICD10 | 05252017 | 04122017 | 04182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04132017 | 2017-04-13T12:05:54+00:00 |  | 000087018-01 | Daniel | Kennedy | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | ST CLAIRE MEDICAL CENTER | 935635 | 1124078696 | ST CLAIRE MEDICAL CENTER | 1124078696 | Inpatient | IP | Concurrent Review | CONC |  | ST CLAIRE MEDICAL CENTER | 05252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04122017 | 04142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080884.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414084 | I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05252017 | 04122017 | 04152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172017 | 2017-04-17T10:40:41+00:00 |  | 000047898-01 | JANET | HARRIS | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 05152017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417115 | T84012D | Broken internal right knee prosthesis, subsequent encounter | ICD10 | 05252017 | 05152017 | 05162017 | 27498, 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04172017 | 2017-04-17T07:35:00+00:00 |  | 000091114-01 | Estel | Jenkins | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05252017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04142017 | 04142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418047 | I4892 | Unspecified atrial flutter | ICD10 | 05252017 | 04142017 | 04152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192017 | 2017-04-19T11:06:23+00:00 |  | 000048165-01 | VIRGINIA | JONES | ALLIANCE PHYSICIANS INC | 901965 | WAYNE C | WOODARD | 1053310706 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419081 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05252017 | 05222017 | 05242017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04212017 | 2017-04-21T15:06:52+00:00 |  | 000072795-01 | Rosalee | Gillman | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05232017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421073 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05252017 | 05232017 | 05242017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04242017 | 2017-04-24T12:00:18+00:00 |  | 000067253-01 | BRENT | MILLER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424104 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05252017 | 05152017 | 05172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04252017 | 2017-04-25T15:13:55+00:00 |  | 000099851-01 | SANDRA | CONNER | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425116 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05252017 | 05232017 | 05252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04282017 | 2017-04-28T08:14:42+00:00 |  | 000109773-01 | Sukran | Akbay | ALLIANCE PHYSICIANS INC | 910918 | MICHAEL C | WELKER | 1942211305 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428001 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05252017 | 05222017 | 05242017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05012017 | 2017-05-01T12:05:50+00:00 |  | 000063380-01 | Jill | Parsons | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04282017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501072 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05252017 | 04282017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 05012017 | 2017-05-01T13:05:40+00:00 |  | 000076304-01 | Mary | Duer | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04282017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502031 | K5909, R0902, R109, R110, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05252017 | 04282017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05022017 | 2017-05-02T08:13:19+00:00 |  | 000038090-01 | RITA | SHONK | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 05012017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503008 | I639, R4182 | Altered mental status, unspecified | ICD10 | 05252017 | 05012017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082017 | 2017-05-08T10:11:50+00:00 |  | 000057679-01 | JAMES | PAGE | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05162017 | 05242017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508022 | C159, C169 | Malignant neoplasm of stomach, unspecified | ICD10 | 05252017 | 05162017 | 05242017 | 43117, 49441, 43800 | PYLOROPLASTY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 9, 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 05082017 | 2017-05-08T10:04:05+00:00 |  | 000086768-01 | Terry | Hill | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05252017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 05062017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509056 | I713 | Abdominal aortic aneurysm, ruptured | ICD10 | 05252017 | 05062017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102017 | 2017-05-10T12:17:25+00:00 |  | 000115299-01 | James | Moore | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511006 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05252017 | 05242017 | 05252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05152017 | 2017-05-15T10:45:48+00:00 |  | 000104958-01 | Mary | Barr | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05122017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515052 | I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05252017 | 05122017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05152017 | 2017-05-15T14:31:42+00:00 |  | 000096901-01 | Linda | Oharra | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515100 | J9600, R000, R0902 | Hypoxemia | ICD10 | 05252017 | 05142017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05162017 | 2017-05-16T10:17:48+00:00 |  | 000113308-01 | Larry | Diamond | GENESIS MEDICAL GRP LLC | 918994 | PATRICK W | RENAUD | 1548296833 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05252017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516024 | R5381 | Other malaise | ICD10 | 05252017 | 05152017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T14:44:01+00:00 |  | 000088620-01 | Frank | Wolfe | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05152017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516096 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 05252017 | 05152017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05162017 | 2017-05-16T14:45:19+00:00 |  | 000084346-01 | Marilyn | Shook | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516097 | J180, R000, R0902 | Hypoxemia | ICD10 | 05252017 | 05162017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05172017 | 2017-05-17T10:09:59+00:00 | 025078661-7136 | 000099131-01 | Robert | Munger Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05162017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517021 | R531 | Weakness | ICD10 | 05252017 | 05162017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05172017 | 2017-05-17T13:38:54+00:00 |  | 000022641-01 | HELEN | DAY | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05162017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517043 | I639, R4701 | Aphasia | ICD10 | 05252017 | 05162017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05172017 | 2017-05-17T13:58:56+00:00 |  | 000052594-01 | DONALD | MEADE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05172017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517053 | I639, M4802, M6281 | Muscle weakness (generalized) | ICD10 | 05252017 | 05172017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05172017 | 2017-05-17T15:53:58+00:00 | 017717087-7137 | 000043374-01 | Rise | Surface-Hurley | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517093 | T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 05252017 | 05232017 | 05252017 | 27091 | COMPLICATED REMOVAL OF HIP PROSTHES | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05182017 | 2017-05-18T09:15:19+00:00 | 025055332-7139 | 000039550-01 | JUDITH | HORN | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05232017 | 05252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518037 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05252017 | 05232017 | 05252017 | 31622, 32663 | THORACOSCOPY, SURGICAL; | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05192017 | 2017-05-19T11:51:13+00:00 |  | 000009359-01 | YUVONNE | KNAPP | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05182017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519043 | M84459A | Pathological fracture, hip, unsp, init encntr for fracture | ICD10 | 05252017 | 05182017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05202017 | 2017-05-20T08:27:38+00:00 |  | 000044837-01 | RICHARD | MILLS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05252017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05192017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522007 | R0902 | Hypoxemia | ICD10 | 05252017 | 05192017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T09:44:10+00:00 |  | 000047363-01 | RICHARD | ANDERSON | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05202017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522032 | J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05252017 | 05202017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05222017 | 2017-05-22T11:51:22+00:00 |  | 000078720-01 | June | Bliss | GENESIS MEDICAL GRP LLC | 947539 | ARIANE | NEYOU | 1386854073 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05202017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522079 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 05252017 | 05202017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T12:54:23+00:00 | 025805510-7140 | 000014777-01 | ARLENE | KITCHEN | MOUNT CARMEL HLTH PRVDRS | 905438 | BETHANY A | RECKER | 1578778734 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05202017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522083 | N179 | Acute kidney failure, unspecified | ICD10 | 05252017 | 05202017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05222017 | 2017-05-22T13:45:02+00:00 |  | 000016296-01 | ALGIRDAS | VASILIAUSKAS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05212017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522095 | J159 | Unspecified bacterial pneumonia | ICD10 | 05252017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T14:26:41+00:00 |  | 000086028-01 | Jennifer | Dye | OSU INTERNAL MED LLC | 947626 | JILL M | VILJOEN | 1881913242 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522107 | R4182 | Altered mental status, unspecified | ICD10 | 05252017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T15:21:15+00:00 |  | 000087824-01 | Georgianna | Kassman | SOUND INPATIENT PHYS OF | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05202017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522115 | I4891 | Unspecified atrial fibrillation | ICD10 | 05252017 | 05202017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T17:13:21+00:00 |  | 000108482-01 | Margaret | Miller | ALLIANCE PHYSICIANS INC | 931507 | RICHARD J | GORMAN JR | 1235475476 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523026 | S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 05252017 | 05222017 | 05252017 | 22327, 22610, 22614, 22842, 22853, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05232017 | 2017-05-23T09:20:44+00:00 |  | 000015170-01 | WANDA | BAILEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523027 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 05252017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T11:09:51+00:00 |  | 000098144-01 | Paul | Lambert | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523054 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05252017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T11:42:31+00:00 |  | 000117822-01 | Roberta | Wilhelm | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523055 | I4891 | Unspecified atrial fibrillation | ICD10 | 05252017 | 05222017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T12:50:20+00:00 | 025729420-7143 | 000093381-01 | Paul | Hotchkiss | COPC CENTRAL OHIO PRIMAR | 901741 | ANINDYA K | SEN | 1164471207 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05252017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05242017 | 05242017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523060 | N209 | Urinary calculus, unspecified | ICD10 | 05252017 | 05232017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T12:51:26+00:00 |  | 000102804-01 | Mary | Steele Gillott | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05252017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05212017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523061 | M6281, R4701 | Aphasia | ICD10 | 05252017 | 05212017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
