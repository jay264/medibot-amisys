Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-07_URGEMERG
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
| 08162017 | 2017-08-16T13:47:44+00:00 |  | 000106122-01 | WESLEY | RICHARDS | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816076 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 09072017 | 08152017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 08042017 | 2017-08-04T09:55:27+00:00 |  | 000110760-01 | DON | STATEN | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804029 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09072017 | 09062017 | 09072017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09052017 | 2017-09-05T15:49:27+00:00 |  | 000110923-01 | Janet | Miller | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 09072017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 09072017 | 09082017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170906002 | G9341, K8510 | BILIARY ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION | ICD10 | 09072017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09052017 | 2017-09-05T08:15:16+00:00 |  | 000086569-01 | John | Mcclanahan | APOGEE MED GRP OHIO INC | 945647 | RIDHWAN Y | BABA | 1225318397 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905108 | I509, J810 | Acute pulmonary edema | ICD10 | 09072017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T13:27:42+00:00 |  | 000065561-01 | DAVID | WEBB | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829038 | I509, J9601, R0602 | Shortness of breath | ICD10 | 09072017 | 08262017 | 08312017 | 94450 | BREATHING RESPONSE TO HYPOXIA | CPT | 0 | 1 |  | 6 | CPT | C4 |  |  |  | 5.0 |
| 09052017 | 2017-09-05T14:41:58+00:00 |  | 000034008-01 | JOHNIE | HENDERSON | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09012017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906095 | R109 | Unspecified abdominal pain | ICD10 | 09072017 | 09012017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T11:32:04+00:00 |  | 000029945-01 | MARY | GOOD | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09032017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906075 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 09072017 | 09032017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09072017 | 2017-09-07T07:53:33+00:00 |  | 000042551-01 | MELVYN | NOWELL | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09062017 | 09072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907001 | K4000 | Bi inguinal hernia, w obst, w/o gangrene, not spcf as recur | ICD10 | 09072017 | 09062017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08312017 | 2017-08-31T10:22:36+00:00 |  | 000106508-01 | Neale | Lemaster | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09072017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831030 | I639 | Cerebral infarction, unspecified | ICD10 | 09072017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T11:11:33+00:00 |  | 000116701-01 | Nancy | Lepley | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09072017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09022017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906070 | I959 | Hypotension, unspecified | ICD10 | 09072017 | 09022017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T12:35:42+00:00 | 251035097234 | 000000736-01 | MARY | STOCKDALE | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08222017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823020 | G9341, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 09072017 | 08222017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 09062017 | 2017-09-06T16:45:51+00:00 | 025366524-7244 | 000117338-01 | Wanita | Teagarden | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09072017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 09012017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906102 | K712 | Toxic liver disease with acute hepatitis | ICD10 | 09072017 | 09012017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07152017 | 2017-07-15T17:04:12+00:00 |  | 000117400-01 | Patricia | Hutchinson | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718045 | I639, J9601, M5412, R4182 | Altered mental status, unspecified | ICD10 | 09072017 | 07142017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T10:25:03+00:00 | 253939297245 | 000103240-01 | Michael | Evans Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905024 | L03818 | Cellulitis of other sites | ICD10 | 09072017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T14:34:54+00:00 |  | 000078724-01 | Joan | Rech | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09032017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906093 | C499, R531 | Weakness | ICD10 | 09072017 | 09032017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T10:33:02+00:00 | 179281047232 | 000032232-01 | MARTHA | ESSELSTEIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08202017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821046 | K3580 | Unspecified acute appendicitis | ICD10 | 09072017 | 08202017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 08312017 | 2017-08-31T12:15:40+00:00 | 025048530-7216 | 000045463-01 | RUTH | HUTT | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831052 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09072017 | 09062017 | 09072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09012017 | 2017-09-01T12:14:16+00:00 |  | 000089477-01 | Robert | Cowell | MERCY HEALTH PHYSICIANS | 921595 | RENU | KOTWAL | 1689788747 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 09072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08312017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901044 | F29, F3160 | Bipolar disorder, current episode mixed, unspecified | ICD10 | 09072017 | 08312017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09072017 | 2017-09-07T08:46:31+00:00 |  | 000085126-01 | Margaret | Hellmich | STEPHEN D HEISE MD & ASS | 923513 |  | STEPHEN D HEISE MD & ASSOCIATES INC | 1396835708 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 09072017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170907015 | M4806 | Spinal stenosis, lumbar region | ICD10 | 09072017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08292017 | 2017-08-29T10:59:03+00:00 |  | 000089339-01 | Margaret | Nichols | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829088 | N179 | Acute kidney failure, unspecified | ICD10 | 09072017 | 08252017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08292017 | 2017-08-29T08:09:05+00:00 |  | 000011863-01 | LESLIE | GATWOOD | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829060 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 09072017 | 08282017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09052017 | 2017-09-05T11:00:44+00:00 | 265543407245 | 000030990-01 | BURTON | LANE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905045 | A419 | Sepsis, unspecified organism | ICD10 | 09072017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T07:53:35+00:00 |  | 000042870-01 | ROBERT | NOBLE | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09022017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905102 | E118, G20, R079 | Chest pain, unspecified | ICD10 | 09072017 | 09022017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T09:41:57+00:00 | 251904977235 | 000049318-01 | JERRY | KOCHER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08232017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824012 | D6489 | Other specified anemias | ICD10 | 09072017 | 08232017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 08242017 | 2017-08-24T10:55:19+00:00 |  | 000083134-01 | JOHN | BEALL | DERALD MADSON MD INC | 919540 |  | DERALD MADSON MD INC | 1134229305 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170827002 | I70223 | Athscl native arteries of extrm w rest pain, bilateral legs | ICD10 | 09072017 | 08302017 | 09062017 | 35566 | FEMORAL GRAFT BELOW TRIFURCATION | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 4.0 |
| 09052017 | 2017-09-05T10:30:16+00:00 | 025189941-7246 | 000053155-01 | RICHARD | KEVAN | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905026 | L03818 | Cellulitis of other sites | ICD10 | 09072017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08302017 | 2017-08-30T15:22:46+00:00 |  | 000077229-01 | Larry | Reed | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830083 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09072017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T09:26:23+00:00 | 017144106-7242 | 000094637-01 | Sandra | Roby | CEN OH NEURO SURGEONS IN | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09072017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 09052017 | 09062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907011 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 09072017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
