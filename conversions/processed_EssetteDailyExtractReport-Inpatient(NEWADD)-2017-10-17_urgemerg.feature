Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-17_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-17_URGEMERG
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
| 10132017 | 2017-10-13T16:00:45+00:00 | 253481827286 | 000027123-01 | HARRY | HAPPE | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013065 | J159 | Unspecified bacterial pneumonia | ICD10 | 10172017 | 10132017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10132017 | 2017-10-13T15:54:55+00:00 | 255725457286 | 000036825-01 | NORMAN | PILKINGTON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013062 | N179 | Acute kidney failure, unspecified | ICD10 | 10172017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10122017 | 2017-10-12T10:42:45+00:00 |  | 000066667-01 | Walter | Gorrell | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012018 | J189 | Pneumonia, unspecified organism | ICD10 | 10172017 | 10112017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10122017 | 2017-10-12T11:19:03+00:00 |  | 000091122-01 | Linda | Hill | SOUND PHYSICIANS OF OHI0 | 947194 | KENNETH H | SURKIN | 1295050227 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012037 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 10172017 | 10112017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10022017 | 2017-10-02T11:46:49+00:00 |  | 000109356-01 | Nancy | Quilhot | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10172017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002091 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 10172017 | 10092017 | 10122017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10042017 | 2017-10-04T08:47:48+00:00 |  | 000099409-01 | Barbara | Winter | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10032017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004010 | M009 | Pyogenic arthritis, unspecified | ICD10 | 10172017 | 10032017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 10102017 | 2017-10-10T09:05:59+00:00 |  | 000084039-01 | Harold | Elkins | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010072 | R339 | Retention of urine, unspecified | ICD10 | 10172017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T14:37:02+00:00 |  | 000090891-01 | Robert | Harmon | MERCY HEALTH PHYSICIANS | 947497 | HERBERT M | BIEL | 1588699771 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 10172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925106 | M4310, M4800 | Spinal stenosis, site unspecified | ICD10 | 10172017 | 10092017 | 10152017 | 22612, 22614, 22840, 63047, 63048, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10112017 | 2017-10-11T11:06:22+00:00 |  | 000066658-01 | THELMA | KENNEY | CARDIOTHORACIC & VASC SU | 915420 | JEFFERSON M | LYONS | 1508085820 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011039 | R079 | Chest pain, unspecified | ICD10 | 10172017 | 10092017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10102017 | 2017-10-10T08:41:00+00:00 |  | 000050485-01 | JAMES | ROGERS | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010060 | I509 | Heart failure, unspecified | ICD10 | 10172017 | 10092017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10112017 | 2017-10-11T08:43:14+00:00 |  | 000046329-01 | DAVID | SWENSON | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011046 | E860, E871, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 10172017 | 10102017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10112017 | 2017-10-11T11:54:33+00:00 |  | 000077439-01 | Earl | Baylous | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011062 | A419 | Sepsis, unspecified organism | ICD10 | 10172017 | 10092017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10112017 | 2017-10-11T09:34:49+00:00 |  | 000097303-01 | James | Henderson | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011050 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10172017 | 10102017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T10:39:18+00:00 |  | 000093734-01 | Michael | Bland | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009084 | D649, R109, R112 | Nausea with vomiting, unspecified | ICD10 | 10172017 | 10082017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09282017 | 2017-09-28T09:16:29+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09282017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928033 | M6281 | Muscle weakness (generalized) | ICD10 | 10172017 | 09282017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10162017 | 2017-10-16T09:10:35+00:00 | 251930287286 | 000113454-01 | Virginia | Ziech | COLS INPATIENT CARE INC | 914979 | JORN | KAEVEL | 1275793150 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016031 | J939 | Pneumothorax, unspecified | ICD10 | 10172017 | 10132017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09292017 | 2017-09-29T11:08:44+00:00 |  | 000027164-01 | PATTI | JACKSON | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10162017 | 10172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929046 | N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 10172017 | 10162017 | 10172017 | 57110, 57210 | PERINEORRHAPHY-NON OBSTETRICAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10132017 | 2017-10-13T11:19:22+00:00 |  | 000069353-01 | JAMES | DRUMMOND | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10172017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 10162017 | 10172017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013030 | I70261 | Athscl native arteries of extremities w gangrene, right leg | ICD10 | 10172017 | 10162017 | 10172017 | 28810 | AMP METATARS W/TOE-W/W/O GRAFT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10122017 | 2017-10-12T09:53:32+00:00 |  | 000078780-01 | Robert | Strayer | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10172017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013021 | C792 | Secondary malignant neoplasm of skin | ICD10 | 10172017 | 10132017 | 10172017 | 32666, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 10132017 | 2017-10-13T12:58:11+00:00 |  | 000087802-01 | Karen | Martin | ALLIANCE PHYSICIANS INC | 951469 | AQUEEL H | PABANEY | 1275763591 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10132017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016122 | I482, I4891 | Unspecified atrial fibrillation | ICD10 | 10172017 | 10132017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08182017 | 2017-08-18T11:05:02+00:00 |  | 000115043-01 | Michael | Arehart | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 10172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08252017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818034 | J9602, N178 | Other acute kidney failure | ICD10 | 10172017 | 08252017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10162017 | 2017-10-16T16:08:21+00:00 |  | 000098559-01 | Diane | Nolan | UNIVERSITY OF CINCINNATI | 948685 | LAURA B | NGWENYA | 1316193642 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 10172017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10142017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017031 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 10172017 | 10142017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T16:06:22+00:00 | 017971636-7283 | 000093683-01 | Don | Funk | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10122017 | 10172017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011003 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10172017 | 10122017 | 10172017 | 31622, 32666, 32220, 32505 | WEDGE RESECT OF LUNG INITIAL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 6, 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 10162017 | 2017-10-16T09:45:52+00:00 | 251756847288 | 000015176-01 | RALPH | HOFFMAN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 10152017 | 10172017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016040 | J441, N179 | Acute kidney failure, unspecified | ICD10 | 10172017 | 10152017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T09:46:24+00:00 | 025059301-7276 | 000107923-01 | Rosella | Jarvis | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004070 | M1611, S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 10172017 | 10162017 | 10162017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10172017 | 2017-10-17T10:18:43+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant | IN TRPLNT | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10172017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 10232017 | 12232017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171017059 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10172017 |  |  | 38240, 96412, 36558, 76937, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62 | HCPCS | HC |  |  | No child records to display. |  |
| 10102017 | 2017-10-10T15:26:49+00:00 |  | 000059558-01 | ROY | COFFEY | DELPHI INTENSIVISTS CNSL | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 936152 | 0 | DOCTORS HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10102017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011037 | E8351 | Hypocalcemia | ICD10 | 10172017 | 10102017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10102017 | 2017-10-10T11:20:13+00:00 |  | 000100950-01 | Michael | Hook | OSU SURGERY LLC | 920262 | ALAN E | HARZMAN | 1497964084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 10302017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171016108 | N321 | Vesicointestinal fistula | ICD10 | 10172017 |  |  | 45110, 51590 | CYSTECTOMY AND BRICKER | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 09252017 | 2017-09-25T16:26:05+00:00 |  | 000051158-01 | PALESTINE | MOORE | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926072 | S72002K | Fx unsp part of neck of l femur, subs for clos fx w nonunion | ICD10 | 10172017 | 10092017 | 10172017 | 27132 | CONV PREV HIP TO TOTAL HIP | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 10022017 | 2017-10-02T08:35:54+00:00 |  | 000069899-01 | Russell | Karlen III | MOUNT CARMEL HLTH PRVDRS | 910318 | ELIZABETH A | KRALL | 1275759631 | MOUNT CARMET WEST | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 10172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09292017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002073 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 10172017 | 09292017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T15:09:50+00:00 |  | 000101375-01 | James | Keaton | TRI HLTH HEART INSTITUTE | 914193 | SIMON C | JUNG | 1992708556 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 10172017 | Approved | MediGold Classic Preferred | Mail | Inpatient | Inpatient | 05312017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017071 | R079 | Chest pain, unspecified | ICD10 | 10172017 | 05312017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10132017 | 2017-10-13T08:01:27+00:00 |  | 000091391-01 | Olive | Adkins | HOSPITALIST ASSOC LLC | 907558 | GEOFFREY M | POLEN | 1942268107 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10172017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10122017 | 10172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013024 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 10172017 | 10122017 | 10172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10102017 | 2017-10-10T09:51:07+00:00 |  | 000087845-01 | Larry | Taylor | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10172017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010091 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10172017 | 10092017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
