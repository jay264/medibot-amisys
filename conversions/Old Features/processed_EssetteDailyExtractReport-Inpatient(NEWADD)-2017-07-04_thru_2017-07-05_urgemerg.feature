Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-04_thru_2017-07-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-04_thru_2017-07-05_URGEMERG
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
| 02212017 | 2017-02-21T14:24:26+00:00 |  | 000090887-01 | Lois | Roseberry | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07032017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170221120 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07052017 | 07032017 | 07052017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05042017 | 2017-05-04T09:06:21+00:00 |  | 000116534-01 | Raymond | Wanstrath | THE CHRIST HSP MED ASSOC | 944411 | JOSEPH R | DAGENBACH | 1205838109 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 07052017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05032017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170519104193.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508003 | I82220 | Acute embolism and thrombosis of inferior vena cava | ICD10 | 07052017 | 05032017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05152017 | 2017-05-15T12:52:15+00:00 |  | 000106522-01 | Carol | Gibson | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515087 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07052017 | 06192017 | 06222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 05192017 | 2017-05-19T11:25:59+00:00 | 025122581-7153 | 000107851-01 | Sheila | Wettling | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06302017 | 07042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519056 | M4310, M4806 | Spinal stenosis, lumbar region | ICD10 | 07052017 | 06302017 | 07042017 | 63047, 63048, 22633, 22853, 22840, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 05252017 | 2017-05-25T09:35:19+00:00 |  | 000081503-01 | Diana | Fisher | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525026 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07052017 | 06272017 | 06302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 05302017 | 2017-05-30T10:50:51+00:00 |  | 000105873-01 | Leah | Martin | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530110 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07052017 | 06262017 | 06282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06012017 | 2017-06-01T15:31:17+00:00 |  | 000091375-01 | Linda | Williams | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601073 | I2510, I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 07052017 | 06262017 | 07032017 | 33533, 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1, 1 | 1, 1 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 06022017 | 2017-06-02T10:40:19+00:00 |  | 000072146-01 | Joseph | Bova | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602050 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 07052017 | 06282017 | 07032017 | 47120, 47370 | LAPARO ABLATE LIVER TUMOR RF | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 06072017 | 2017-06-07T07:04:47+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU INTERNAL MED LLC | 932551 | JOHN W | CHRISTMAN | 1720027808 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607032 | A419, C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 07052017 | 06062017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06072017 | 2017-06-07T11:48:36+00:00 |  | 000051984-01 | DONALD | STAGG | VASCULAR SRVS OF OH INC | 935228 | PATRICK S | VACCARO | 1871540880 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607048 | I7410 | Embolism and thrombosis of unspecified parts of aorta | ICD10 | 07052017 | 06262017 | 07012017 | 35081 | ANEURYSM ABDOMINAL AORTA | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 2.0 |
| 06092017 | 2017-06-09T08:53:34+00:00 |  | 000108068-01 | Robert | James | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06262017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612004 | K118 | Other diseases of salivary glands | ICD10 | 07052017 | 06262017 | 07042017 | 42426, 42415, 15840, 15120, 38724, 15757, 64868, 67912, 67917, 64874, 64898, 15845, 21070 | CORONOIDECTOMY UNILATERAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 | CPT | C4 |  |  |  | 3.0 |
| 06132017 | 2017-06-13T07:20:11+00:00 |  | 000113549-01 | Ronald | Bering | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06292017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613005 | R220 | Localized swelling, mass and lump, head | ICD10 | 07052017 | 06292017 | 07022017 | 31525, 43200, 41135, 38724, 15120, 31600 | TRACHEOSTOMY | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06162017 | 2017-06-16T08:04:14+00:00 |  | 000059043-01 | THOMAS | TYLER | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616029 | T82858A | Stenosis of vascular prosth dev/grft, init | ICD10 | 07052017 | 06152017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T09:52:20+00:00 |  | 000048795-01 | SHIRLEY | NOWAK | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619030 | K922, R0600, R079, R197 | Diarrhea, unspecified | ICD10 | 07052017 | 06182017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06192017 | 2017-06-19T13:01:46+00:00 |  | 000009860-01 | LESTER | YODER | OSU HLTH SYSTEM NEUROSUR | 915394 | DIANA | GREENE-CHANDOS | 1083693477 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619110 | I639 | Cerebral infarction, unspecified | ICD10 | 07052017 | 06172017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06202017 | 2017-06-20T07:28:02+00:00 |  | 000084347-01 | GENEVIEVE | ROGERS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620014 | E860, E876, I959, R197 | Diarrhea, unspecified | ICD10 | 07052017 | 06192017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06212017 | 2017-06-21T10:50:44+00:00 | 251231267171 | 000040630-01 | Gerald | Will | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06202017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621025 | L03213 | PERIORBITAL CELLULITIS | ICD10 | 07052017 | 06202017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 06232017 | 2017-06-23T13:08:33+00:00 | 025662957-7174 | 000092175-01 | Craig | Jones | RALPH NAPOLITANO DPM LLC | 906537 | RALPH J | NAPOLITANO JR | 1831240795 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623051 | M869 | Osteomyelitis, unspecified | ICD10 | 07052017 | 06232017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 06262017 | 2017-06-26T10:24:38+00:00 | 251474777174 | 000033635-01 | HENRY | COUGHLIN II | COPC CENTRAL OHIO PRIMAR | 905860 | RICHARD A | FIKES | 1235176686 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626020 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 07052017 | 06232017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 06252017 | 2017-06-25T15:57:01+00:00 |  | 000118261-01 | Robert | Dittoe | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06242017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626054 | G441 | Vascular headache, not elsewhere classified | ICD10 | 07052017 | 06242017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T07:56:09+00:00 |  | 000088069-01 | Katherine | Davis | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06232017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626058 | E874, J810, N289, R0602 | Shortness of breath | ICD10 | 07052017 | 06232017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06262017 | 2017-06-26T10:50:27+00:00 |  | 000106172-01 | James | Linkhorn | HOSPITAL MEDICINE SERVIC | 945376 | LAKISHA D | JONES | 1932351434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06252017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626108 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 07052017 | 06252017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T13:09:11+00:00 |  | 000110694-01 | Margaret | Good | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626109 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 07052017 | 06302017 | 07032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06262017 | 2017-06-26T15:06:58+00:00 |  | 000113340-01 | ROBERT | MADDUX | BATTEN, WILLIAM H | 937179 | WILLIAM H | BATTEN | 1437124112 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06252017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626123 | N179, R109, R319 | Hematuria, unspecified | ICD10 | 07052017 | 06252017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T14:39:21+00:00 |  | 000050047-01 | DAVID | BEATY | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06252017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627006 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 07052017 | 06252017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06272017 | 2017-06-27T09:23:15+00:00 |  | 000045627-01 | HAZEL | RADABAUGH | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627059 | S12101A | Unsp nondisp fx of second cervical vertebra, init | ICD10 | 07052017 | 06272017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T09:48:11+00:00 |  | 000077898-01 | Willard | Hatfield | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06262017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627060 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 07052017 | 06262017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T09:48:01+00:00 |  | 000078102-01 | Charles | Young | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06262017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627061 | L03116 | Cellulitis of left lower limb | ICD10 | 07052017 | 06262017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T09:56:56+00:00 |  | 000074716-01 | James | Stewart | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06272017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627066 | R0600 | Dyspnea, unspecified | ICD10 | 07052017 | 06272017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T15:31:30+00:00 |  | 000039101-01 | DENNIS | JONES | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627107 | R410 | Disorientation, unspecified | ICD10 | 07052017 | 06262017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06272017 | 2017-06-27T15:52:53+00:00 |  | 000104147-01 | RAYMOND | SLASOR | L & P SERVICES INC | 922113 | DAVID P | HILL | 1073518114 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07052017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628006 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 07052017 | 06262017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T10:34:34+00:00 | 252198927178 | 000011848-01 | JOAN | PEARSON | HMP OF OHIO PC | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06282017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628028 | E860, E870, I4891, N179 | Acute kidney failure, unspecified | ICD10 | 07052017 | 06282017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06282017 | 2017-06-28T08:50:02+00:00 |  | 000045121-01 | Bessie | Bebout | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628058 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 07052017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T12:53:44+00:00 |  | 000095777-01 | Charles | Kramer | COMMUNITY HSPIST LLC | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628068 | I639, N19, R531 | Weakness | ICD10 | 07052017 | 06272017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06282017 | 2017-06-28T14:26:36+00:00 |  | 000117731-01 | Mark | Chaffin | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 07052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 07032017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628070 | F10239 | Alcohol dependence with withdrawal, unspecified | ICD10 | 07052017 | 06282017 | 07032017 | H0009 | ALCOHOL AND/OR DRUG SERVICES; ACUTE DETOXIFICATION (HOSPITAL INPATIENT) | HCPCS | 0 | 1 |  | 6 | HCPCS | HC |  |  |  | 5.0 |
| 06292017 | 2017-06-29T09:53:04+00:00 | 267945357179 | 000071534-01 | Thomas | Kevern | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07052017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 06282017 | 07052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629026 | N1330 | Unspecified hydronephrosis | ICD10 | 07052017 | 06282017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06292017 | 2017-06-29T08:31:41+00:00 |  | 000044951-01 | JOANNE | JUENGER | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629036 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07052017 | 06282017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06302017 | 2017-06-30T08:33:33+00:00 | 251408007180 | 000061181-01 | DARLENE | HAUGHN | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06292017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630004 | R0600 | Dyspnea, unspecified | ICD10 | 07052017 | 06292017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06302017 | 2017-06-30T07:03:11+00:00 |  | 000091069-01 | John | Young | OHIOHEALTH PHYS GRP | 909061 | RAJALAKSHMI | ESAKKY | 1942340849 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630008 | C61, R509 | Fever, unspecified | ICD10 | 07052017 | 06282017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T10:29:15+00:00 | 262697827181 | 000003892-01 | EVELYN | BEAL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06292017 | 07042017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630029 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 07052017 | 06292017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06302017 | 2017-06-30T14:44:59+00:00 |  | 000063732-01 | SUSAN | WALKER | LICKING MEM BEHAVIORAL H | 907573 | RICHARD N | WHITNEY | 1437157294 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630057 | F1020 | Alcohol dependence, uncomplicated | ICD10 | 07052017 | 06302017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07022017 | 2017-07-02T07:42:08+00:00 | 025146995-7182 | 000083057-01 | Thomas | Cox | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07012017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703003 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07052017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T09:12:26+00:00 | 255933917183 | 000022984-01 | GLORIA | BAUGESS | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07052017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 07022017 | 07042017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703009 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07052017 | 07022017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T10:00:36+00:00 | 257890917183 | 000080682-01 | Nolie | Houston Jr | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07052017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 07022017 | 07052017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703025 | I10 | Essential (primary) hypertension | ICD10 | 07052017 | 07022017 | 07052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T10:35:10+00:00 | 256032917183 | 000045250-01 | JOSEPHINE | CONFORTI | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07012017 | 07042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703040 | K8080 | Other cholelithiasis without obstruction | ICD10 | 07052017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T10:49:57+00:00 | 255458877182 | 000062032-01 | CAROL | PARKS | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07052017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 07012017 | 07042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703051 | K830 | Cholangitis | ICD10 | 07052017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T11:04:18+00:00 | 252043007182 | 000059289-01 | HARRIET | METTGE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07012017 | 07042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703063 | R51 | Headache | ICD10 | 07052017 | 07012017 | 07042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07032017 | 2017-07-03T08:19:58+00:00 |  | 000044488-01 | JAMES | WILLIAMS | HMP OF PICKAWAY COUNTY L | 911142 | JILL | BARNO | 1922030915 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 07052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703084 | R0902 | Hypoxemia | ICD10 | 07052017 | 06302017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
