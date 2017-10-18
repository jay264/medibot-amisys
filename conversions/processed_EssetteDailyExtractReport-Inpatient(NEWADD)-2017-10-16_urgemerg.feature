Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-16_URGEMERG
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
| 10092017 | 2017-10-09T10:04:12+00:00 | 257181057281 | 000030896-01 | GENEVA | BEE | SOUND INPATIENT PHYS OF | 941188 | ABDAL R | ALHYARI | 1205051570 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009041 | I82411 | Acute embolism and thrombosis of right femoral vein | ICD10 | 10162017 | 10082017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10052017 | 2017-10-05T10:26:41+00:00 | 254661097279 | 000056326-01 | BECKY | CHILCOTE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10042017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005028 | I4891 | Unspecified atrial fibrillation | ICD10 | 10162017 | 10042017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10112017 | 2017-10-11T11:05:14+00:00 |  | 000092239-01 | James | Peer | FAM PHYS OF SPRINGFIELD | 907238 | MICHAEL S | MCKEE | 1124043625 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10102017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011041 | E871, N289, S72144A | Nondisplaced intertrochanteric fracture of right femur, init | ICD10 | 10162017 | 10102017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10062017 | 2017-10-06T16:46:23+00:00 |  | 000046174-01 | PAUL | BUSSEY | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10062017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009049 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10162017 | 10062017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10162017 | 2017-10-16T08:21:53+00:00 |  | 000018086-01 | DORA LEE | ASKOFF | SOUND PHYSICIANS OF OHI0 | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 10152017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016010 | K920 | Hematemesis | ICD10 | 10162017 | 10152017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T11:47:55+00:00 |  | 000070407-01 | Kenneth | Weaver | RIVERSIDE TRAUMA SURGEON | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013041 | I10 | Essential (primary) hypertension | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T14:56:17+00:00 | 025660068-7286 | 000108122-01 | RONALD | GILLENWATER | SOUND PHYSICIANS OF OHI0 | 943369 | SAMVEL | NERSISYAN | 1184982357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 10132017 | 10142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013054 | K8080 | Other cholelithiasis without obstruction | ICD10 | 10162017 | 10132017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T11:01:08+00:00 |  | 000103313-01 | Janet | Littleton | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009095 | A045 | Campylobacter enteritis | ICD10 | 10162017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T09:45:06+00:00 | 264568277269 | 000056074-01 | LISA | LITTLE | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09262017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927021 | J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10162017 | 09262017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 10122017 | 2017-10-12T15:43:08+00:00 | 017983647-7285 | 000044103-01 | Carol | Tarbill | SOUND PHYSICIANS OF OHI0 | 943369 | SAMVEL | NERSISYAN | 1184982357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 10122017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012050 | G960 | Cerebrospinal fluid leak | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T09:05:24+00:00 | 267738967282 | 000081963-01 | Mark | Collison | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10082017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009011 | N1330, N179, N201 | Calculus of ureter | ICD10 | 10162017 | 10082017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10092017 | 2017-10-09T10:30:08+00:00 | 255372387280 | 000114138-01 | JACQUELINE | SCHULZE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10072017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009046 | S82009A | Unsp fracture of unsp patella, init for clos fx | ICD10 | 10162017 | 10072017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10132017 | 2017-10-13T11:50:13+00:00 |  | 000066021-01 | EDWARD | FILIPOWICZ | SOUND PHYSICIANS OF OHI0 | 932738 | SRIKANTH | KESARI | 1932487337 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10122017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013043 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 10162017 | 10122017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T10:09:13+00:00 |  | 000106429-01 | Clyde | Buckmaster | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009081 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 10162017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T08:29:41+00:00 |  | 000077265-01 | Duane | Watts | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10102017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011013 | L03031 | Cellulitis of right toe | ICD10 | 10162017 | 10102017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T09:35:42+00:00 | 255258657280 | 000016544-01 | FRANCIS | KRISTOFIC | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009026 | I509 | Heart failure, unspecified | ICD10 | 10162017 | 10082017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09192017 | 2017-09-19T11:42:48+00:00 | 251679757261 | 000098516-01 | JUDITH | WILSON | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09182017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919065 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 10162017 | 09182017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 36.0 |
| 10042017 | 2017-10-04T10:13:21+00:00 | 017495146-7276 | 000106235-01 | Joseph | Lariosa | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 10112017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004075 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 10162017 | 10112017 | 10152017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 09152017 | 2017-09-15T08:34:42+00:00 |  | 000088069-01 | Katherine | Davis | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09142017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915050 | E860, N289, R109 | Unspecified abdominal pain | ICD10 | 10162017 | 09142017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 09202017 | 2017-09-20T08:40:41+00:00 | 026261281-7249 | 000091271-01 | Stephen | Means | HOLLAND, GREGORY C | 936925 | GREGORY C | HOLLAND | 1316991268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10092017 | 10132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920039 | L98429 | Non-pressure chronic ulcer of back with unspecified severity | ICD10 | 10162017 | 10092017 | 10132017 | 11042, 14001 | DFCT 10-30 SQ CM TRUNK | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 09272017 | 2017-09-27T09:55:36+00:00 | 252469337270 | 000032161-01 | RICHARD | VANORDER | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 09272017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927030 | R0600 | Dyspnea, unspecified | ICD10 | 10162017 | 09272017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 09202017 | 2017-09-20T08:50:20+00:00 |  | 000090397-01 | Ida | Miller | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10162017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920012 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 10162017 | 09192017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T11:31:16+00:00 |  | 000005018-01 | Rick | Scott | COPC CENTRAL OHIO PRIMAR | 935067 | ROBERT F | WOLF | 1992781579 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 10122017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016055 | G939, I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 10162017 | 10122017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09212017 | 2017-09-21T10:17:48+00:00 |  | 000015428-01 | DONALD | MYERS | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921053 | N390, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 10162017 | 09202017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T08:44:26+00:00 |  | 000091900-01 | Albert | Schirmer | MERCY HEALTH PHYSICIANS | 921296 | PRASAD G | CHANDRA | 1063468312 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 10162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10162017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925043 | I472 | Ventricular tachycardia | ICD10 | 10162017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09202017 | 2017-09-20T10:06:39+00:00 | 252486207262 | 000011882-01 | BETTY | WHITE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10162017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920044 | K859 | Acute pancreatitis, unspecified | ICD10 | 10162017 | 09192017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T13:30:48+00:00 |  | 000097078-01 | Patricia | Layman | WILMINGTON PHYS GRP LLC | 946657 | RACHEL C | LOVANO | 1710128855 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10112017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928007 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 10162017 | 10112017 | 10142017 | 44160, 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:58:07+00:00 | 251172617281 | 000017854-01 | WANDA | TRAGER | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10082017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009038 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10162017 | 10082017 | 10142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10042017 | 2017-10-04T15:05:34+00:00 |  | 000017997-01 | LARRY | WALSH | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004069 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 10162017 | 10132017 | 10152017 | 61510, 61781 | SCAN PROC CRANIAL INTRA | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 10102017 | 2017-10-10T10:48:55+00:00 | 176987737282 | 000103684-01 | Paul | Woolison | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10102017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010030 | E872, E875, N179 | Acute kidney failure, unspecified | ICD10 | 10162017 | 10102017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:12:08+00:00 |  | 000104616-01 | Dennis | Sedwick | NEUROSCIENCE CENTER | 947785 | SHRADDHA | MAINALI | 1972733657 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10082017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009070 | R4701 | Aphasia | ICD10 | 10162017 | 10082017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10032017 | 2017-10-03T08:39:52+00:00 |  | 000007421-01 | CHARLES | NORTHINGTON | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10022017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003030 | L0390 | Cellulitis, unspecified | ICD10 | 10162017 | 10022017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10032017 | 2017-10-03T16:16:40+00:00 |  | 000072413-01 | George | Kelly | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09292017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003088 | J189 | Pneumonia, unspecified organism | ICD10 | 10162017 | 09292017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10142017 | 2017-10-14T14:41:10+00:00 |  | 000081912-01 | Kelly | Simmons | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 10162017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016096 | S52031G | Disp fx of olecran pro w intartic extn r ulna, 7thG | ICD10 | 10162017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09192017 | 2017-09-19T09:21:49+00:00 |  | 000089702-01 | Ruth | Pheneger | LICKING MEM HLTH PROF | 942536 | KEVIN M | OUWELEEN | 1598781460 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10092017 | 10142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919027 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 10162017 | 10092017 | 10142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 2.0 |
| 10122017 | 2017-10-12T09:25:13+00:00 | 267028757284 | 000116002-01 | HOWARD | FRY | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10112017 | 10162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012003 | N390, R7881 | Bacteremia | ICD10 | 10162017 | 10112017 | 10162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T16:24:45+00:00 |  | 000089624-01 | Joyce | Swihart | NORTH CEN OHIO FAM CARE | 916582 | SCOTT A | FOSTER | 1477719896 | AVITA ONTARIO HOSPITAL | 950818 | 1790131050 | AVITA ONTARIO HOSPITAL | 1790131050 | Inpatient | IP | Concurrent Review | CONC |  | AVITA ONTARIO HOSPITAL | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10102017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912018 | T8484XA | Pain due to internal orthopedic prosth dev/grft, init | ICD10 | 10162017 | 10102017 | 10122017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09252017 | 2017-09-25T17:59:57+00:00 |  | 000076581-01 | Patricia | Davenport | ALLIANCE PHYSICIANS INC | 948840 | RAGAVAN | NARAYANAN | 1205147030 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09242017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926002 | T148 | Other injury of unspecified body region | ICD10 | 10162017 | 09242017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 10092017 | 2017-10-09T14:49:39+00:00 |  | 000045673-01 | Mary | Elliott | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10082017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010035 | D649, K922, N179 | Acute kidney failure, unspecified | ICD10 | 10162017 | 10082017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10032017 | 2017-10-03T13:48:54+00:00 |  | 000099290-01 | Shirley | Obryan | FIRST DAYTON ORTHOPEDIST | 906839 | FRANK J | FASANO JR | 1073560447 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10112017 | 10132017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003069 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10162017 | 10112017 | 10132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10092017 | 2017-10-09T15:28:31+00:00 |  | 000111390-01 | Sherry | Mills | AAA STRESS ANXIETY & ADH | 933764 | SAHAJA | REDDY | 1609092998 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 10162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10062017 | 10132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010039 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 10162017 | 10062017 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
