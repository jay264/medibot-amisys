Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-06_thru_2017-10-08_URGEMERG
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
| 10052017 | 2017-10-05T09:36:21+00:00 | 252334247278 | 000029192-01 | BETTY | STRAWSER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005008 | R079 | Chest pain, unspecified | ICD10 | 10062017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T09:21:42+00:00 | 252120697276 | 000007498-01 | EDWARD | NOVOTNEY | MOUNT CARMEL HLTH SYS | 919157 | DANA P | HOUSER | 1982857165 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 10032017 | 10052017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004013 | J159 | Unspecified bacterial pneumonia | ICD10 | 10062017 | 10032017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T09:13:02+00:00 | 254772427272 | 000052649-01 | Ernest | Danco | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09292017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002007 | G9340 | Encephalopathy, unspecified | ICD10 | 10062017 | 09292017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09252017 | 2017-09-25T09:30:56+00:00 | 250323027265 | 000044473-01 | SHARON | EVANS | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09242017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925027 | I739 | Peripheral vascular disease, unspecified | ICD10 | 10062017 | 09242017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09112017 | 2017-09-11T10:06:25+00:00 |  | 000095398-01 | Laura | Fisher | LICKING MEM HLTH PROF | 916357 | DONALD J | FAIRBANKS | 1164441457 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09082017 | 09172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911100 | I509, L03115 | Cellulitis of right lower limb | ICD10 | 10062017 | 09082017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09272017 | 2017-09-27T09:34:06+00:00 | 252811707270 | 000040481-01 | SUSIE | KLINGMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09272017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927016 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 10062017 | 09272017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09282017 | 2017-09-28T09:53:42+00:00 | 250796397271 | 000015773-01 | GRACIE | MURRAY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09272017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928027 | C3410, E871 | Hypo-osmolality and hyponatremia | ICD10 | 10062017 | 09272017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09132017 | 2017-09-13T15:13:33+00:00 |  | 000056083-01 | VICTORIA | STEBELTON | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10032017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915039 | K5900 | Constipation, unspecified | ICD10 | 10062017 | 10032017 | 10052017 | 44320 | COLOSTOMY, TEMPORARY OR PERMANENT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 09282017 | 2017-09-28T09:33:45+00:00 |  | 000076918-01 | Barbara | Powell | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09272017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928032 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 10062017 | 09272017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09082017 | 2017-09-08T19:22:57+00:00 |  | 000097637-01 | Charles | Parker | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911011 | Z472 | Encounter for removal of internal fixation device | ICD10 | 10062017 | 09172017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 09292017 | 2017-09-29T09:14:09+00:00 |  | 000085235-01 | Patricia | Roberts | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09282017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929019 | A419, N19 | Unspecified kidney failure | ICD10 | 10062017 | 09282017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09212017 | 2017-09-21T09:01:27+00:00 |  | 000101742-01 | JUDY | HARRIS | OSU SURGERY LLC | 940854 | PETER H U | LEE | 1598932428 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09202017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921048 | J984 | Other disorders of lung | ICD10 | 10062017 | 09202017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T09:05:51+00:00 |  | 000069999-01 | Larry | Conn | OSU INTERNAL MED LLC | 909437 | BETH Y | BESECKER | 1699895581 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09202017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921051 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 10062017 | 09202017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T09:18:30+00:00 |  | 000029400-01 | ELAINE | FILMORE | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10062017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 09302017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002096 | M25569 | Pain in unspecified knee | ICD10 | 10062017 | 09302017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10052017 | 2017-10-05T15:33:02+00:00 |  | 000080879-01 | Debra | Fisher | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10062017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 10062017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171005057 | I639 | Cerebral infarction, unspecified | ICD10 | 10062017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09262017 | 2017-09-26T08:37:14+00:00 |  | 000091069-01 | John | Young | OSU INTERNAL MED LLC | 949059 | JISHU K | DAS | 1326276247 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926006 | C61, R52 | Pain, unspecified | ICD10 | 10062017 | 09262017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T11:56:10+00:00 |  | 000090623-01 | GARY | JENKINS | OSU INTERNAL MED LLC | 910537 | VERONICA | FRANCO | 1962513796 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830056 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 10062017 | 09042017 | 10062017 | 96365 | THER/PROPH/DIAG IV INF, INIT | CPT | 1 | 1 | Approved | 33 | CPT | C4 |  |  |  | 16.0 |
| 10022017 | 2017-10-02T10:47:31+00:00 | 251079057273 | 000050285-01 | GWENDOLYN | SALYERS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10012017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002037 | I209, I509 | Heart failure, unspecified | ICD10 | 10062017 | 10012017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10062017 | 2017-10-06T09:01:06+00:00 | 261032407278 | 000051026-01 | HERCEL | ADKINS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 10052017 | 10062017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006009 | R079 | Chest pain, unspecified | ICD10 | 10062017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T12:21:01+00:00 |  | 000100208-01 | John | Mueller III | LICKING MEM BEHAVIORAL H | 930707 | WILLIAM A | HIGHBERGER | 1629022207 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10022017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002107 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 10062017 | 10022017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T15:55:49+00:00 |  | 000083311-01 | Bill | Spray | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09252017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003022 | I509 | Heart failure, unspecified | ICD10 | 10062017 | 09252017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10022017 | 2017-10-02T10:25:08+00:00 |  | 000061127-01 | JAMES | GREEN | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09292017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002112 | I4891, I639 | Cerebral infarction, unspecified | ICD10 | 10062017 | 09292017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09252017 | 2017-09-25T14:21:58+00:00 | 017563054-7268 | 000118370-01 | Michael | Love | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10052017 | 10062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926055 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10062017 | 10052017 | 10062017 | 34802, 34812, 34825, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 6.0 |
| 10052017 | 2017-10-05T10:06:03+00:00 | 255651847277 | 000076901-01 | Mary | Noble | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005021 | G7000 | Myasthenia gravis without (acute) exacerbation | ICD10 | 10062017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T14:33:11+00:00 | 025975898-7254 | 000117171-01 | JOYCE | TOY | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 10052017 | 10062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913027 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 10062017 | 10052017 | 10062017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09142017 | 2017-09-14T18:45:25+00:00 |  | 000112718-01 | NANCY | INGRAM | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 10062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09162017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915001 | G8194 | Hemiplegia, unspecified affecting left nondominant side | ICD10 | 10062017 | 09162017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 10042017 | 2017-10-04T14:59:43+00:00 | 252052497277 | 000110724-01 | Linda | Milburn | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 10042017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004062 | G9340 | Encephalopathy, unspecified | ICD10 | 10062017 | 10042017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10022017 | 2017-10-02T10:18:59+00:00 |  | 000067111-01 | LESTER | HULSE | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09292017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002105 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10062017 | 09292017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10022017 | 2017-10-02T10:28:13+00:00 |  | 000019463-01 | ROSEMARY | HUNTER | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10062017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002116 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10062017 | 09282017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10062017 | 2017-10-06T11:05:21+00:00 |  | 000085757-01 | Paul | Garvin | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10062017 | Approved | MediGold Essential Care | Reports | ACO - Cardiology | Inpatient | 10052017 | 10062017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006046 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10062017 | 10052017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T09:30:24+00:00 | 256068707269 | 000071662-01 | WARNIE | JACKSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09262017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927015 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 10072017 | 09262017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10032017 | 2017-10-03T09:30:16+00:00 | 260310677275 | 000074730-01 | Barbara | Sweetman | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10022017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003020 | R109 | Unspecified abdominal pain | ICD10 | 10072017 | 10022017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T09:20:43+00:00 | 254720317273 | 000001831-01 | GENE | DANIELS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09302017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002012 | E8770 | Fluid overload, unspecified | ICD10 | 10072017 | 09302017 | 10072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09272017 | 2017-09-27T13:34:20+00:00 |  | 000076532-01 | Barbara | Barth | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10042017 | 10072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928020 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 10072017 | 10042017 | 10072017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
