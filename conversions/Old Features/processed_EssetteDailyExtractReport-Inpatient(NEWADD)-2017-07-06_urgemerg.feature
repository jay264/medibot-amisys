Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-06_URGEMERG
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
| 06052017 | 2017-06-05T11:33:48+00:00 |  | 000052582-01 | BEVERLY | MARRIOTT | OSU INTERNAL MED LLC | 943364 | NATHAN R | WRIGHT | 1376837005 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605089 | G9340 | Encephalopathy, unspecified | ICD10 | 07062017 | 06022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06082017 | 2017-06-08T12:44:35+00:00 | 025125250-7164 | 000066286-01 | MARGARET | LOTZ | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 07052017 | 07052017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608057 | M40209 | Unspecified kyphosis, site unspecified | ICD10 | 07062017 | 07052017 | 07052017 | 22852, 22830 | EXPLORATION OF SPINAL FUSION | CPT | 1, 1 | 1, 1 | Approved, Approved | 1, 1 | CPT | C4 |  |  |  | 1.0 |
| 06142017 | 2017-06-14T14:11:38+00:00 |  | 000087526-01 | Thomas | Ricketts | FAM PHYS OF SPRINGFIELD | 947836 | KATHLEEN J | OXNER | 1649512138 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614052 | I5023, I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 07062017 | 06132017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06162017 | 2017-06-16T08:46:47+00:00 |  | 000068141-01 | Ann | Bauer | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616015 | R109 | Unspecified abdominal pain | ICD10 | 07062017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06192017 | 2017-06-19T10:45:18+00:00 |  | 000083868-01 | Stephen | Thomas | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07022017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619053 | I739, I779 | Disorder of arteries and arterioles, unspecified | ICD10 | 07062017 | 06302017 | 07022017 | 35556 | BYPASS GR, VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06192017 | 2017-06-19T08:04:15+00:00 |  | 000077823-01 | Susan | Freyhof | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 07062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619084 | I509, R0602 | Shortness of breath | ICD10 | 07062017 | 06182017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06202017 | 2017-06-20T14:20:32+00:00 |  | 000078909-01 | Rose | Mcfarland | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06202017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620107 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 07062017 | 06202017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06222017 | 2017-06-22T14:26:38+00:00 |  | 000104609-01 | Arnold | Brunotte | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622059 | I2510, J810, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07062017 | 06192017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T15:49:25+00:00 |  | 000066373-01 | HOWARD | FRENCH | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07062017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06242017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627023 | R112, R197 | Diarrhea, unspecified | ICD10 | 07062017 | 06242017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06282017 | 2017-06-28T09:01:05+00:00 | 175819797178 | 000018298-01 | JAMES | BERRY JR | HMP OF OHIO PC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06272017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628005 | K5669 | Other intestinal obstruction | ICD10 | 07062017 | 06272017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06282017 | 2017-06-28T09:26:56+00:00 | 263160667179 | 000002472-01 | JOHN | MUNCY | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06282017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628009 | R0600 | Dyspnea, unspecified | ICD10 | 07062017 | 06282017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06282017 | 2017-06-28T14:16:24+00:00 |  | 000078197-01 | John | Allen | MILNE & MCKENZIE ASSOC L | 911714 | C DEAN | MILNE | 1396763587 | VALLEY HOSPITAL MEDICAL CENTER | 936258 | 1417947490 | VALLEY HOSPITAL MEDICAL CENTER | 1417947490 | Inpatient | IP | Concurrent Review | CONC |  | VALLEY HOSPITAL MEDICAL CENTER | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628077 | G463 | Brain stem stroke syndrome | ICD10 | 07062017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T12:31:59+00:00 |  | 000085766-01 | Richard | Boyer | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629058 | R4182, R6521 | Severe sepsis with septic shock | ICD10 | 07062017 | 06282017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06292017 | 2017-06-29T16:15:07+00:00 |  | 000115004-01 | Thomas | Stevens | TAWAS ST JOSEPH HOSPITAL | 951393 |  | TAWAS ST JOSEPH HOSPITAL | 1194713461 | TAWAS ST JOSEPH HOSPITAL | 951393 | 1194713461 | TAWAS ST JOSEPH HOSPITAL | 1194713461 | Inpatient | IP | Concurrent Review | CONC |  | TAWAS ST JOSEPH HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629091 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07062017 | 06282017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T06:57:10+00:00 |  | 000050253-01 | JOHN | TURNER | HMP OF OHIO PC | 924167 | JONG H | LEE | 1093961120 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07062017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 06292017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630006 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07062017 | 06292017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T08:49:26+00:00 |  | 000101936-01 | Janice | Henery | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630014 | L03115 | Cellulitis of right lower limb | ICD10 | 07062017 | 06292017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06302017 | 2017-06-30T09:56:45+00:00 |  | 000109246-01 | FRANCES | OHDE | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06292017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630025 | R079 | Chest pain, unspecified | ICD10 | 07062017 | 06292017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06302017 | 2017-06-30T13:03:31+00:00 |  | 000037062-01 | RUBY | UNGER | ST VINCENT MEDICAL CENTER | 936851 |  | ST VINCENT MEDICAL CENTER | 1316186315 | ST VINCENT MEDICAL CENTER | 936851 | 1316186315 | ST VINCENT MEDICAL CENTER | 1316186315 | Inpatient | IP | Concurrent Review | CONC |  | ST VINCENT MEDICAL CENTER | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630045 | R569 | Unspecified convulsions | ICD10 | 07062017 | 06292017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T09:47:04+00:00 |  | 000076555-01 | Victor | Duff | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703072 | I509 | Heart failure, unspecified | ICD10 | 07062017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T09:18:30+00:00 |  | 000028216-01 | RALPH | FRANKLIN | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07012017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703099 | I509, J189, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 07062017 | 07012017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07032017 | 2017-07-03T11:52:21+00:00 |  | 000060710-01 | HILDA | MYERS | CENTRAL OH HSPISTS INC | 927695 | DIANA | GOLUB | 1275852618 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07022017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703120 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07062017 | 07022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T13:17:24+00:00 |  | 000104147-01 | RAYMOND | SLASOR | SOUND KENWOOD HSPISTS OF | 928796 | KERRY A | LECKY | 1396952651 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703124 | G9349, J690, R456 | Violent behavior | ICD10 | 07062017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07052017 | 2017-07-05T09:33:05+00:00 | 259193047185 | 000112063-01 | Helen | Drum | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705007 | A419, K5669, K921 | Melena | ICD10 | 07062017 | 07052017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T10:13:03+00:00 |  | 000114254-01 | Kathleen | Smith | LICKING MEM INPATIENT ME | 919278 | FOLARIN K | SOGBETUN | 1356536882 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 07062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170705030 | S72012A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07062017 | 07032017 | 07062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07052017 | 2017-07-05T13:41:37+00:00 |  | 000075590-01 | Roberta | Savage | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706002 | I200 | Unstable angina | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07052017 | 2017-07-05T18:58:54+00:00 |  | 000116567-01 | UNA | MERSHON | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | GRAYS HARBOR COMMUNITY H | 951224 | 1154378859 | GRAYS HARBOR COMMUNITY HOSPITAL | 1154378859 | Inpatient | IP | Concurrent Review | CONC |  | GRAYS HARBOR COMMUNITY HOSPITAL | 07062017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04272017 | 04302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706003 | E785, I10, M79605, S32592A | Oth fracture of left pubis, init encntr for closed fracture | ICD10 | 07062017 | 04272017 | 04302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07062017 | 2017-07-06T08:21:11+00:00 |  | 000097898-01 | Victor | Edwards | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07062017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 07032017 | 07052017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706004 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 07062017 | 07032017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
