Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_URGEMERG
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
| 02052018 | 2018-02-05T09:35:41+00:00 |  | 000026970-01 | MARY | NELSON | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205087 | J189 | Pneumonia, unspecified organism | ICD10 | 02082018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02032018 | 2018-02-03T15:13:43+00:00 |  | 000015266-01 | DOUGLAS | COTTERMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02022018 | 02072018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205018 | I340, I4891, I5041, S8011XA | Contusion of right lower leg, initial encounter | ICD10 | 02082018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T09:52:08+00:00 |  | 000104961-01 | Walter | Bakenhaster | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02052018 | 02072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206041 | R310 | Gross hematuria | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T17:48:09+00:00 |  | 000083595-01 | Gail | Rowat | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108010 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02082018 | 02062018 | 02072018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01052018 | 2018-01-05T18:05:44+00:00 |  | 000095881-01 | Linda | Gannon | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108012 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02082018 | 02062018 | 02072018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01112018 | 2018-01-11T12:28:44+00:00 |  | 000029886-01 | CAROLINE | TURNER | MOUNT CARMEL HLTH PRVDRS | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111057 | D321 | Benign neoplasm of spinal meninges | ICD10 | 02082018 | 01232018 | 02072018 | 63266, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1 | 1, 1 | Approved, Approved | 16, 16 | CPT | C4 |  |  |  | 15.0 |
| 01172018 | 2018-01-17T11:01:01+00:00 |  | 000041162-01 | KENNETH | MCKENZIE | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117030 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02082018 | 02062018 | 02072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01212018 | 2018-01-21T14:19:12+00:00 |  | 000016738-01 | SONDRA | WHITT | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122042 | D649 | Anemia, unspecified | ICD10 | 02082018 | 01202018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 01212018 | 2018-01-21T14:30:12+00:00 |  | 000012896-01 | Freda | Tippie | OSU FAMILY PRACTICE SVCS | 949191 | BHAVESH | PATEL | 1831534957 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122046 | I350, I509 | Heart failure, unspecified | ICD10 | 02082018 | 01192018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 12132017 | 2017-12-13T13:21:57+00:00 |  | 000036911-01 | JOHN | MOORE | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213095 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02082018 | 02062018 | 02072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01232018 | 2018-01-23T18:01:40+00:00 |  | 000043086-01 | JAMES | ROBERTS | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124006 | I509, R0902 | Hypoxemia | ICD10 | 02082018 | 01222018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 01292018 | 2018-01-29T08:39:43+00:00 |  | 000090684-01 | Richard | Brewer | HOSPITALIST MEDICINE PHY | 925204 | AMITKUMAR M | PATEL | 1720231897 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129032 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 02082018 | 01282018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T10:18:28+00:00 |  | 000077408-01 | Sallie | Dixon | ONCOLOGY HEMATOLOGY CARE | 921712 | KARYN M | DYEHOUSE | 1649297094 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01312018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131033 | N179, R531 | Weakness | ICD10 | 02082018 | 01312018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T10:21:42+00:00 |  | 000037348-01 | DAVID | HEISERMAN | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201031 | I509, J90, R0602 | Shortness of breath | ICD10 | 02082018 | 01312018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02022018 | 2018-02-02T15:43:01+00:00 |  | 000113104-01 | Leona | Harper | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202060 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 02082018 | 02062018 | 02072018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02022018 | 2018-02-02T18:53:17+00:00 |  | 000030469-01 | IONA | WEST | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205004 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02082018 | 02012018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02052018 | 2018-02-05T15:12:13+00:00 |  | 000079564-01 | Susan | Swan | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206004 | E785, R188 | Other ascites | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T11:22:16+00:00 |  | 000071892-01 | Alice | Dillman | NEUROSCIENCE CENTER | 937422 |  | NEUROSCIENCE CENTER | 1962431817 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 02072018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104082 | M4120, M419 | Scoliosis, unspecified | ICD10 | 02082018 | 01232018 | 02072018 | 63045, 22600, 22614, 20931, 22840, 22842, 22630, 63047, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 16, 16, 16, 16, 16, 16, 16, 16, 16 | HCPCS | HC |  |  |  | 6.0 |
| 01222018 | 2018-01-22T10:12:07+00:00 |  | 000100934-01 | Kevin | Knight | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122069 | R001 | Bradycardia, unspecified | ICD10 | 02082018 | 01222018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01232018 | 2018-01-23T10:51:13+00:00 |  | 000119848-01 | William | Baker | OHIOHEALTH PHYS GRP | 904967 | GREGORY W | BALTURSHOT | 1043216724 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02082018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 01212018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123021 | R6889 | Other general symptoms and signs | ICD10 | 02082018 | 01212018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T10:43:56+00:00 |  | 000086915-01 | Eddie | Conduff | KETTERING CARDIOTHORACIC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126069 | C3412, R05, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 02082018 | 02022018 | 02072018 | 32505, 32480, 32440 | TOTAL PNEUMONECTOMY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 01292018 | 2018-01-29T11:57:03+00:00 |  | 000110920-01 | Vernon | Branham | ALLIANCE PHYSICIANS INC | 947070 | CHRISTOPHER | MANHART | 1508191354 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01272018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130002 | I2111, I213, I249, R0789 | Other chest pain | ICD10 | 02082018 | 01272018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02022018 | 2018-02-02T08:29:33+00:00 |  | 000090522-01 | Darline | Lukehart | MERCY HEALTH PHYSICIANS | 921203 | DAVID | WARD | 1063469443 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202007 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 02082018 | 02012018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T14:10:50+00:00 |  | 000116573-01 | Clarence | Ross | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202050 | Z856 | Personal history of leukemia | ICD10 | 02082018 | 02012018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02032018 | 2018-02-03T18:17:05+00:00 |  | 000008209-01 | MARY | SWARMER | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205010 | E860, N179 | Acute kidney failure, unspecified | ICD10 | 02082018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T09:58:15+00:00 |  | 000121112-01 | Denise | Aliff | DUENO, OTTO R | 902688 | OTTO R | DUENO | 1467447623 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 02082018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205072 | F0281, F333 | Major depressv disorder, recurrent, severe w psych symptoms | ICD10 | 02082018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T13:37:23+00:00 |  | 000101891-01 | Judith | Grubba | COLS INPATIENT CARE INC | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02042018 | 02072018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205106 | J441, R0602 | Shortness of breath | ICD10 | 02082018 | 02042018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T16:31:03+00:00 |  | 000029997-01 | LARRY | MATTES | OSU PHYSICAL MED LLC | 915280 | VELMIR | MATKOVIC | 1073604542 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02082018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 02082018 | 02092018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180207005 | I214, T83592A | I/I REACT D/T INDWELLING URETERAL STENT, INITIAL ENCOUNTER | ICD10 | 02082018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01262018 | 2018-01-26T10:55:25+00:00 |  | 000091425-01 | Glennard | Fildes | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01252018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126028 | A419, D72825, L03115 | Cellulitis of right lower limb | ICD10 | 02082018 | 01252018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01312018 | 2018-01-31T12:43:58+00:00 |  | 000040701-01 | RICHARD | LONG | OHIOHEALTH PHYS GRP | 927071 | MAYSA | EL-SAYYID | 1962638122 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131068 | R296 | Repeated falls | ICD10 | 02082018 | 01302018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02012018 | 2018-02-01T11:45:19+00:00 |  | 000102723-01 | Nelle | Cotton | THE CHRIST HSP MED ASSOC | 929475 | SEAN | BOYLE | 1992025969 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201043 | J189 | Pneumonia, unspecified organism | ICD10 | 02082018 | 01312018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02012018 | 2018-02-01T14:31:05+00:00 |  | 000120526-01 | Jimmy | Walker | BLUERIDGE VISTA HEALTH A | 949112 |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | BLUERIDGE VISTA HEALTH A | 949112 | 1053784454 | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 02082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201053 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 02082018 | 02012018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02062018 | 2018-02-06T14:15:06+00:00 |  | 000104648-01 | Robert | Kishler | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02052018 | 02072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206059 | C61 | Malignant neoplasm of prostate | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T16:24:52+00:00 |  | 000059565-01 | PAUL | ODUM | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02062018 | 02072018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207018 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02082018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T13:29:32+00:00 |  | 000090815-01 | Harold | Bartley | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02082018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180207058 | I639 | Cerebral infarction, unspecified | ICD10 | 02082018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02082018 | 2018-02-08T09:01:08+00:00 |  | 000092889-01 | Valentina | Pinkerton | ORTHO & NEURO CONSULTS I | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02082018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02062018 | 02072018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208006 | G8918, J9589 | Oth postproc complications and disorders of resp sys, NEC | ICD10 | 02082018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T16:25:04+00:00 |  | 000080412-01 | Mary | Roddy | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208011 | C229 | Malig neoplasm of liver, not specified as primary or sec | ICD10 | 02082018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
