Feature: Run2 Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: Run2_EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-29_URGEMERG
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
| 01162018 | 2018-01-16T16:13:32+00:00 |  | 000031217-01 | KENNETH | SCHOOLEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116086 | I639 | Cerebral infarction, unspecified | ICD10 | 01292018 | 01182018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01122018 | 2018-01-12T16:18:18+00:00 |  | 000108617-01 | Emma | Guild | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115005 | I2510, I5031 | Acute diastolic (congestive) heart failure | ICD10 | 01292018 | 01112018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01152018 | 2018-01-15T01:01:49+00:00 |  | 000057902-01 | DENNIS | PRECHEL | OH HSP FOR PSYCHIATRY | 906239 |  | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115017 | F319 | Bipolar disorder, unspecified | ICD10 | 01292018 | 01142018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01172018 | 2018-01-17T09:14:09+00:00 |  | 000078714-01 | Katherine | Casterline | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117013 | I639 | Cerebral infarction, unspecified | ICD10 | 01292018 | 01162018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01172018 | 2018-01-17T11:30:35+00:00 |  | 000109165-01 | Bonnie | Gibson | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117042 | R4182 | Altered mental status, unspecified | ICD10 | 01292018 | 01162018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01182018 | 2018-01-18T11:56:23+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 01292018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118052 | E8342 | Hypomagnesemia | ICD10 | 01292018 | 01172018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01212018 | 2018-01-21T14:47:11+00:00 |  | 000115013-01 | Roger | Spangler | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122043 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01292018 | 01192018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01212018 | 2018-01-21T14:43:23+00:00 |  | 000089041-01 | Karen | Feisel | OHIOHEALTH PHYS GRP | 919466 | CHAD M | MILLER | 1467477901 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122044 | E870 | Hyperosmolality and hypernatremia | ICD10 | 01292018 | 01192018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01222018 | 2018-01-22T07:27:29+00:00 |  | 000106733-01 | Della | Alltop | OHIOHEALTH PHYS GRP | 935702 | TALAL T | ATTAR | 1457319402 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122051 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 01292018 | 01192018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T09:22:58+00:00 |  | 000079717-01 | Mary | Miller | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122080 | R05, R0602 | Shortness of breath | ICD10 | 01292018 | 01192018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01222018 | 2018-01-22T11:42:23+00:00 |  | 000084624-01 | Sharon | Bolen | LICKING MEM HLTH PROF | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122087 | I509 | Heart failure, unspecified | ICD10 | 01292018 | 01182018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T12:35:59+00:00 |  | 000108112-01 | JAMES | BUXTON | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01292018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01212018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122129 | F10239 | Alcohol dependence with withdrawal, unspecified | ICD10 | 01292018 | 01212018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01242018 | 2018-01-24T08:08:06+00:00 |  | 000117771-01 | Michael | Thimmes | SOUND INPATIENT PHYS OF | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01292018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124018 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01292018 | 01242018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01252018 | 2018-01-25T10:54:32+00:00 |  | 000004481-01 | LUCILLE | SPRADLIN | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125043 | I639 | Cerebral infarction, unspecified | ICD10 | 01292018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01272018 | 2018-01-27T11:11:13+00:00 |  | 000121026-01 | Charles | Nell | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01292018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01262018 | 01272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129002 | M25512 | Pain in left shoulder | ICD10 | 01292018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T09:41:08+00:00 |  | 000083741-01 | Paul | Peterson | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01292018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01292018 | 01172018 | 01192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01182018 | 2018-01-18T10:52:19+00:00 |  | 000096682-01 | Shirley | Moore | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118041 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 01292018 | 01172018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T13:17:44+00:00 |  | 000076303-01 | Shirley | Fox | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122115 | I214, R4182 | Altered mental status, unspecified | ICD10 | 01292018 | 01202018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T15:23:57+00:00 |  | 000044488-01 | JAMES | WILLIAMS | GARY L GILLEN MD | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01212018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122141 | I509, R188 | Other ascites | ICD10 | 01292018 | 01212018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01232018 | 2018-01-23T11:17:27+00:00 |  | 000120489-01 | Richard | Guseman | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123045 | K929 | Disease of digestive system, unspecified | ICD10 | 01292018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01232018 | 2018-01-23T11:58:45+00:00 |  | 000058306-01 | DARLA | NELSON | HMP OF PICKAWAY COUNTY L | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01202018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123057 | R079 | Chest pain, unspecified | ICD10 | 01292018 | 01202018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01232018 | 2018-01-23T12:44:01+00:00 |  | 000106129-01 | George | Mclin | PALMS OF PASADENA HOSPITAL | 929335 |  | PALMS OF PASADENA HOSPITAL | 1437591708 | PALMS OF PASADENA HOSPITAL | 929335 | 1437591708 | PALMS OF PASADENA HOSPITAL | 1437591708 | Inpatient | IP | Concurrent Review | CONC |  | PALMS OF PASADENA HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123061 | I480 | Paroxysmal atrial fibrillation | ICD10 | 01292018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01232018 | 2018-01-23T12:55:14+00:00 |  | 000020684-01 | ANNA | GAUTHIER | NEUROSCIENCE CENTER | 951551 | BRYAN M | GOUGH | 1962795963 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123062 | I63512 | Cereb infrc d/t unsp occls or stenos of left mid cereb art | ICD10 | 01292018 | 01222018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01232018 | 2018-01-23T13:42:21+00:00 |  | 000049202-01 | MARGARET | HENRY | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123068 | E875 | Hyperkalemia | ICD10 | 01292018 | 01222018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01242018 | 2018-01-24T07:52:38+00:00 |  | 000037946-01 | PETER | PALM | OSU INTERNAL MED LLC | 947934 | SAMY K | ATAYA | 1376986653 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124008 | K5660, R042 | Hemoptysis | ICD10 | 01292018 | 01232018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01242018 | 2018-01-24T09:01:14+00:00 |  | 000075919-01 | Mary | Gaffey | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124015 | I509 | Heart failure, unspecified | ICD10 | 01292018 | 01232018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01252018 | 2018-01-25T08:41:51+00:00 |  | 000054439-01 | CECIL | SMITH | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125024 | R4182 | Altered mental status, unspecified | ICD10 | 01292018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01252018 | 2018-01-25T08:47:48+00:00 |  | 000090099-01 | Elizabeth | Kusnierz | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125025 | I639 | Cerebral infarction, unspecified | ICD10 | 01292018 | 01242018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01262018 | 2018-01-26T09:26:21+00:00 |  | 000118894-01 | Michael | Hamm | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01292018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126017 | I2699, I472, R079 | Chest pain, unspecified | ICD10 | 01292018 | 01252018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01262018 | 2018-01-26T13:07:47+00:00 |  | 000029886-01 | CAROLINE | TURNER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01292018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 01292018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180126054 | S24109A | Unsp injury at unsp level of thoracic spinal cord, init | ICD10 | 01292018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01262018 | 2018-01-26T14:25:01+00:00 |  | 000086163-01 | Martha | Blanchard | MID STATE PHYSICIANS LLP | 921468 | AHMAD F | SABBAGH | 1528180825 | MEDCENTRAL HEALTH SYSTEM | 904842 | 1790837235 | MEDCENTRAL HEALTH SYSTEM | 1790837235 | Inpatient | IP | Concurrent Review | CONC |  | MEDCENTRAL HEALTH SYSTEM | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126055 | G459, R42 | Dizziness and giddiness | ICD10 | 01292018 | 01252018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01262018 | 2018-01-26T14:36:57+00:00 |  | 000118954-01 | Gary | Jenkins | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126061 | I10, I214, I25110, I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 01292018 | 01252018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01262018 | 2018-01-26T16:10:51+00:00 |  | 000080401-01 | Thomas | Vasbinder | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01252018 | 01262018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126074 | M86272, T8781 | Dehiscence of amputation stump | ICD10 | 01292018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01272018 | 2018-01-27T17:24:16+00:00 |  | 000065904-01 | DOLORES | KOONTZ | MOUNT CARMEL HLTH SYS | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01292018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01262018 | 01282018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129008 | K3189, K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 01292018 | 01262018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01282018 | 2018-01-28T12:01:13+00:00 |  | 000109486-01 | Gene | Gregg | COPC CENTRAL OHIO PRIMAR | 943501 | PAUL Y | HE | 1346502648 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01292018 | Approved | MediGold Essential Care | Fax | Secondary Only | Inpatient | 01262018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129018 | R531 | Weakness | ICD10 | 01292018 | 01262018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
