Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-28_URGEMERG
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
| 11012017 | 2017-11-01T16:10:27+00:00 |  | 000074693-01 | Frederick | Acord | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103055 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 12282017 | 12182017 | 12272017 | 62272, 62223, 61781 | SCAN PROC CRANIAL INTRA | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 10, 10, 10 | CPT | C4 |  |  |  | 9.0 |
| 12212017 | 2017-12-21T15:14:38+00:00 |  | 000118635-01 | Michael | Clemens | SOUND INPATIENT PHYS OF | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12202017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221068 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 12282017 | 12202017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12152017 | 2017-12-15T09:05:04+00:00 | 250018217348 | 000034328-01 | JERRY | ALTHOFF | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12142017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215025 | B9562, R55 | Syncope and collapse | ICD10 | 12282017 | 12142017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 12232017 | 2017-12-23T06:40:10+00:00 |  | 000086500-01 | Ruby | Keogh | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12222017 | 12252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226017 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12282017 | 12222017 | 12252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12142017 | 2017-12-14T13:39:25+00:00 |  | 000033349-01 | THOMAS | CAHILL | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12132017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214048 | J189, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12282017 | 12132017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 12182017 | 2017-12-18T13:23:27+00:00 |  | 000068288-01 | PORTER | SHOEMAKER | HOSPITALIST MEDICINE PHY | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12152017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218125 | I214, I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 12282017 | 12152017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12182017 | 2017-12-18T12:08:50+00:00 |  | 000053499-01 | Elizabeth | Hatfield | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12162017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219030 | R531 | Weakness | ICD10 | 12282017 | 12162017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12212017 | 2017-12-21T09:13:18+00:00 | 253828097354 | 000003171-01 | MYRTLE | MITCHELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12202017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221009 | J189 | Pneumonia, unspecified organism | ICD10 | 12282017 | 12202017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12182017 | 2017-12-18T12:20:40+00:00 |  | 000044036-01 | Paul | Minshall | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12172017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219059 | R0602 | Shortness of breath | ICD10 | 12282017 | 12172017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12152017 | 2017-12-15T10:11:01+00:00 | 256614507348 | 000066313-01 | DOLORES | THOMPSON | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12142017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215042 | I509 | Heart failure, unspecified | ICD10 | 12282017 | 12142017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 12212017 | 2017-12-21T09:32:45+00:00 | 261821037354 | 000112291-01 | Ann | Seay | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12202017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221026 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12282017 | 12202017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12172017 | 2017-12-17T11:28:23+00:00 |  | 000104722-01 | Eugene | Nance | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12162017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218075 | R001 | Bradycardia, unspecified | ICD10 | 12282017 | 12162017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12202017 | 2017-12-20T10:50:39+00:00 |  | 000111446-01 | Gary | Plueckhahn | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220045 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 12282017 | 12192017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T14:37:57+00:00 |  | 000040565-01 | Julia | Mcdonald | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103087 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12282017 | 12182017 | 12212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11302017 | 2017-11-30T07:22:56+00:00 |  | 000096682-01 | Shirley | Moore | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130096 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 12282017 | 12182017 | 12202017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12262017 | 2017-12-26T11:23:01+00:00 | 251201577358 | 000057219-01 | JANET | WISE | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226096 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 12282017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12112017 | 2017-12-11T08:20:34+00:00 |  | 000092338-01 | Mariam | Tackett | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 12282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12102017 | 12162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211051 | C801, I639 | Cerebral infarction, unspecified | ICD10 | 12282017 | 12102017 | 12162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12232017 | 2017-12-23T05:57:02+00:00 |  | 000076397-01 | Ronald | Hamilton | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 12282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12222017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226008 | R079 | Chest pain, unspecified | ICD10 | 12282017 | 12222017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11272017 | 2017-11-27T08:54:34+00:00 |  | 000091945-01 | Rita | Miller | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11262017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127140 | E871, J181 | Lobar pneumonia, unspecified organism | ICD10 | 12282017 | 11262017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T13:21:50+00:00 |  | 000097675-01 | Susan | Garrison | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219023 | T8453XA | Infect/inflm reaction due to internal r knee prosth, init | ICD10 | 12282017 | 12192017 | 12212017 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12142017 | 2017-12-14T17:36:40+00:00 |  | 000084205-01 | Herman | Shuttleworth | CLEVELAND CLINIC FNDN | 945343 | TRACY L | HULL | 1679509343 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12182017 | 12272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171215030 | K651 | Peritoneal abscess | ICD10 | 12282017 | 12182017 | 12272017 | 49500, 52332, 97605, 11043, 15734, 52332 | CYSTO C INSERT INDWELLING URETH ST. | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 10, 10, 10, 10, 10, 10 | CPT | C4 |  |  |  | 5.0 |
| 12122017 | 2017-12-12T09:03:26+00:00 |  | 000073201-01 | George | Hahnemann III | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 12282017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12172017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212048 | C9201 | Acute myeloblastic leukemia, in remission | ICD10 | 12282017 | 12172017 | 12222017 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:54:33+00:00 |  | 000117166-01 | ROSALIE | GOOD | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12162017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218150 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 12282017 | 12162017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12202017 | 2017-12-20T09:43:27+00:00 |  | 000070802-01 | Jane | Langdon | OSU INTERNAL MED LLC | 922918 | MARWAN M | MOHAMMAD | 1649400649 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220024 | G7000 | Myasthenia gravis without (acute) exacerbation | ICD10 | 12282017 | 12192017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12192017 | 2017-12-19T08:24:34+00:00 |  | 000074468-01 | Lewis | Osborn Jr | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219079 | R079 | Chest pain, unspecified | ICD10 | 12282017 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12122017 | 2017-12-12T17:44:18+00:00 |  | 000102027-01 | Helen | Underwood | ZANESVILLE XPRESS ORTHO | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12192017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213060 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12282017 | 12192017 | 12212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11132017 | 2017-11-13T14:32:27+00:00 | 018025406-7318 | 000118368-01 | Paul | Myers Jr | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114002 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 12282017 | 12262017 | 12282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 2 | 2 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12192017 | 2017-12-19T13:36:03+00:00 |  | 000111055-01 | Clarence | Wright Jr | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 12282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12182017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219106 | I4891, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 12282017 | 12182017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T15:42:51+00:00 |  | 000038432-01 | ROBERT | ANDERSON | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114006 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12282017 | 12272017 | 12282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12262017 | 2017-12-26T13:46:53+00:00 |  | 000008313-01 | LOUELLA | CONLEY | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226166 | J189 | Pneumonia, unspecified organism | ICD10 | 12282017 | 12252017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12182017 | 2017-12-18T08:14:18+00:00 |  | 000117130-01 | Dewey | Turbeville | OSU INTERNAL MED LLC | 942419 | BRIAN T | PETULLO | 1508132531 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 12282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12152017 | 12222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218100 | I200 | Unstable angina | ICD10 | 12282017 | 12152017 | 12222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12192017 | 2017-12-19T07:30:24+00:00 |  | 000066729-01 | JUDITH | BLAIR | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219075 | J189 | Pneumonia, unspecified organism | ICD10 | 12282017 | 12182017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12272017 | 2017-12-27T08:18:08+00:00 |  | 000075878-01 | Sondra | Daugherty | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 12282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12252017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227057 | I509 | Heart failure, unspecified | ICD10 | 12282017 | 12252017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T09:16:25+00:00 | 253025477354 | 000062509-01 | FRANK | TANZILLO | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12202017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221011 | N179, R579 | Shock, unspecified | ICD10 | 12282017 | 12202017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12232017 | 2017-12-23T17:14:12+00:00 |  | 000117166-01 | ROSALIE | GOOD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Reports | ACO - Cardiology | Inpatient | 12232017 | 12282017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223013 | I259 | Chronic ischemic heart disease, unspecified | ICD10 | 12282017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12282017 | 2017-12-28T09:56:55+00:00 |  | 000012954-01 | SANDRA | AYRES | THE MILTON S HERSHEY MED | 906809 |  | THE MILTON S HERSHEY MEDICAL CENTER | 1255482089 | THE MILTON S HERSHEY MED | 906809 | 1255482089 | THE MILTON S HERSHEY MEDICAL CENTER | 1255482089 | Inpatient | IP | Concurrent Review | CONC |  | THE MILTON S HERSHEY MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228035 | S065X9A | Traum subdr hem w LOC of unsp duration, init | ICD10 | 12282017 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12272017 | 2017-12-27T15:42:10+00:00 |  | 000108625-01 | Carl | Birkemeyer | RCHP WILMINGTON LLC | 921474 | JEFFREY A | SATCHWELL | 1952363723 | MCCULLOUGH-HYDE MEM HSP | 923689 | 1245216183 | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 1245216183 | Inpatient | IP | Concurrent Review | CONC |  | MCCULLOUGH HYDE MEMORIAL HOSPITAL | 12282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12262017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227097 | R319 | Hematuria, unspecified | ICD10 | 12282017 | 12262017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T13:36:36+00:00 |  | 000015412-01 | CLARA | PARKER | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12232017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226164 | R4182 | Altered mental status, unspecified | ICD10 | 12282017 | 12232017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12182017 | 2017-12-18T09:10:50+00:00 | 025229400-7319 | 000044659-01 | THELMA | SPEARS | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 12272017 | 12282017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218026 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 12282017 | 12272017 | 12282017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12282017 | 2017-12-28T10:43:40+00:00 |  | 000060768-01 | IRENE | COTTRILL | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12272017 | 12282017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228041 | N200 | Calculus of kidney | ICD10 | 12282017 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12082017 | 2017-12-08T08:23:22+00:00 |  | 000080235-01 | Judith | Greuey | GENESIS MEDICAL GRP LLC | 915977 | JAMES P | ADAMO | 1194721993 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12072017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171208015 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 12282017 | 12072017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T10:33:46+00:00 | 250228397350 | 000015496-01 | ELMO | CURRY | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12162017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218048 | I509 | Heart failure, unspecified | ICD10 | 12282017 | 12162017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 12192017 | 2017-12-19T08:24:29+00:00 |  | 000107230-01 | Paul | Erwin | GENESIS MEDICAL GRP LLC | 928371 | ROY J | PETERS | 1063701035 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219077 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 12282017 | 12182017 | 12242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12212017 | 2017-12-21T10:38:54+00:00 |  | 000117101-01 | Galen | Iden | FAIRFIELD HLTHCARE PROFS | 922119 | AJAY K | SHARMA | 1336287002 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12202017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221042 | F259 | Schizoaffective disorder, unspecified | ICD10 | 12282017 | 12202017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12232017 | 2017-12-23T16:42:11+00:00 | 025629859-7356 | 000074175-01 | Paula | Wetzel | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12282017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12232017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171223012 | M25561 | Pain in right knee | ICD10 | 12282017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12262017 | 2017-12-26T15:29:42+00:00 |  | 000038168-01 | MONA | BOGGS | ADENA MEDICAL GROUP LLC | 924263 | AUSTIN G | AL-KAZAZ | 1679803290 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12232017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226167 | I6200, S066X0A | Traum subrac hem w/o loss of consciousness, init | ICD10 | 12282017 | 12232017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12222017 | 2017-12-22T08:41:09+00:00 | 018040097-7332 | 000084012-01 | Carl | McCoy | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222041 | M25551 | Pain in right hip | ICD10 | 12282017 | 12272017 | 12282017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12262017 | 2017-12-26T08:57:56+00:00 | 252064277357 | 000108054-01 | Janey | Mohler | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12282017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 12232017 | 12282017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226029 | R0902 | Hypoxemia | ICD10 | 12282017 | 12232017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12272017 | 2017-12-27T07:45:59+00:00 |  | 000075848-01 | Anna | Sharp | BETHESDA NORTH HOSPITAL | 936487 |  | BETHESDA NORTH HOSPITAL | 1396714663 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 12282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12262017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227052 | J189 | Pneumonia, unspecified organism | ICD10 | 12282017 | 12262017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:17:17+00:00 | 025647682-7351 | 000085503-01 | Patricia | Rice | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12282017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 12172017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218036 | L03115 | Cellulitis of right lower limb | ICD10 | 12282017 | 12172017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
