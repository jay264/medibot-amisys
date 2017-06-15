Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-14_URGEMERG
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
| 03162017 | 2017-03-16T15:04:53+00:00 | 025080608-7076 | 000058012-01 | CAROL | MARIK | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170316068 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06142017 | 06122017 | 06142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03272017 | 2017-03-27T09:37:54+00:00 |  | 000078183-01 | William | Knight | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03262017 | 04032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080873.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170327161 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 06142017 | 03262017 | 04032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272017 | 2017-04-27T08:24:55+00:00 |  | 000028856-01 | PATRICIA | CHESTER | HMP OF OHIO PC | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04262017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427006 | R571 | Hypovolemic shock | ICD10 | 06142017 | 04262017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 48.0 |
| 05042017 | 2017-05-04T12:25:31+00:00 |  | 000029909-01 | BERNICE | HURD | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504045 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 06142017 | 06132017 | 06142017 | 27447, 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05212017 | 2017-05-21T11:54:28+00:00 |  | 000106363-01 | Arthur | Williams | OHIOHEALTH PHYS GRP | 943787 | VINEET | BHASKER | 1942594502 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05202017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522012 | R0600 | Dyspnea, unspecified | ICD10 | 06142017 | 05202017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05232017 | 2017-05-23T11:51:22+00:00 |  | 000073058-01 | Raymond | Duncanson | MOUNT CARMEL HLTH SYS | 905652 | MARIA H | MAPA | 1982620753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05232017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523050 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06142017 | 05232017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 05232017 | 2017-05-23T10:48:31+00:00 |  | 000083452-01 | Margaret | Hart | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523053 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06142017 | 06132017 | 06142017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05242017 | 2017-05-24T16:29:24+00:00 |  | 000104863-01 | Ethel | Donley | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06142017 | 06132017 | 06142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05262017 | 2017-05-26T14:49:41+00:00 |  | 000063275-01 | ELMER | GORDON | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526077 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06142017 | 06132017 | 06142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05302017 | 2017-05-30T09:36:57+00:00 | 025319471-7146 | 000115002-01 | Marcie | McKittrick | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530033 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 06142017 | 06132017 | 06142017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05302017 | 2017-05-30T09:32:52+00:00 |  | 000113202-01 | Martha | Moore | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05302017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530039 | I6201, S065X9A | Traum subdr hem w LOC of unsp duration, init | ICD10 | 06142017 | 05302017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T10:20:48+00:00 |  | 000086768-01 | Terry | Hill | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530147 | I711 | Thoracic aortic aneurysm, ruptured | ICD10 | 06142017 | 05282017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05312017 | 2017-05-31T06:35:52+00:00 | 017739683-7125 | 000089028-01 | Bobby | Reynolds | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06142017 | 06122017 | 06132017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05312017 | 2017-05-31T09:35:49+00:00 |  | 000061601-01 | WALLACE | WRIGHT JR | OSU HLTH SYS ORTHO ONC P | 911790 | THOMAS J | SCHARSCHMIDT | 1639399918 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531019 | C4912, D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 06142017 | 06082017 | 06132017 | 20251, 63005, 63017 | LAMINECTOMY, EXTENSIVE, LUMBAR | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 06012017 | 2017-06-01T13:35:32+00:00 | 017105042-7152 | 000092186-01 | Timothy | Thompson | ORTHO ASSOC OF ZANESVILL | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06142017 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 06132017 | 06142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601063 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 06142017 | 06132017 | 06142017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06052017 | 2017-06-05T10:22:07+00:00 |  | 000022192-01 | HELEN | GEORGE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06032017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605044 | J159 | Unspecified bacterial pneumonia | ICD10 | 06142017 | 06032017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T15:37:13+00:00 |  | 000067617-01 | RAOLA | KUHNIMHOF | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 06052017 | 06142017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605127 | J189, J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06142017 | 06052017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06052017 | 2017-06-05T15:59:23+00:00 |  | 000014360-01 | Margaret | Speaks | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605132 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06142017 | 06122017 | 06142017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06062017 | 2017-06-06T07:33:29+00:00 |  | 000034701-01 | LEON | HALE | MOUNT CARMEL HLTH SYS | 905652 | MARIA H | MAPA | 1982620753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 06052017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606002 | R4182 | Altered mental status, unspecified | ICD10 | 06142017 | 06052017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06062017 | 2017-06-06T08:44:41+00:00 |  | 000024843-01 | JANEEN | HUFF | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06062017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606014 | I480 | Paroxysmal atrial fibrillation | ICD10 | 06142017 | 06062017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06072017 | 2017-06-07T08:32:40+00:00 |  | 000043355-01 | DOW | CISCO JR | HMP OF OHIO PC | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06072017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607017 | J159 | Unspecified bacterial pneumonia | ICD10 | 06142017 | 06072017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06072017 | 2017-06-07T08:41:38+00:00 |  | 000023881-01 | OTHO | KIDDER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607022 | N178 | Other acute kidney failure | ICD10 | 06142017 | 06062017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06072017 | 2017-06-07T09:54:05+00:00 | 026419240-7157 | 000048152-01 | MICHAEL | SIVICK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06072017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607036 | J159 | Unspecified bacterial pneumonia | ICD10 | 06142017 | 06072017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06072017 | 2017-06-07T14:19:25+00:00 | 016987668-7089 | 000093716-01 | Nancy | Magargal | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06142017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06122017 | 06132017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607075 | M25512 | Pain in left shoulder | ICD10 | 06142017 | 06122017 | 06132017 | 23472, 23420, 23440, 23030, 23395 | MUSCLE TRNSFR SHLDR UPPER ARM SNGL | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06072017 | 2017-06-07T15:32:15+00:00 | 025054464-7159 | 000057424-01 | HELEN | HOWARD | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06122017 | 06142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607079 | S71002D | Unspecified open wound, left hip, subsequent encounter | ICD10 | 06142017 | 06122017 | 06142017 | 10141 | INCISION AND DRAINAGE OF HEMATOMA; COMPLICATED | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06082017 | 2017-06-08T10:46:48+00:00 | 026575003-7153 | 000066554-01 | ROBERT | ABBOTT | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608039 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06142017 | 06092017 | 06142017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 06082017 | 2017-06-08T10:56:56+00:00 |  | 000070159-01 | Loretta | Nelson | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608042 | J189 | Pneumonia, unspecified organism | ICD10 | 06142017 | 06072017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06082017 | 2017-06-08T14:30:24+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608060 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06142017 | 06072017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T09:14:14+00:00 | 265313117159 | 000052599-01 | NANCY | FOLK | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06082017 | 06132017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609006 | R0602 | Shortness of breath | ICD10 | 06142017 | 06082017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06092017 | 2017-06-09T07:50:18+00:00 |  | 000100070-01 | Lucian | Thompson | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06142017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609030 | I4891 | Unspecified atrial fibrillation | ICD10 | 06142017 | 06082017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T14:00:49+00:00 |  | 000098694-01 | BILLY | NEWSOME | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 06142017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06082017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609057 | I509 | Heart failure, unspecified | ICD10 | 06142017 | 06082017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06092017 | 2017-06-09T14:09:04+00:00 |  | 000091896-01 | Fred | Thomas | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609059 | I4891, R062 | Wheezing | ICD10 | 06142017 | 06092017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06122017 | 2017-06-12T09:45:32+00:00 |  | 000006665-01 | HARLAN | BURKS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06142017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06102017 | 06142017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612023 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 06142017 | 06102017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06102017 | 2017-06-10T10:35:56+00:00 |  | 000025683-01 | PAULINE | BARCH | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612038 | R079 | Chest pain, unspecified | ICD10 | 06142017 | 06072017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06112017 | 2017-06-11T10:50:54+00:00 |  | 000033268-01 | MARCIA | SELF | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06142017 | Approved | MediGold Essential Care | Reports | Secondary Only | Inpatient | 06102017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612049 | R112 | Nausea with vomiting, unspecified | ICD10 | 06142017 | 06102017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06112017 | 2017-06-11T23:27:53+00:00 |  | 000116085-01 | Carolyn | Sheets | HMP OF OHIO PC | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06102017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612066 | I4891, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06142017 | 06102017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06122017 | 2017-06-12T08:42:39+00:00 |  | 000015288-01 | ROBERT | MABE | CENTRAL OH HSPISTS INC | 909717 | XIUQIONG | WANG | 1497856280 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612095 | R600 | Localized edema | ICD10 | 06142017 | 06112017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T08:51:06+00:00 |  | 000071851-01 | Julia | Straight | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613006 | R0602 | Shortness of breath | ICD10 | 06142017 | 06092017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06132017 | 2017-06-13T09:47:56+00:00 | 254545317163 | 000071959-01 | Grant | Wiggins | HMP OF OHIO PC | 926900 | ANIRBAN | BISWAS | 1871891614 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06122017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613021 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06142017 | 06122017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T12:42:37+00:00 |  | 000111944-01 | Barbara A | Kunz | MIAMI VALLEY HSPISTS GRP | 901553 | ANCA R | UDREA | 1700878386 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06142017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06092017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613028 | G9340 | Encephalopathy, unspecified | ICD10 | 06142017 | 06092017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06132017 | 2017-06-13T07:19:20+00:00 |  | 000044827-01 | CARL | MCELWAIN | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613038 | K449, K922, R338 | Other retention of urine | ICD10 | 06142017 | 06112017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T20:46:09+00:00 |  | 000095302-01 | Nancy | Fettes | RIVERSIDE TRAUMA SURGEON | 907601 | JOHN | LEFF | 1396744140 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06142017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614004 | E872 | Acidosis | ICD10 | 06142017 | 06122017 | 06132006 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
