Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-20_URGEMERG
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
| 06072017 | 2017-06-07T09:15:58+00:00 |  | 000034455-01 | PHYLLIS | MUSTAIN | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607031 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07202017 | 07182017 | 07192017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T14:00:04+00:00 |  | 000083066-01 | Sharon | Vanarsdale | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619112 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07202017 | 07182017 | 07192017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T10:09:53+00:00 | 251050207172 | 000079406-01 | Leah | Stanley | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622016 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 07202017 | 06212017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 28.0 |
| 06262017 | 2017-06-26T08:52:15+00:00 |  | 000021672-01 | KATHERINE | OUELLETTE | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06242017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626107 | D6489, M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 07202017 | 06242017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T12:11:30+00:00 |  | 000003408-01 | RUTH | ANDERSON | OSU INTERNAL MED LLC | 922865 | AHMAK M | MOSTAFAVIFAR | 1861669095 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627057 | B9561, T827XXA | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, init | ICD10 | 07202017 | 06262017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T14:02:56+00:00 |  | 000050068-01 | DAVID | MARTIN | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627086 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07202017 | 07172017 | 07182017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06292017 | 2017-06-29T10:55:28+00:00 |  | 000053125-01 | ELEANOR | GRUMMAN | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629048 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07202017 | 07172017 | 07192017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07062017 | 2017-07-06T13:04:36+00:00 |  | 000085011-01 | Anna | Holbrook | ADENA MEDICAL GROUP LLC | 927004 | BRUCE J | CHEN | 1285835926 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706083 | I4891, R001 | Bradycardia, unspecified | ICD10 | 07202017 | 07052017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07062017 | 2017-07-06T14:41:26+00:00 |  | 000077003-01 | Diane | Saxton | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07052017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706097 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 07202017 | 07052017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 07062017 | 2017-07-06T14:57:59+00:00 |  | 000101653-01 | Georgia | Perry | SOUND KENWOOD HSPISTS OF | 928106 | SMITHA | ACHUTHANKUTTY | 1891016119 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07052017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706099 | J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07202017 | 07052017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T15:36:30+00:00 |  | 000100012-01 | James | Scott | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07142017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706110 | I509, Z952 | Presence of prosthetic heart valve | ICD10 | 07202017 | 07072017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07072017 | 2017-07-07T10:41:31+00:00 |  | 000108620-01 | Janice | Suber | DELPHI INTENSIVISTS CNSL | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07062017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707037 | E872 | Acidosis | ICD10 | 07202017 | 07062017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07102017 | 2017-07-10T10:22:00+00:00 | 250977767188 | 000082467-01 | John | Rowley | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07072017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710035 | J159 | Unspecified bacterial pneumonia | ICD10 | 07202017 | 07072017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07102017 | 2017-07-10T10:45:11+00:00 | 252533207189 | 000049954-01 | LOUIS | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07082017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710049 | J189 | Pneumonia, unspecified organism | ICD10 | 07202017 | 07082017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07102017 | 2017-07-10T08:19:13+00:00 |  | 000077430-01 | Arlis | Wall | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710081 | I4891, I509, N189, R0602, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07202017 | 07072017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07102017 | 2017-07-10T09:53:41+00:00 |  | 000071283-01 | Joseph | Pratt | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710095 | A419, I4891, J189, R0602 | Shortness of breath | ICD10 | 07202017 | 07072017 | 07162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07102017 | 2017-07-10T11:38:29+00:00 |  | 000050056-01 | SHARON | HODGE | SOUTHERN OHIO MEDICAL CENTER | 928970 |  | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 07202017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 07102017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710103 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07202017 | 07102017 | 07132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07102017 | 2017-07-10T12:16:59+00:00 |  | 000092299-01 | John | Wokna | INTERNAL MED CARE INC | 918449 | RACHEL M | MAST | 1952552812 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHVIEW MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07072017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170710121 | E875, I509 | Heart failure, unspecified | ICD10 | 07202017 | 07072017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07102017 | 2017-07-10T13:52:50+00:00 |  | 000097532-01 | Gilbert | Breitenbach | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07092017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711014 | I4891, R0602 | Shortness of breath | ICD10 | 07202017 | 07092017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07112017 | 2017-07-11T10:59:40+00:00 | 252350737191 | 000098183-01 | Robert | Sells Sr | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 07102017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711023 | R531 | Weakness | ICD10 | 07202017 | 07102017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07112017 | 2017-07-11T12:15:51+00:00 |  | 000076151-01 | Michelangelo | Oxer | COPC CENTRAL OHIO PRIMAR | 936243 | DONALD P | DEEP | 1679556245 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711037 | G9340 | Encephalopathy, unspecified | ICD10 | 07202017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07102017 | 2017-07-10T17:39:08+00:00 |  | 000063564-01 | CHARLES | MILLER | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07072017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711057 | I469 | Cardiac arrest, cause unspecified | ICD10 | 07202017 | 07072017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07122017 | 2017-07-12T07:48:26+00:00 |  | 000094202-01 | Harold | Mason | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712041 | R6889 | Other general symptoms and signs | ICD10 | 07202017 | 07112017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07122017 | 2017-07-12T09:28:45+00:00 |  | 000109064-01 | Bonita | Carpenter | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07112017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712056 | R0602 | Shortness of breath | ICD10 | 07202017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07122017 | 2017-07-12T16:03:13+00:00 | 254499557193 | 000007313-01 | JEAN | PURCELL | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712083 | J811 | Chronic pulmonary edema | ICD10 | 07202017 | 07122017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07132017 | 2017-07-13T09:18:12+00:00 | 251325327193 | 000004095-01 | NORMA | ANDERSEN | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07122017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713008 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 07202017 | 07122017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07122017 | 2017-07-12T15:00:22+00:00 |  | 000087449-01 | Robert | Ritchie | VASCULAR SRVS OF OH INC | 935228 | PATRICK S | VACCARO | 1871540880 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713016 | R1310 | Dysphagia, unspecified | ICD10 | 07202017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07132017 | 2017-07-13T09:43:54+00:00 | 178489957194 | 000107707-01 | Donna | Kaufman | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07122017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713017 | K6819 | Other retroperitoneal abscess | ICD10 | 07202017 | 07122017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07122017 | 2017-07-12T15:25:18+00:00 |  | 000084580-01 | James | Westfall | HMP OF OHIO PC | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 07202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07112017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713031 | I509, R0602, Z9981 | Dependence on supplemental oxygen | ICD10 | 07202017 | 07112017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T11:07:32+00:00 |  | 000100445-01 | June | Faust | MERCY HEALTH PHYSICIANS | 921657 | SHYAM S | ALLAMANENI | 1053553586 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07122017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713038 | C182 | Malignant neoplasm of ascending colon | ICD10 | 07202017 | 07122017 | 07182017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 07132017 | 2017-07-13T10:57:30+00:00 |  | 000096772-01 | John | Shivers | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713049 | I82423 | Acute embolism and thrombosis of iliac vein, bilateral | ICD10 | 07202017 | 07122017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07132017 | 2017-07-13T16:01:58+00:00 | 168158567194 | 000087729-01 | Barbara | Wilson | HMP OF OHIO PC | 948549 | SHRAVAN | LIKKI | 1891136230 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713069 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07202017 | 07132017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07132017 | 2017-07-13T14:10:39+00:00 |  | 000110903-01 | Martha | Livingston | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07122017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714006 | R1010, R55 | Syncope and collapse | ICD10 | 07202017 | 07122017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07142017 | 2017-07-14T08:24:09+00:00 |  | 000106267-01 | Zella | Price | MERCY HEALTH PHYSICIANS | 948277 | MARK J | YUHAS | 1083932057 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07132017 | 07132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714020 | R52 | Pain, unspecified | ICD10 | 07202017 | 07132017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07142017 | 2017-07-14T16:46:16+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 07202017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 07162017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717005 | C9102 | Acute lymphoblastic leukemia, in relapse | ICD10 | 07202017 | 07162017 | 07182017 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  | No child records to display. |  |
| 07172017 | 2017-07-17T12:41:18+00:00 | 26778189 | 000097889-01 | Nancy | Lundy | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07152017 | 07192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717043 | N12, N3080 | Other cystitis without hematuria | ICD10 | 07202017 | 07152017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T13:09:50+00:00 | 253279537196 | 000044688-01 | FLOYD | SIMONS JR | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 07152017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717056 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 07202017 | 07152017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07162017 | 2017-07-16T15:23:58+00:00 |  | 000014051-01 | MILDRED | MARTIN | OPHTHALMIC SURGEONS & CN | 911639 | CRAIG | CZYZ | 1205043684 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07162017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717070 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 07202017 | 07162017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T14:38:05+00:00 | 178863787196 | 000024268-01 | RITA | PARK | EMERGENCY SERVICES INC | 908216 | EMILY | SENG | 1417984212 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07152017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717090 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 07202017 | 07152017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07172017 | 2017-07-17T08:55:14+00:00 |  | 000100390-01 | Timothy | Ward | ONCOLOGY HEMATOLOGY CARE | 921876 | MIGUEL A | ISLAS-OHLMAYER | 1295917425 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07152017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718027 | R509 | Fever, unspecified | ICD10 | 07202017 | 07152017 | 07182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07182017 | 2017-07-18T10:30:04+00:00 | 250116597093 | 000048675-01 | PHYLLIS | BYERS | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T10:50:47+00:00 | 253299257200 | 000065471-01 | JOHNNY | NEWTON | HMP OF OHIO PC | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07182017 | 07192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718062 | I214, R079 | Chest pain, unspecified | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T10:47:55+00:00 | 178745427192 | 000074060-01 | William | Dingey | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719040 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07202017 | 07192017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07182017 | 2017-07-18T11:00:19+00:00 |  | 000095518-01 | Ronald | Waddell | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07172017 | 07192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719045 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 07202017 | 07172017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T10:41:34+00:00 |  | 000006749-01 | DELNO | CUMMANS | CENTRAL OH HSPISTS INC | 910565 | JAMES C | FOSTER | 1770700320 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 07202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 07182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719066 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07192017 | 2017-07-19T09:32:58+00:00 |  | 000029740-01 | SANDRA | RANDLEMAN | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07182017 | 07192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720008 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07202017 | 07182017 | 07192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10212016 | 2016-10-21T13:30:00+00:00 |  | 000102809-01 | STEPHEN | BYRD | PHYSICIANS OF CAPE COD H | 948689 | JANA L | FRENCH | 1649619263 | CAPE COD HOSPITAL | 906941 | 1114984671 | CAPE COD HOSPITAL | 1114984671 | Inpatient | IP | Concurrent Review | CONC |  | CAPE COD HOSPITAL | 07202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10192016 | 10242016 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720029 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 07202017 | 10192016 | 10242016 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07192017 | 2017-07-19T13:44:54+00:00 |  | 000106737-01 | Terry | Tope | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07202017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 07182017 | 07202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720048 | N5201 | Erectile dysfunction due to arterial insufficiency | ICD10 | 07202017 | 07182017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T15:21:47+00:00 |  | 000097947-01 | Ronald | Mcfarland | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 904635 | 1831157205 | ACUTE REHABILITATION UNIT OF SPRINGF | 1831157205 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | ACUTE REHABILITATION UNIT OF SPRINGF | 07202017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 07202017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170719082 | I25118, I639 | Cerebral infarction, unspecified | ICD10 | 07202017 | 07202017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
