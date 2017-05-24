Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-16_URGEMERG
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
| 04192017 | 2017-04-19T13:35:06+00:00 |  | 000113747-01 | Janice | Hinty-Sprouse | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419069 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05162017 | 05082017 | 05092017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04192017 | 2017-04-19T16:29:08+00:00 |  | 000084087-01 | Penny | Bush | OSU SURGERY LLC | 924711 | DAVID C | EVANS | 1851517031 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420021 | Z933 | Colostomy status | ICD10 | 05162017 | 05032017 | 05152017 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 13 | CPT | C4 |  |  |  | 12.0 |
| 04202017 | 2017-04-20T09:16:04+00:00 |  | 000077680-01 | Robert | Smith | ORTHO INSTITUTE OF DAYTO | 913991 | RYAN D | BAUMAN | 1760455489 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420033 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05162017 | 05092017 | 05132017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 5.0 |
| 04242017 | 2017-04-24T09:55:52+00:00 |  | 000076872-01 | Jacqueline | Jones | THE CHRIST HOSPITAL | 936476 |  | THE CHRIST HOSPITAL | 1780633289 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 05162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04172017 | 04282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425095 | I639 | Cerebral infarction, unspecified | ICD10 | 05162017 | 04172017 | 04282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04252017 | 2017-04-25T09:40:32+00:00 |  | 000096419-01 | FOREST | WARNER | SURG ASSOC OF SPRINGFIEL | 945938 | MURIELLE | BROHEZ | 1679736797 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426060 | K5720 | Dvtrcli of lg int w perforation and abscess w/o bleeding | ICD10 | 05162017 | 05102017 | 05162017 | 44207 | L COLECTOMY/COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 04262017 | 2017-04-26T09:54:39+00:00 |  | 000023771-01 | Wilburt | Sills | JACKSON FLANIGAN MD LLC | 925872 | JACKSON | FLANIGAN | 1760564793 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 05162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04252017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427011 | I70201 | Unsp athscl native arteries of extremities, right leg | ICD10 | 05162017 | 04252017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04282017 | 2017-04-28T13:58:58+00:00 |  | 000074122-01 | Nancy | Hissong | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428067 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05162017 | 04272017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04302017 | 2017-04-30T12:45:34+00:00 |  | 000112775-01 | John | Adkins | ALLIANCE PHYSICIANS INC | 904172 | DOUGLAS B | PAUL | 1851381362 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282017 | 04302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501040 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 05162017 | 04282017 | 04302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05012017 | 2017-05-01T14:22:49+00:00 |  | 000110362-01 | Donna | Michael | THE CHRIST HSP CARDIOVAS | 912738 | THOMAS M | BRODERICK | 1396722252 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Post-Service | POST |  | THE CHRIST HOSPITAL | 05162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04292017 | 05012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A170501141 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 05162017 | 04292017 | 05012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022017 | 2017-05-02T07:59:25+00:00 |  | 000023968-01 | JOAN | JEFFERS | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05012017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502002 | I998 | Other disorder of circulatory system | ICD10 | 05162017 | 05012017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05012017 | 2017-05-01T16:28:18+00:00 |  | 000044591-01 | ZELMA | CARTER | SURG ASSOC OF SPRINGFIEL | 906099 | STEVEN E | CONKEL | 1770615338 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502007 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 05162017 | 05112017 | 05142017 | 43282, 43333, 43332, 43235 | ENDOSCOPY UPPER GI | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 65, 65, 65, 65 | CPT | C4 |  |  |  | 3.0 |
| 05022017 | 2017-05-02T08:33:56+00:00 |  | 000044591-01 | ZELMA | CARTER | SURG ASSOC OF SPRINGFIEL | 948051 | CRYSTAL F | TOTTEN | 1740415736 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502009 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 05162017 | 05112017 | 05142017 | 43282, 43333, 43332, 43235 | ENDOSCOPY UPPER GI | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 05012017 | 2017-05-01T14:05:23+00:00 |  | 000058040-01 | SUSAN | PULLEN | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502014 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05162017 | 05082017 | 05152017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 05022017 | 2017-05-02T13:48:46+00:00 |  | 000072360-01 | Michael | Kessler | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502085 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 05162017 | 05102017 | 05152017 | 47120, 47370 | LAPARO ABLATE LIVER TUMOR RF | CPT | 1, 0 | 1, 1 | Approved,  | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 05022017 | 2017-05-02T17:07:13+00:00 |  | 000109073-01 | Claude | Keim Jr | OHIOHEALTH PHYS GRP | 945451 | KEVIN T | GULLEY | 1770859969 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04302017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503051 | R570 | Cardiogenic shock | ICD10 | 05162017 | 04302017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05052017 | 2017-05-05T09:48:57+00:00 |  | 000088194-01 | Rose | Travis | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05042017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505013 | M549 | Dorsalgia, unspecified | ICD10 | 05162017 | 05042017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05052017 | 2017-05-05T10:48:48+00:00 |  | 000103259-01 | Karen | Cordell | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05042017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505027 | R6521 | Severe sepsis with septic shock | ICD10 | 05162017 | 05042017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05082017 | 2017-05-08T13:48:20+00:00 |  | 000048832-01 | WAYNE | EVANS | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05052017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508077 | K5660 | Unspecified intestinal obstruction | ICD10 | 05162017 | 05052017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05092017 | 2017-05-09T08:24:53+00:00 |  | 000107370-01 | Tom | Bivens | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05082017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509016 | M6281 | Muscle weakness (generalized) | ICD10 | 05162017 | 05082017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05082017 | 2017-05-08T13:30:12+00:00 |  | 000079057-01 | Ned | Miller II | OSU INTERNAL MED LLC | 928161 | JOSEPH R | ASTERIOU | 1477878932 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05042017 | 05082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509054 | R309 | Painful micturition, unspecified | ICD10 | 05162017 | 05042017 | 05082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082017 | 2017-05-08T09:25:00+00:00 |  | 000089370-01 | Dorothy | Durham | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05062017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509098 | I509 | Heart failure, unspecified | ICD10 | 05162017 | 05062017 | 05142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05082017 | 2017-05-08T15:32:12+00:00 |  | 000041649-01 | Milene | Arbaugh | RIVERSIDE SURG ASSOC INC | 907861 | EDWARD P | DOMINGUEZ | 1467400697 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509129 | K5669 | Other intestinal obstruction | ICD10 | 05162017 | 05072017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05102017 | 2017-05-10T09:14:40+00:00 |  | 000089512-01 | Bruce | Lee | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05092017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510089 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05162017 | 05092017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05102017 | 2017-05-10T15:06:02+00:00 |  | 000046979-01 | ANNA | METZGER | BAYCARE MEDICAL GROUP | 947944 | PAMELA B | WILSON | 1083650162 | ST JOSEPH HOSPITAL | 934657 | 1881632818 | ST JOSEPH HOSPITAL | 1881632818 | Inpatient | IP | Concurrent Review | CONC |  | ST JOSEPH HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510108 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05162017 | 05102017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05112017 | 2017-05-11T12:49:12+00:00 |  | 000033268-01 | MARCIA | SELF | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05102017 | 05152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511043 | J159, R0600 | Dyspnea, unspecified | ICD10 | 05162017 | 05102017 | 05152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05112017 | 2017-05-11T06:36:37+00:00 |  | 000115793-01 | Edith | Reese | OSU PATHOLOGY SRVS LLC | 937007 | MELANIE S | KENNEDY | 1346283777 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05102017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511047 | R112, R2681, R42 | Dizziness and giddiness | ICD10 | 05162017 | 05102017 | 05142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05112017 | 2017-05-11T08:49:20+00:00 |  | 000105184-01 | Betty | Heaton | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05102017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511058 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 05162017 | 05102017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05122017 | 2017-05-12T11:20:22+00:00 |  | 000073230-01 | Linda | Hedges | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512087 | R0602 | Shortness of breath | ICD10 | 05162017 | 05102017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T09:20:34+00:00 |  | 000090228-01 | Robert | Lambert | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | HealthHelp | Inpatient | Inpatient | 05122017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516005 | D649 | Anemia, unspecified | ICD10 | 05162017 | 05122017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05162017 | 2017-05-16T12:14:01+00:00 |  | 000025350-01 | CHARLES | JOHNSON JR | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05152017 | 05162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516069 | R339 | Retention of urine, unspecified | ICD10 | 05162017 | 05152017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T16:09:47+00:00 |  | 000015712-01 | WILLIAM | SEATON | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05152017 | 05162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516106 | N320 | Bladder-neck obstruction | ICD10 | 05162017 | 05152017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05162017 | 2017-05-16T08:27:27+00:00 |  | 000079523-01 | Marilyn | Willoughby | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05162017 | Denied | MediGold Southwest OH Classic Preferred |  | Member Not Eligible | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170516011 | R410 | Disorientation, unspecified | ICD10 | 05162017 | 05142017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
