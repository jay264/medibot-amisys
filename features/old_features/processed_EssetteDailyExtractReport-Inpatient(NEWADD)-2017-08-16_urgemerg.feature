Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-16_URGEMERG
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
| 08162017 | 2017-08-16T08:25:53+00:00 |  | 000027218-01 | TONY | HOUSE | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08142017 | 08152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816005 | N200 | Calculus of kidney | ICD10 | 08162017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08112017 | 2017-08-11T08:49:39+00:00 |  | 000074715-01 | Adeline | Ball | SOUND PHYSICIANS OF OHI | 909480 | JINHONG | XING | 1841464369 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811049 | N390 | Urinary tract infection, site not specified | ICD10 | 08162017 | 08102017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08162017 | 2017-08-16T08:53:13+00:00 |  | 000083512-01 | Gary | Rogers | SOUND PHYSICIANS OF OHI | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816007 | I639 | Cerebral infarction, unspecified | ICD10 | 08162017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T16:30:49+00:00 |  | 000083188-01 | William | Rice | SOUND PHYSICIANS OF OHI | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809008 | R4182 | Altered mental status, unspecified | ICD10 | 08162017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T10:55:06+00:00 |  | 000114223-01 | Kenny | Wahl | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814051 | I959, M6281, R0602 | Shortness of breath | ICD10 | 08162017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07132017 | 2017-07-13T08:42:29+00:00 | 025034871-7194 | 000074890-01 | Helen | Fox | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713006 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08162017 | 08142017 | 08152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08042017 | 2017-08-04T14:05:04+00:00 |  | 000083739-01 | Betty | Baxter | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804062 | R0602 | Shortness of breath | ICD10 | 08162017 | 08032017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08142017 | 2017-08-14T08:01:28+00:00 |  | 000114869-01 | Zadie | Evilsizor | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08122017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814085 | J189 | Pneumonia, unspecified organism | ICD10 | 08162017 | 08122017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T12:37:37+00:00 |  | 000008873-01 | BETTY | SHRIVER | COPC CENTRAL OHIO PRIMAR | 906893 | JASON P | CAPPUZZELLO | 1215112149 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808102 | I639 | Cerebral infarction, unspecified | ICD10 | 08162017 | 08092017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06292017 | 2017-06-29T14:46:45+00:00 |  | 000089112-01 | Margaret | Morgan | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629081 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08162017 | 08072017 | 08102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08012017 | 2017-08-01T12:43:46+00:00 |  | 000105926-01 | Martha | Williamson | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08022017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801083 | I639 | Cerebral infarction, unspecified | ICD10 | 08162017 | 08022017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08082017 | 2017-08-08T10:56:55+00:00 | 257758387219 | 000043038-01 | SHARON | BLACK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808052 | M25559 | Pain in unspecified hip | ICD10 | 08162017 | 08072017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08102017 | 2017-08-10T08:41:44+00:00 |  | 000073519-01 | Jackie | Brewer | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810036 | I639, R531 | Weakness | ICD10 | 08162017 | 08092017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08042017 | 2017-08-04T13:08:50+00:00 |  | 000093179-01 | Charles | Bailey Jr. | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804047 | J918, R109, R509, R601 | Generalized edema | ICD10 | 08162017 | 08042017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08142017 | 2017-08-14T10:17:13+00:00 | 250321097225 | 000062448-01 | HOMER | EUBANK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08122017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814030 | T783XXA | Angioneurotic edema, initial encounter | ICD10 | 08162017 | 08122017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T17:19:30+00:00 |  | 000072467-01 | Jacqueline | Hilton | OSU SURGERY LLC | 909291 | MITCHELL L | HENRY | 1205889482 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant | IN TRPLNT | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Inpatient | 08142017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170815019 | N185 | Chronic kidney disease, stage 5 | ICD10 | 08162017 |  |  | 50360, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  | No child records to display. |  |
| 08082017 | 2017-08-08T12:57:33+00:00 |  | 000066148-01 | ROBERT | BOST | ADENA MEDICAL GROUP LLC | 935863 | JOHN F | BOYLE | 1457354680 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809017 | I70235, I96 | Gangrene, not elsewhere classified | ICD10 | 08162017 | 08072017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08142017 | 2017-08-14T10:25:29+00:00 | 179198377225 | 000082386-01 | William | Stewart | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08132017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814035 | S12000A | Unsp disp fx of first cervical vertebra, init for clos fx | ICD10 | 08162017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T10:12:05+00:00 | 250882167219 | 000059880-01 | SHIRLEY | PATRICK | SOUND PHYSICIANS OF OHI | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808040 | R0902 | Hypoxemia | ICD10 | 08162017 | 08072017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06082017 | 2017-06-08T10:59:19+00:00 | 025257235-7159 | 000077191-01 | Barbara | Greenlee | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608043 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08162017 | 08152017 | 08162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07112017 | 2017-07-11T08:55:21+00:00 | 017816162-7188 | 000113468-01 | GAIL | PURVIS | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 08152017 | 08162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717067 | C541 | Malignant neoplasm of endometrium | ICD10 | 08162017 | 08152017 | 08162017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:38:19+00:00 |  | 000110529-01 | Bonnie | Walker | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08112017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814097 | T40601A | Poisoning by unsp narcotics, accidental, init | ICD10 | 08162017 | 08112017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08142017 | 2017-08-14T09:26:03+00:00 | 250092767223 | 000026239-01 | M | BEAN | SOUND PHYSICIANS OF OHI | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814010 | R739, R7881 | Bacteremia | ICD10 | 08162017 | 08112017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08102017 | 2017-08-10T14:31:56+00:00 |  | 000056974-01 | ROBERT | MATTESON | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810069 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08162017 | 08152017 | 08162017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08142017 | 2017-08-14T14:43:16+00:00 |  | 000116889-01 | ROBERT | MORELAND | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815055 | R531 | Weakness | ICD10 | 08162017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T10:43:51+00:00 | 025084727-7163 | 000102197-01 | Shirley | Nair | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612067 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08162017 | 08162017 | 08162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08142017 | 2017-08-14T14:56:18+00:00 |  | 000099023-01 | Joyce | Moore | S DAYTON ACUTE CARE CNSL | 919952 | RUSSELL S | HARVEY | 1285883934 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | UNKNOWN PROVIDER | 08162017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170814120 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 08162017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08072017 | 2017-08-07T09:51:49+00:00 | 262612817219 | 000091271-01 | Stephen | Means | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08072017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807023 | K5660 | Unspecified intestinal obstruction | ICD10 | 08162017 | 08072017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08142017 | 2017-08-14T13:51:55+00:00 |  | 000077229-01 | Larry | Reed | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08122017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815035 | A419, E11621 | Type 2 diabetes mellitus with foot ulcer | ICD10 | 08162017 | 08122017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T14:54:13+00:00 |  | 000052070-01 | REBECCA | WELLS | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627093 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08162017 | 08072017 | 08102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08102017 | 2017-08-10T09:45:23+00:00 | 251844297221 | 000019429-01 | DAVID | HOWARD | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08092017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810024 | R569 | Unspecified convulsions | ICD10 | 08162017 | 08092017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07212017 | 2017-07-21T10:03:54+00:00 | 017892199-7202 | 000090110-01 | Evelyn | Lafferty | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721027 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08162017 | 08152017 | 08162017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:54:40+00:00 | 250106547223 | 000023514-01 | JOYCE | BAUER | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814008 | B3781, R1013 | Epigastric pain | ICD10 | 08162017 | 08112017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08082017 | 2017-08-08T09:57:05+00:00 | 26269267219 | 000019728-01 | HERMAN | HIGGINBOTHAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808033 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 08162017 | 08072017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08152017 | 2017-08-15T13:30:41+00:00 |  | 000106149-01 | Larry | Wickham | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815072 | I472 | Ventricular tachycardia | ICD10 | 08162017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07252017 | 2017-07-25T11:19:47+00:00 |  | 000047769-01 | RUTH | BLACK | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725070 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08162017 | 08152017 | 08162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T09:18:44+00:00 | 261480407217 | 000108691-01 | ROGER | BRYANT | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08152017 | 08162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815006 | I4891 | Unspecified atrial fibrillation | ICD10 | 08162017 | 08152017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06302017 | 2017-06-30T07:54:36+00:00 |  | 000044113-01 | SONDRA | KERN | MARY RUTAN HOSPITAL PHYS | 922749 | SAFDAR N | KHAN | 1083816193 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630005 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 08162017 | 08082017 | 08132017 | 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1 | 1 | Approved | 13 | CPT | C4 |  |  |  | 2.0 |
| 07252017 | 2017-07-25T15:17:09+00:00 |  | 000080205-01 | A Marie | Sells | KNOX COMMUNITY HOSP GRP | 907435 | HYDI F | LAIDLAW-SMITH | 1063401438 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07242017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725099 | K660, V6441 | LAPAROSCOPIC SURGICAL PROCEDURE COVERTED TO OPEN PROCEDURE | ICD10 | 08162017 | 07242017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 08072017 | 2017-08-07T10:37:20+00:00 |  | 000115194-01 | Billy | Mitchell | OSU INTERNAL MED LLC | 909484 | AYESHA K | HASAN | 1043266489 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807055 | I509 | Heart failure, unspecified | ICD10 | 08162017 | 08042017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T13:02:18+00:00 | 017912311-7219 | 000117530-01 | MARY | CUMMINGS | COPC CENTRAL OHIO PRIMAR | 911536 | ROBERT J | ZSOLDOS | 1841416179 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807072 | R0602 | Shortness of breath | ICD10 | 08162017 | 08072017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08142017 | 2017-08-14T15:51:27+00:00 |  | 000091158-01 | Ellen | Estridge | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815059 | R0602, R109 | Unspecified abdominal pain | ICD10 | 08162017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T14:35:12+00:00 |  | 000079844-01 | Mary | Collins | COSHOCTON COUNTY MEM HSP | 934197 | MARY L | GARRETT | 1811399637 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 08162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08062017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808065 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 08162017 | 08062017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T09:21:00+00:00 | 252886027219 | 000103838-01 | Ronald | Burford | SOUND PHYSICIANS OF OHI | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08082017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808026 | A419, M5136, N19 | Unspecified kidney failure | ICD10 | 08162017 | 08082017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08112017 | 2017-08-11T08:12:23+00:00 |  | 000091307-01 | Frances | Miller | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08102017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811035 | I420, I639, R29810, R531, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08162017 | 08102017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07272017 | 2017-07-27T11:21:33+00:00 |  | 000071036-01 | Dwight | Johnson | OSU SURGERY LLC | 919913 | AHMET | KILIC | 1124153218 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08032017 | 08162017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727044 | I052, I509 | Heart failure, unspecified | ICD10 | 08162017 | 08032017 | 08162017 | 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1 | 1 | Approved | 14 | CPT | C4 |  |  |  | 3.0 |
| 06292017 | 2017-06-29T13:58:07+00:00 |  | 000069777-01 | BECKY | LLOYD | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629066 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08162017 | 08082017 | 08102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08032017 | 2017-08-03T09:21:24+00:00 | 025497503-7214 | 000071971-01 | Floyd | Swickard | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08022017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803014 | I509, L03818 | Cellulitis of other sites | ICD10 | 08162017 | 08022017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
