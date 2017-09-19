Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-13_URGEMERG
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
| 09012017 | 2017-09-01T10:20:09+00:00 |  | 000116942-01 | Charlotte | Staley | ONCOLOGY HEMATOLOGY CARE | 942906 | MARK E | JOHNS | 1407040884 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 09132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901037 | E860, R531 | Weakness | ICD10 | 09132017 | 08312017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09112017 | 2017-09-11T09:14:54+00:00 | 250037727252 | 000030282-01 | SHIRLEY | BOBO | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09092017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911020 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 09132017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09112017 | 2017-09-11T10:05:04+00:00 |  | 000103172-01 | John | Strickling | LICKING MEM HLTH PROF | 903542 | MICHAEL D | BARTH | 1326046541 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911098 | L03116 | Cellulitis of left lower limb | ICD10 | 09132017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09072017 | 2017-09-07T09:52:57+00:00 | 252428707249 | 000048384-01 | THEODORE | TAYLOR | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09062017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907020 | R05 | Cough | ICD10 | 09132017 | 09062017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09122017 | 2017-09-12T10:49:28+00:00 | 267947487254 | 000112789-01 | Douglas | Lee | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09132017 | Approved | MediGold Essential Care | Reports | ACO - Cardiology | Inpatient | 09112017 | 09132017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912029 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09132017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T14:42:13+00:00 | 265808327244 | 000118323-01 | Joseph | Klimonek | MOUNT CARMEL HLTH PRVDRS | 951957 | JOHN J | KELEMEN | 1871554212 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09012017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905085 | I63511 | Cereb infrc d/t unsp occls or stenos of right mid cereb art | ICD10 | 09132017 | 09012017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09112017 | 2017-09-11T09:35:38+00:00 | 251206717253 | 000066919-01 | PATTIE | WICKLIFFE | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 09102017 | 09122017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911028 | R079 | Chest pain, unspecified | ICD10 | 09132017 | 09102017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T10:37:08+00:00 | 263387347251 | 000031168-01 | VINCENT | NIZZO | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09082017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911049 | I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 09132017 | 09082017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09112017 | 2017-09-11T10:03:41+00:00 |  | 000095787-01 | Clara | Snyder | COLONNADE MED GRP INC | 900895 | TROY E | HAMPTON | 1275536377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911096 | J159 | Unspecified bacterial pneumonia | ICD10 | 09132017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T14:49:02+00:00 |  | 000033201-01 | DOROTHY | NICKELL | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09042017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907005 | M25559 | Pain in unspecified hip | ICD10 | 09132017 | 09042017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08072017 | 2017-08-07T14:37:30+00:00 |  | 000099518-01 | Lora | Antoine | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807098 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09132017 | 09112017 | 09122017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05262017 | 2017-05-26T09:23:19+00:00 |  | 000084220-01 | Betty | George | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05252017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170602107802.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526015 | D72829, N171, N390 | Urinary tract infection, site not specified | ICD10 | 09132017 | 05252017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09062017 | 2017-09-06T09:27:29+00:00 |  | 000093906-01 | George | Kirkbride | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907044 | J40 | Bronchitis, not specified as acute or chronic | ICD10 | 09132017 | 09052017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T09:43:37+00:00 | 252886027245 | 000103838-01 | Ronald | Burford | EMERGENCY SERVICES INC | 943211 | JONATHAN | TAYLOR | 1780976605 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09022017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905008 | K8020, M6281, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 09132017 | 09022017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09112017 | 2017-09-11T09:48:10+00:00 | 254554107253 | 000019104-01 | HELENE | GOLDMEIER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09092017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911032 | J910 | Malignant pleural effusion | ICD10 | 09132017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T09:57:04+00:00 |  | 000071036-01 | Dwight | Johnson | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08162017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814043 | I639 | Cerebral infarction, unspecified | ICD10 | 09132017 | 08162017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09072017 | 2017-09-07T17:34:54+00:00 |  | 000099788-01 | Lucille | Booth | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 09132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908036 | R0600 | Dyspnea, unspecified | ICD10 | 09132017 | 09062017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T14:52:24+00:00 | 025031947-7240 | 000072037-01 | Ronnie | Eblin | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830078 | I70212 | Athscl native arteries of extrm w intrmt claud, left leg | ICD10 | 09132017 | 09052017 | 09122017 | 35656, 35371 | ENDARTERECTOMY,COMMON FEMORAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 09082017 | 2017-09-08T15:27:09+00:00 |  | 000081584-01 | Michael | Yantes | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911067 | I249, R0602, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 09132017 | 09072017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09122017 | 2017-09-12T16:40:28+00:00 |  | 000118773-01 | Sherry | Reid | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 09182017 | 10182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170913003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09132017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 09112017 | 2017-09-11T11:02:55+00:00 | 251201577252 | 000057219-01 | JANET | WISE | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09092017 | 09122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911061 | I5020, J40, R0602 | Shortness of breath | ICD10 | 09132017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T09:19:19+00:00 |  | 000000705-01 | Gloria | Ross | OSU INTERNAL MED LLC | 948584 | ROHIT K | RAJ | 1558704593 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09022017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906036 | G9340 | Encephalopathy, unspecified | ICD10 | 09132017 | 09022017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08292017 | 2017-08-29T15:30:04+00:00 |  | 000086889-01 | Clifford | Shorkey | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 09112017 | 09122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829099 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 09132017 | 09112017 | 09122017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09072017 | 2017-09-07T14:57:13+00:00 |  | 000046174-01 | PAUL | BUSSEY | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908030 | E1142, I10, R4182 | Altered mental status, unspecified | ICD10 | 09132017 | 09062017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08282017 | 2017-08-28T07:58:17+00:00 |  | 000065626-01 | FRANK | HOLTER | OSU INTERNAL MED LLC | 949058 | IMRAN | RAFIQUE | 1134566508 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828005 | A419 | Sepsis, unspecified organism | ICD10 | 09132017 | 08262017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T16:26:06+00:00 | 025030331-7213 | 000115345-01 | PAUL | DONATO | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801004 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09132017 | 09112017 | 09132017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09072017 | 2017-09-07T15:50:38+00:00 |  | 000067125-01 | LAVILDA | ISAACS | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908034 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 09132017 | 08302017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09072017 | 2017-09-07T10:19:41+00:00 | 257644997249 | 000065474-01 | GARY | GLASS | MIAMI VALLEY HSPISTS GRP | 916447 | SEREF | BORNOVALI | 1508862244 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09062017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907031 | R140 | Abdominal distension (gaseous) | ICD10 | 09132017 | 09062017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09052017 | 2017-09-05T11:23:31+00:00 | 255960937245 | 000098836-01 | George | Claypool | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09022017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905053 | N179 | Acute kidney failure, unspecified | ICD10 | 09132017 | 09022017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09112017 | 2017-09-11T09:38:09+00:00 |  | 000060906-01 | WALTER | CULP | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09122017 | 09132017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911053 | K220 | Achalasia of cardia | ICD10 | 09132017 | 09122017 | 09132017 | 43279 | LAP MYOTOMY, HELLER | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09112017 | 2017-09-11T09:44:01+00:00 | 267045367252 | 000063542-01 | SHARON | FITZPATRICK | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09082017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911030 | I639 | Cerebral infarction, unspecified | ICD10 | 09132017 | 09082017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T11:42:26+00:00 | 252408067246 | 000072957-01 | Jeffrey | Swartz | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905058 | I639, R4182 | Altered mental status, unspecified | ICD10 | 09132017 | 09032017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08022017 | 2017-08-02T07:59:42+00:00 |  | 000112931-01 | DORA | YOUNKER | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802010 | C519 | Malignant neoplasm of vulva, unspecified | ICD10 | 09132017 | 09112017 | 09122017 | 56630, 14000 | REP DFCT TRUNK UP TO 10 SQ C | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09062017 | 2017-09-06T09:52:44+00:00 | 260166337248 | 000043086-01 | JAMES | ROBERTS | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09052017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906024 | D62, K922, R791 | Abnormal coagulation profile | ICD10 | 09132017 | 09052017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09032017 | 2017-09-03T16:52:12+00:00 |  | 000100080-01 | Dennis | Neumann | KALPANA VISHNUPAD LLC | 926769 |  | KALPANA VISHNUPAD LLC | 1225219272 | HAVEN BEHAVIORAL SRVS OF | 927026 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09022017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905084 | F411 | Generalized anxiety disorder | ICD10 | 09132017 | 09022017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T10:44:36+00:00 | 178432267251 | 000097397-01 | Barbara | Searles | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 09082017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911054 | J159 | Unspecified bacterial pneumonia | ICD10 | 09132017 | 09082017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09082017 | 2017-09-08T09:22:02+00:00 | 251847687251 | 000010612-01 | VIRGINIA | HOWARD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09082017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908013 | K625 | Hemorrhage of anus and rectum | ICD10 | 09132017 | 09082017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T11:31:32+00:00 |  | 000059279-01 | MINNIE | JONES | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09072017 | 09122017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908049 | R432 | Parageusia | ICD10 | 09132017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08312017 | 2017-08-31T09:56:07+00:00 |  | 000079396-01 | Sharon | Teal | GENESIS MEDICAL GRP LLC | 945643 | GRETCHEN L | WEBER | 1083848097 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08312017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831047 | K5669 | Other intestinal obstruction | ICD10 | 09132017 | 08312017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T08:22:03+00:00 |  | 000074313-01 | ALICE | HENDERLY | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908042 | R042 | Hemoptysis | ICD10 | 09132017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T11:08:52+00:00 |  | 000110317-01 | Deborah | Vaughn | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626081 | E6601, G4730, K219, M2550 | Pain in unspecified joint | ICD10 | 09132017 | 09112017 | 09132017 | 43644, 43282 | LAP PARAESOPH HER RPR W/MESH | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 09112017 | 2017-09-11T10:02:20+00:00 |  | 000106310-01 | Peggy | Tennyson | MOUNT CARMEL HLTH PRVDRS | 936382 | ANGELA A | EUBANKS | 1386681104 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911097 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09132017 | 09092017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
