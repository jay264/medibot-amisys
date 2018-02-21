Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-20_URGEMERG
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
| 01032018 | 2018-01-03T16:28:45+00:00 |  | 000027595-01 | JACQUELINE | SIZEMORE | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104036 | Q762 | Congenital spondylolisthesis | ICD10 | 02202018 | 02152018 | 02192018 | 22612, 20937, 22840, 63012, 22558, 22585 | ARTHDSIS ANT/ANTLATERAL/@ ADDTL SP | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 01292018 | 2018-01-29T14:54:54+00:00 |  | 000092655-01 | Susan | Vavrek | MOUNT CARMEL HLTH PRVDRS | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02162018 | 02192018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130025 | M4310, M48062 | M48062 | ICD10 | 02202018 | 02162018 | 02192018 | 63047, 22633, 22840, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 02122018 | 2018-02-12T18:47:26+00:00 |  | 000097978-01 | Sandra | Scott | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213042 | H5310 | Unspecified subjective visual disturbances | ICD10 | 02202018 | 02122018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02132018 | 2018-02-13T14:53:10+00:00 |  | 000045262-01 | JACQUELINE | EDWARDS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213103 | N179, N201 | Calculus of ureter | ICD10 | 02202018 | 02132018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02192018 | 2018-02-19T12:15:54+00:00 |  | 000114685-01 | Gloria | Fauss | MOUNT CARMEL HLTH PRVDRS | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219061 | E119, I10, M4712, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 02202018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T13:01:04+00:00 |  | 000077718-01 | Vincent | Brown | MIAMI VALLEY HSPISTS GRP | 947354 | NYI NYI | TUN | 1831444132 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207052 | E871, I639, R410 | Disorientation, unspecified | ICD10 | 02202018 | 02062018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02082018 | 2018-02-08T09:14:53+00:00 |  | 000094348-01 | Tracy | Pseekos | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02142018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208012 | E119, I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 02202018 | 02142018 | 02162018 | 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02092018 | 2018-02-09T09:27:36+00:00 |  | 000072413-01 | George | Kelly | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02152018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209019 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 02202018 | 02152018 | 02192018 | 31575, 31622, 43200, 38724 | CERVICAL LYMPHADENECTOMY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 02112018 | 2018-02-11T09:22:23+00:00 |  | 000003650-01 | RICHARD | HOPKINS | OHIOHEALTH PHYS GRP | 915369 | REBECCA K | ALEXANDER | 1659546786 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212041 | R001 | Bradycardia, unspecified | ICD10 | 02202018 | 02102018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T14:53:26+00:00 |  | 000116272-01 | Lowell | Tipton | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213016 | E1165, N179 | Acute kidney failure, unspecified | ICD10 | 02202018 | 02092018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02132018 | 2018-02-13T11:39:09+00:00 |  | 000084859-01 | Diane | Spurgeon | ADENA HEALTH SYSTEMS | 909480 | JINHONG | XING | 1841464369 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02202018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213107 | J159, N390, R0902 | Hypoxemia | ICD10 | 02202018 | 02122018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02142018 | 2018-02-14T14:11:45+00:00 |  | 000003555-01 | JACQUELINE | MCCALLISTER | OHIOHEALTH PHYS GRP | 919351 | SABREEN O | ABU OBAID | 1700026556 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214041 | R17 | Unspecified jaundice | ICD10 | 02202018 | 02132018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02162018 | 2018-02-16T11:04:05+00:00 |  | 000096973-01 | Suzanne | Backley | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02202018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216046 | I7101, I714, R079, R911, I160 | HYPERTENSIVE URGENCY | ICD10 | 02202018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T08:47:17+00:00 |  | 000120798-01 | N | Hamilton | CMH REGIONAL HLTH SYSTEM | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02182018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219020 | D649, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02202018 | 02182018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T16:07:10+00:00 |  | 000113186-01 | Donald | Lane | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 02202018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220027 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02202018 | 02152018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
