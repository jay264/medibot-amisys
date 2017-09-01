Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-30_URGEMERG
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
| 08252017 | 2017-08-25T17:05:02+00:00 |  | 000083327-01 | Walter | Harris | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08252017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825075 | M6281 | Muscle weakness (generalized) | ICD10 | 08302017 | 08252017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08252017 | 2017-08-25T09:12:15+00:00 |  | 000030830-01 | JUDITH | BRECKENRIDGE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 08242017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825006 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 08302017 | 08242017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08172017 | 2017-08-17T09:14:34+00:00 | 252228337228 | 000049379-01 | DONNIE | ROSS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08162017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817007 | N179 | Acute kidney failure, unspecified | ICD10 | 08302017 | 08162017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 08282017 | 2017-08-28T09:11:12+00:00 | 250320637238 | 000062415-01 | ELLEN | EUBANK | SOUND PHYSICIANS OF OHI0 | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08262017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828011 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 08302017 | 08262017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T09:17:01+00:00 |  | 000088499-01 | Joan | Irwin | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 08282017 | 08292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724049 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 08302017 | 08282017 | 08292017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08252017 | 2017-08-25T11:10:40+00:00 | 026620901-7237 | 000084992-01 | Bruce | Dadisman | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08302017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08282017 | 08292017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825042 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 08302017 | 08282017 | 08292017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08242017 | 2017-08-24T13:33:59+00:00 | 254595357236 | 000046497-01 | ARTHUR | LEWIS | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08242017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824048 | R109 | Unspecified abdominal pain | ICD10 | 08302017 | 08242017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T11:20:49+00:00 |  | 000042548-01 | CHARLENE | MCKEE | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818035 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08302017 | 08252017 | 08292017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 08212017 | 2017-08-21T09:53:27+00:00 | 250932697232 | 000062536-01 | GARY | ROBINSON | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821027 | N179 | Acute kidney failure, unspecified | ICD10 | 08302017 | 08212017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03032017 | 2017-03-03T10:48:00+00:00 |  | 000096349-01 | Katherine | Harlow | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08302017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170316090407.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170307037 | J189 | Pneumonia, unspecified organism | ICD10 | 08302017 | 03022017 | 03082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08162017 | 2017-08-16T12:18:52+00:00 |  | 000007917-01 | GLENN | BUCY | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816062 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08302017 | 08282017 | 08292017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08222017 | 2017-08-22T14:49:05+00:00 |  | 000112491-01 | GAYLE | MAILLOUX | RAYANI, SUJANA V | 931391 | SUJANA V | RAYANI | 1487862421 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823037 | F322 | Major depressv disord, single epsd, sev w/o psych features | ICD10 | 08302017 | 08212017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05012017 | 2017-05-01T10:42:57+00:00 |  | 000114200-01 | Ida | Webb | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08302017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08302017 | 10292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501114 | F10231 | Alcohol dependence with withdrawal delirium | ICD10 | 08302017 | 04282017 | 05022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T09:22:16+00:00 |  | 000098955-01 | Jeffrey | Sells | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08252017 | 08272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714015 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 08302017 | 08252017 | 08272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08242017 | 2017-08-24T12:28:54+00:00 |  | 000089086-01 | Melvin | Foster | SENTARA NORFOLK GENERAL HOSPITAL | 902768 |  | SENTARA NORFOLK GENERAL HOSPITAL | 0 | SENTARA NORFOLK GENERAL HOSPITAL | 902768 | 0 | SENTARA NORFOLK GENERAL HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | SENTARA NORFOLK GENERAL HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824037 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 08302017 | 08222017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T09:16:26+00:00 |  | 000041297-01 | NORMA | PUCKETT | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08242017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825009 | M25559 | Pain in unspecified hip | ICD10 | 08302017 | 08242017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T09:36:09+00:00 |  | 000009095-01 | CLINTON | MEREDITH | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08242017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825016 | I509 | Heart failure, unspecified | ICD10 | 08302017 | 08242017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08022017 | 2017-08-02T07:34:59+00:00 | NCT02143414 IP | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08302017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 08272017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802007 | C9101 | Acute lymphoblastic leukemia, in remission | ICD10 | 08302017 | 08272017 | 08292017 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 4.0 |
| 08292017 | 2017-08-29T16:57:55+00:00 |  | 000116002-01 | HOWARD | FRY | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08282017 | 08302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829102 | R310 | Gross hematuria | ICD10 | 08302017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08212017 | 2017-08-21T11:14:56+00:00 |  | 000116080-01 | James | Blosser | COPC CENTRAL OHIO PRIMAR | 925749 | RENEE M | SCHWADERER | 1750512778 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08202017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821080 | R0602 | Shortness of breath | ICD10 | 08302017 | 08202017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07062017 | 2017-07-06T09:56:36+00:00 |  | 000084209-01 | Ronald | Probasco | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706044 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08302017 | 08212017 | 08232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08072017 | 2017-08-07T08:42:57+00:00 |  | 000009165-01 | BERNICE | COLEMAN | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807099 | I4891, N390, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08302017 | 08052017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08232017 | 2017-08-23T11:58:09+00:00 | 250801657234 | 000064139-01 | SHIRLEY | MOORE | MOUNT CARMEL HLTH PRVDRS | 905429 | TONY J | DIPALMA | 1467665117 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08222017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823010 | N882 | Stricture and stenosis of cervix uteri | ICD10 | 08302017 | 08222017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08282017 | 2017-08-28T09:17:40+00:00 | 254599657237 | 000117639-01 | Karen | Abbott | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08302017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828015 | N179 | Acute kidney failure, unspecified | ICD10 | 08302017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T14:25:08+00:00 |  | 000074686-01 | Wilbert | Pyles | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816033 | A419, K819 | Cholecystitis, unspecified | ICD10 | 08302017 | 08142017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08212017 | 2017-08-21T11:33:26+00:00 |  | 000109345-01 | FRED | CONING | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08202017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821113 | R109 | Unspecified abdominal pain | ICD10 | 08302017 | 08202017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08292017 | 2017-08-29T14:02:46+00:00 |  | 000091237-01 | Sherry | Ray | SOUND PHYSICIANS OF OHI0 | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08302017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Inpatient | Inpatient | 08282017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829076 | I4891, R079 | Chest pain, unspecified | ICD10 | 08302017 | 08282017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08282017 | 2017-08-28T16:15:33+00:00 |  | 000107452-01 | Richard | Milhoan | OHIOHEALTH PHYS GRP | 944179 | MAX H | SAENZ | 1093009987 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08302017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829044 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 08302017 | 08282017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08212017 | 2017-08-21T11:50:20+00:00 |  | 000102981-01 | Marilyn | Boomershine | AAMIR KHAN MD INC | 905477 | AAMIR | KHAN | 1295824746 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08202017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822049 | E871, E876, R410 | Disorientation, unspecified | ICD10 | 08302017 | 08202017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T12:42:46+00:00 |  | 000087936-01 | Joseph | Bereczky | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823023 | R079 | Chest pain, unspecified | ICD10 | 08302017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T10:30:28+00:00 |  | 000115486-01 | PATRICIA | WAYNE | GENESIS MEDICAL GRP LLC | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08302017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08222017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08302017 | 08222017 | 08292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 5.0 |
| 08242017 | 2017-08-24T10:15:12+00:00 |  | 000072208-01 | Cynthy | Perry | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825054 | A419, N390, R4182 | Altered mental status, unspecified | ICD10 | 08302017 | 08232017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T14:33:17+00:00 |  | 000096557-01 | Deborah | Ohl | MERCY HEALTH PHYSICIANS | 920982 | FRANK R | NOYES | 1407851728 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08302017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08232017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728049 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08302017 | 08232017 | 08242017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 08242017 | 2017-08-24T15:58:03+00:00 |  | 000083211-01 | Bettie | Paugh | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824087 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 08302017 | 08282017 | 08302017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08232017 | 2017-08-23T15:17:34+00:00 |  | 000097886-01 | Audrey | Taylor | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08302017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824071 | I890, L0390, R6889 | Other general symptoms and signs | ICD10 | 08302017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T09:59:34+00:00 | 025319471-7215 | 000115002-01 | Marcie | McKittrick | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803023 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08302017 | 08292017 | 08302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08252017 | 2017-08-25T13:57:02+00:00 |  | 000109385-01 | Christina | Millhouse | THE READING HSP & MED CT | 933943 |  | THE READING HOSPITAL & MEDICAL CTR | 1669530069 | THE READING HSP & MED CT | 933943 | 1669530069 | THE READING HOSPITAL & MEDICAL CTR | 1669530069 | Inpatient | IP | Concurrent Review | CONC |  | THE READING HOSPITAL & MEDICAL CTR | 08302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08202017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825058 | E1101 | Type 2 diabetes mellitus with hyperosmolarity with coma | ICD10 | 08302017 | 08202017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08242017 | 2017-08-24T09:09:27+00:00 | 017921880-7235 | 000078281-01 | Judith | Livingston | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08302017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824081 | T84498A | Mech compl of internal orth devices, implnt and grafts, init | ICD10 | 08302017 | 08292017 | 08302017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08162017 | 2017-08-16T08:02:49+00:00 | 017817695-7213 | 000096946-01 | Bruce | Mannasmith | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08302017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08282017 | 08302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816006 | M4300, M4306, M4310, M4806, M5137, M5417, M545 | Low back pain | ICD10 | 08302017 | 08282017 | 08302017 | 22633, 22634, 63047, 63048, 22842, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08252017 | 2017-08-25T09:28:01+00:00 | 252872587236 | 000107499-01 | VIOLA | WILKINS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08252017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825013 | D649 | Anemia, unspecified | ICD10 | 08302017 | 08252017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T09:05:37+00:00 |  | 000095777-01 | Charles | Kramer | GENESIS MEDICAL GRP LLC | 924967 | EUCHARIA C | AKUSOBA-DAVIS | 1053545269 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820010 | I639, L03116, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 08302017 | 08172017 | 08282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T14:10:21+00:00 |  | 000080965-01 | LINDA | BURKHART | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821108 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08302017 | 08292017 | 08302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
