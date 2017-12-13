Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-12_URGEMERG
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
| 12082017 | 2017-12-08T08:30:59+00:00 | 168601957341 | 000086490-01 | Marvin | Curtis | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12072017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208014 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12122017 | 12072017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12112017 | 2017-12-11T10:08:51+00:00 | 250222707342 | 000020857-01 | VIRGINIA | CONLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 12082017 | 12112017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211036 | I350, I509 | Heart failure, unspecified | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T13:57:56+00:00 |  | 000028884-01 | MELVIN | WOOD | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129107 | I4891 | Unspecified atrial fibrillation | ICD10 | 12122017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12112017 | 2017-12-11T10:24:24+00:00 | 264374707342 | 000002309-01 | JANET | HAMILTON | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211046 | S72092A | Oth fracture of head and neck of left femur, init | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T10:35:05+00:00 | 250577567342 | 000037159-01 | LOIS | JAMES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 12082017 | 12112017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211056 | J811 | Chronic pulmonary edema | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T12:10:03+00:00 | 250780637342 | 000021706-01 | WILLIAM | MOHLER | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211091 | S065X9A | Traum subdr hem w LOC of unsp duration, init | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T08:48:43+00:00 | 017114835-7340 | 000075995-01 | Kenneth | Ruprecht | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 12082017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212005 | N135 | Crossing vessel and stricture of ureter w/o hydronephrosis | ICD10 | 12122017 | 12082017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11272017 | 2017-11-27T10:33:02+00:00 | 255650667329 | 000012723-01 | ASSUNTA | SPOSITO | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11252017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127059 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 12122017 | 11252017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 12072017 | 2017-12-07T10:08:09+00:00 | 254624637340 | 000015297-01 | JUDITH | TERRY | HOSPITALIST MEDICINE PHY | 901443 | OLUGBENGA F | TOLANI | 1255439675 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12062017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207028 | R109 | Unspecified abdominal pain | ICD10 | 12122017 | 12062017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12112017 | 2017-12-11T12:40:11+00:00 | 254998537343 | 000067205-01 | IGNACIO | VASQUEZ JR | EMERGENCY SERVICES INC | 936673 | STEVEN C | GENTILE | 1841278389 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12092017 | 12112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211100 | N134, N201 | Calculus of ureter | ICD10 | 12122017 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11182017 | 2017-11-18T15:18:52+00:00 |  | 000052750-01 | CHARLOTTE | BALL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11172017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171118005 | I4891, N390 | Urinary tract infection, site not specified | ICD10 | 12122017 | 11172017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 12112017 | 2017-12-11T12:42:50+00:00 | 251268387342 | 000007524-01 | NANCY | WENIG | MOUNT CARMEL HLTH PRVDRS | 934916 | STEVEN | TANZER | 1578526513 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211101 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12092017 | 2017-12-09T07:18:36+00:00 |  | 000001577-01 | CHARLES | DAVIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211006 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T14:50:19+00:00 |  | 000001296-01 | NINA | WAGENER | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12022017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204141 | I509, N185, R0902 | Hypoxemia | ICD10 | 12122017 | 12022017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12082017 | 2017-12-08T08:38:05+00:00 | 251768457341 | 000094581-01 | Robert | Hakes | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12072017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208020 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12122017 | 12072017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12122017 | 2017-12-12T09:24:57+00:00 | 250323027265 | 000043223-01 | SHARON | EVANS | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 09242017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212014 | I7389 | Other specified peripheral vascular diseases | ICD10 | 12122017 | 09242017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12102017 | 2017-12-10T07:37:39+00:00 |  | 000070338-01 | Kenneth | Sizemore | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 12092017 | 12112017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211010 | I4891 | Unspecified atrial fibrillation | ICD10 | 12122017 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12042017 | 2017-12-04T14:00:34+00:00 |  | 000109975-01 | Dorothy | Savage | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12012017 | 12052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204128 | I10, J189, R0902 | Hypoxemia | ICD10 | 12122017 | 12012017 | 12052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T09:44:42+00:00 | 253270677337 | 000003143-01 | KENEL | KELLY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12122017 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204043 | R55 | Syncope and collapse | ICD10 | 12122017 | 12032017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12072017 | 2017-12-07T17:33:24+00:00 |  | 000102696-01 | Linda | Carpenter | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 906189 | 1285785535 | SELECT SPECIALTY HOSPITAL COLUMBUS E | 1285785535 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS E | 12122017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 12122017 | 12132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171208046 | I712, J9601 | Acute respiratory failure with hypoxia | ICD10 | 12122017 | 12112017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11222017 | 2017-11-22T15:24:48+00:00 |  | 000113664-01 | BARBARA | DIRR | ALLIANCE PHYSICIANS INC | 907134 | MINIA | HELLAN | 1699851279 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122084 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 12122017 | 12082017 | 12112017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 12012017 | 2017-12-01T08:55:15+00:00 |  | 000092292-01 | Rogene | Wokna | SOUND INPATIENT PHYS OF | 927302 | ABIDEMI B | AKANDE | 1518281690 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 12122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11302017 | 12082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171201040 | E871, E876 | Hypokalemia | ICD10 | 12122017 | 11302017 | 12082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12072017 | 2017-12-07T08:29:11+00:00 |  | 000079857-01 | Ralph | McKee | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12072017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207012 | K819 | Cholecystitis, unspecified | ICD10 | 12122017 | 12072017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12042017 | 2017-12-04T13:36:16+00:00 |  | 000039906-01 | DANIEL | WALKER | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204125 | E876, R531 | Weakness | ICD10 | 12122017 | 12012017 | 12062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12092017 | 2017-12-09T08:21:33+00:00 |  | 000093159-01 | Cheryl | Stooksberry | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12082017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211012 | S82851A | Displaced trimalleolar fracture of right lower leg, init | ICD10 | 12122017 | 12082017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12062017 | 2017-12-06T14:35:20+00:00 |  | 000077372-01 | Walter | Hughes | TRI STATE HSPISTS LLC | 932234 | ANDREW J | CASTELLANOS | 1144409392 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12052017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171206072 | G9340 | Encephalopathy, unspecified | ICD10 | 12122017 | 12052017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12042017 | 2017-12-04T09:40:53+00:00 |  | 000092360-01 | Sharon | Loeffler | BLUERIDGE VISTA HEALTH A | 949112 |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | BLUERIDGE VISTA HEALTH A | 949112 | 1053784454 | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 12122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12012017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204085 | F321 | Major depressive disorder, single episode, moderate | ICD10 | 12122017 | 12012017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12112017 | 2017-12-11T10:29:25+00:00 |  | 000117926-01 | Lily | Smith | CENTRAL OH HSPISTS INC | 943199 | BLASE G | HENNESSY | 1386936755 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12092017 | 12102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211086 | R55 | Syncope and collapse | ICD10 | 12122017 | 12092017 | 12102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12042017 | 2017-12-04T09:50:02+00:00 | 264120687337 | 000082800-01 | Steven | Mcdaniel | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1831172329 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12032017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204050 | M79609 | Pain in unspecified limb | ICD10 | 12122017 | 12032017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12082017 | 2017-12-08T09:02:01+00:00 |  | 000094795-01 | Bill | Moe | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12072017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208032 | R531 | Weakness | ICD10 | 12122017 | 12072017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T08:52:18+00:00 |  | 000038811-01 | RICHARD | ROLWING | OSU SURGERY LLC | 908006 | MICHAEL R | GO | 1225297377 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12092017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211062 | I776 | Arteritis, unspecified | ICD10 | 12122017 | 12092017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12052017 | 2017-12-05T10:36:45+00:00 |  | 000074287-01 | Buddy | Mayfield | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12042017 | 12112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171205057 | R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 12122017 | 12042017 | 12112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12042017 | 2017-12-04T10:38:29+00:00 | 260585227337 | 000028605-01 | MARILYN | BERTELSBECK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12032017 | 12122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171204077 | I499 | Cardiac arrhythmia, unspecified | ICD10 | 12122017 | 12032017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11172017 | 2017-11-17T16:23:12+00:00 |  | 000021019-01 | DOROTHY | HAAS | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 12122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 12092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120010 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 12122017 | 11172017 | 12092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 12082017 | 2017-12-08T15:03:27+00:00 | 026637452-7342 | 000100431-01 | Timothy | Mott | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12112017 | 12122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208071 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 12122017 | 12112017 | 12122017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 12112017 | 2017-12-11T10:47:44+00:00 | 263009457344 | 000045457-01 | MONNA | HOLTER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12122017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 12102017 | 12122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211065 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12122017 | 12102017 | 12122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
